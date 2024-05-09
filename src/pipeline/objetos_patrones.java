/* 
 * bioPatternsg
 * BioPatternsg is a system that allows the integration and analysis of information related to the modeling of Gene Regulatory Networks (GRN).
 * Copyright (C) 2020
 * Jose Lopez (josesmooth@gmail.com), Jacinto Dávila (jacinto.davila@gmail.com), Yacson Ramirez (yacson.ramirez@gmail.com).
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>
 */
package pipeline;

import configuracion.configuracion;
import configuracion.utilidades;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Map;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.jpl7.Query;
import org.jpl7.Term;

/**
 *
 * @author yacson
 */
public class objetos_patrones {

    public void generar_archivo(configuracion config, String ruta) throws IOException {        

        // Se corrije errores sintacticos en minedObjects.pl y  wellKnownRules.pl
        arreglar_archivo(ruta, "minedObjects.pl");
        arreglar_archivo(ruta, "wellKnownRules.pl");
        
        String v = "style_check(-discontiguous).";
        Query q0 = new Query(v);
        q0.hasSolution();

        String MESH = "['" + ruta + "/ontologyMESH'].";
        String objMin = "['" + ruta + "/minedObjects'].";
        String wkr = "['" + ruta + "/wellKnownRules'].";
        String bc = "['" + ruta + "/kBase'].";

        boolean error = false;
        try {
            Query q1 = new Query(MESH);
            q1.hasSolution();
        } catch (Exception e) {
            System.out.println("Error al leer MESH");
            error = true;
        }

        try {
            Query q2 = new Query(objMin);
            q2.hasSolution();
        } catch (Exception e) {
            System.out.println("Error al lerr objetos minados");
            error = true;
        }

        try {
            Query q3 = new Query(wkr);
            q3.hasSolution();
        } catch (Exception e) {
            System.out.println("Error al leer WKR");
            error = true;
        }

        try {
            Query q4 = new Query(bc);
            q4.hasSolution();
        } catch (Exception e) {
            error = true;
        }

        if (!error) {
            String archivo = "[scripts/generatorPathwaysObjects].";
            Query q = new Query(archivo);
            q.hasSolution();

            ArrayList<String> lista = listaObjetos();
            //System.out.println(lista);

            clasificar_objetos(lista, ruta);

            q.close();

            config.setObjetosPatrones(true);
            config.guardar(ruta);
        }else{
           
           System.exit(0);
        }
    }

    private ArrayList<String> listaObjetos() {
        ArrayList<String> lista = new ArrayList<>();

        String consulta = "listar_eventos(A,B).";

        Query q2 = new Query(consulta);
        Map<String, Term>[] solutions = q2.allSolutions();
        for (int i = 0; i < solutions.length; i++) {
            String separa[] = solutions[i].toString().split(",");

            String separa1[] = separa[0].split("=");

            String objeto = separa1[1].replace("'", "");

            if (!lista.contains(objeto)) {
                lista.add(objeto);
            }

            String separa2[] = separa[1].split("=");

            objeto = separa2[1].replace("'", "");
            objeto = objeto.replace("}", "");

            if (!lista.contains(objeto)) {
                lista.add(objeto);
            }

        }

        q2.close();

        return lista;
    }

    private void clasificar_objetos(ArrayList<String> lista, String ruta) throws IOException {

        crear_archivo(ruta);
        String ruta2 = ruta + "/pathwaysObjects.pl";
        new escribirBC("%//" + lista.toString(), ruta2);
        new utilidades().carga();
        //lista.remove(1);
        for (String obj : lista) {

            String consulta = "p_ligand('" + obj + "').";
            Query q1 = new Query(consulta);

            if (q1.hasSolution()) {
                new escribirBC("ligand('" + obj + "').", ruta2);
                new utilidades().carga();
            }

            consulta = "p_receptor('" + obj + "').";
            Query q2 = new Query(consulta);

            if (q2.hasSolution()) {
                new escribirBC("receptor('" + obj + "').", ruta2);
                new utilidades().carga();
            }

            consulta = "p_transcription_factor('" + obj + "').";
            Query q3 = new Query(consulta);

            if (q3.hasSolution()) {
                new escribirBC("transcription_factor('" + obj + "').", ruta2);
            }

            consulta = "p_protein('" + obj + "').";
            Query q4 = new Query(consulta);

            if (q4.hasSolution()) {
                new escribirBC("protein('" + obj + "').", ruta2);
                new utilidades().carga();
            }

            consulta = "p_enzyme('" + obj + "').";
            Query q5 = new Query(consulta);

            if (q5.hasSolution()) {
                new escribirBC("enzyme('" + obj + "').", ruta2);
                new utilidades().carga();
            }

            q1.close();
            q2.close();
            q3.close();
            q4.close();

        }
        
        /*
        new escribirBC("\n%las siguientes lineas son para evitar errores en el proceso no deben ser modificadas", ruta2);
        new escribirBC("enzyme('').", ruta2);
        new escribirBC("protein('').", ruta2);
        new escribirBC("transcription_factor('').", ruta2);
        new escribirBC("receptor('').", ruta2);
        new escribirBC("ligand('').", ruta2);
        */
        
        mejorar_objetos_desde_pubtator(ruta);

    }

    private void crear_archivo(String ruta) {
        FileWriter fichero = null;
        PrintWriter pw = null;
        try {
            fichero = new FileWriter(ruta + "/pathwaysObjects.pl");
        } catch (IOException ex) {
            Logger.getLogger(minado_FT.class.getName()).log(Level.SEVERE, null, ex);
        }
        pw = new PrintWriter(fichero);
    }
    
    
    private void mejorar_objetos_desde_pubtator(String ruta) throws IOException {
        
        //  Este metodo permite mejorar los objetos del experto y del archivo pathwaysObjects.pl    
                
        ProcessBuilder builder = new ProcessBuilder("python3", "scripts/improve_objects_pathways.py", ruta);

        Map<String, String> env = builder.environment();

        // Set working directory

        String workingDir = System.getProperty("user.dir");

        builder.directory(new File(workingDir));

        // Start process and get output

        Process process = builder.start();

        InputStream out = process.getInputStream();

        // Convert output stream into a readable format

        BufferedReader br = new BufferedReader(new InputStreamReader(out));

        String line;

        while ((line = br.readLine()) != null) {

            System.out.println(line);
            
        }
            
    }
    
    private void arreglar_archivo(String ruta, String name) throws IOException {

        String lineaActual;

        Vector new_lines = new Vector(100, 50);

        try (BufferedReader lines = new BufferedReader(new FileReader(new File(ruta + "/" + name)))) {

            while (lines.ready()) {

                lineaActual = lines.readLine();

                if (lineaActual.contains("*")) {

                    lineaActual = lineaActual.replaceAll("\\*", "");

                    if (lineaActual.contains(":-")) {

                        String rule_splitted[] = lineaActual.split(":-");
                        String body_rule = rule_splitted[1];
                        String new_body_rule = body_rule.replace(":", "_");
                        lineaActual = rule_splitted[0] + ":-" + new_body_rule;

                    } else {

                        if (lineaActual.contains(":")) {
                            lineaActual = lineaActual.replaceAll(":", "_");
                        }

                    }
                    
                }
                new_lines.add(lineaActual);
            }

            lines.close();
            new File(ruta + "/" + name).delete();

        }

        File file = new File(ruta + "/" + name);

        if (!file.exists()) {
            file.createNewFile();
        }

        FileWriter file_name = new FileWriter(file, true);

        try (PrintWriter new_file = new PrintWriter(file_name)) {
            String line;
            for (Object e : new_lines) {

                line = (String) e;
                new_file.print(line + "\n");

            }
            new_file.close();            
            
        }       

    }    

}
