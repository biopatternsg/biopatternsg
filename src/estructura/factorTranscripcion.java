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
package estructura;

import com.db4o.Db4o;
import com.db4o.ObjectContainer;
import com.db4o.ObjectSet;
import com.google.gson.Gson;
import configuracion.utilidades;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import pipeline.escribirBC;
import servicios.lecturas_HGNC;
import servicios.lecturas_PDB;
import servicios.lecturas_TFBIND;
import servicios.lecturas_pathwaycommons;
import pipeline.objetosMinados;
import configuracion.objetosMineria;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.net.URI;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author yacson
 */
public class factorTranscripcion {

    private String ID;
    private int N_Iteracion;
    private lecturas_TFBIND lecturasTFBIND;
    private ArrayList<complejoProteinico> complejoProteinico;
    private ArrayList<HGNC> HGNC;
    private static final String URL_PDB_IDS = "https://search.rcsb.org/rcsbsearch/v2/query";

    public factorTranscripcion() {

        complejoProteinico = new ArrayList<>();
        lecturasTFBIND = new lecturas_TFBIND();
        HGNC = new ArrayList<>();
    }

    //constructor para la primera Iteracion con lecturas obtenidas desde TFBIND
    public factorTranscripcion(lecturas_TFBIND lecturasTFBIND, int NumeroObjetos, objetosMineria objetosMineria, boolean GO, boolean MESH, String ruta) {
        //System.out.println(utilidades.idioma.get(142)+"" + lecturasTFBIND.getFactor() + " ...");

        this.lecturasTFBIND = lecturasTFBIND;
        this.ID = lecturasTFBIND.getFactor();

        ArrayList<HGNC> infgen = new ArrayList<>();
        infgen = new lecturas_HGNC().busquedaInfGen(ID, GO, MESH, ruta);

        if (infgen.size() == 0) {
            lecturas_pathwaycommons pc = new lecturas_pathwaycommons();
            String simbolo = pc.obtenercodigoUP(ID);
            infgen = new lecturas_HGNC().busquedaInfGen(simbolo, GO, MESH, ruta);
        }

        this.HGNC = infgen;

        this.N_Iteracion = 0;
        this.complejoProteinico = new ArrayList<>();

        ArrayList<String> IDCP = Buscar_ID_complejosProteinicos(ID, NumeroObjetos);

        for (int i = 0; i < IDCP.size(); i++) {
            complejoProteinico cp = new complejoProteinico();
            cp = new lecturas_PDB().Busqueda_PDB(IDCP.get(i), GO, MESH, ruta);
            //cp.buscar_ligandos();
            complejoProteinico.add(cp);
        }
    }

    public ArrayList<String> Buscar_ID_complejosProteinicos(String FT, int Limite) {
        ArrayList<String> ID_CP = new ArrayList<>();

        try {
            String query = ""
                    + "{\n"
                    + "  \"query\": {\n"
                    + "    \"type\": \"group\",\n"
                    + "    \"logical_operator\": \"and\",\n"
                    + "    \"nodes\": [\n"
                    + "      {\n"
                    + "        \"type\": \"terminal\",\n"
                    + "        \"service\": \"full_text\",\n"
                    + "        \"parameters\": {\n"
                    + "          \"value\": \"" + FT + "\"\n"
                    + "        }\n"
                    + "      }\n"
                    + "    ]\n"
                    + "  },\n"
                    + "  \"return_type\": \"entry\"\n"
                    + "}";
            var response = simpleConnectionJsonPOST(URL_PDB_IDS, query);
            JSONObject json = new JSONObject(new Gson().toJson(response));
            JSONArray jsonArray = json.getJSONArray("result_set");
            
            for (int i = 0; i < jsonArray.length() && i < Limite; i++) {
                ID_CP.add(jsonArray.getJSONObject(i).get("identifier").toString());
            }
           
        } catch (JSONException ex) {
            Logger.getLogger(factorTranscripcion.class.getName()).log(Level.SEVERE, null, ex);
        }

        return ID_CP;
    }

    public Object simpleConnectionJsonPOST(String route, String data) {

        var client = HttpClient.newBuilder()
                .version(HttpClient.Version.HTTP_2)
                .build();

        var request = HttpRequest.newBuilder()
                .uri(URI.create(route))
                .header("Content-Type", "application/json")
                .POST(HttpRequest.BodyPublishers.ofString(data))
                .build();

        final HttpResponse<String> response;

        try {
            response = client.send(request, HttpResponse.BodyHandlers.ofString());
            return new Gson().fromJson(response.body(), Object.class);
        } catch (Exception e) {

        }
        return null;
    }

    //constructor para la segunda Iteracion en adelante
    public factorTranscripcion(String ID, int N_Iteracion, int NumeroObjetos, boolean GO, boolean MESH, String ruta) {

        this.lecturasTFBIND = new lecturas_TFBIND();
        this.ID = ID;
        this.N_Iteracion = N_Iteracion;
        this.HGNC = new lecturas_HGNC().busquedaInfGen(ID, GO, MESH, ruta);
        this.complejoProteinico = new ArrayList<>();

        ArrayList<String> IDCP = Buscar_ID_complejosProteinicos(ID, NumeroObjetos);

        IDCP.forEach((idcp) -> {
            complejoProteinico cp = new complejoProteinico();
            cp = new lecturas_PDB().Busqueda_PDB(idcp, GO, MESH, ruta);
            //cp.buscar_ligandos();
            complejoProteinico.add(cp);
        });

    }

    public void NuevosObjetos(ArrayList<String> Lista) {
        for (int i = 0; i < complejoProteinico.size(); i++) {
            complejoProteinico.get(i).NuevosObjetos(Lista);
        }

    }

    public void imprimir() {
        //System.out.println("**Iteracion: " + N_Iteracion);
        System.out.println("Objeto: " + ID);
        System.out.println("Lecturas HGNC");
        for (int i = 0; i < HGNC.size(); i++) {
            HGNC.get(i).imprimir();
        }
        System.out.println("\n=====COMPLEJOS PROTEINICOS=====\n");
        for (int i = 0; i < complejoProteinico.size(); i++) {
            complejoProteinico.get(i).imprimir();
            System.out.println("----------------------------------------------");
        }

    }

    public void vaciar_pl(String ruta) {
        ArrayList<String> AuxLig = new ArrayList<>();
        String ligandos = "[";

        for (complejoProteinico comp : complejoProteinico) {
            comp.vaciar_pl(ruta);
            for (ligando ligando : comp.getLigandos()) {
                if (!AuxLig.contains(ligando.getId())) {
                    if (ligandos.equals("[")) {
                        ligandos += "\'" + ligando.getId().replace("\'", "") + "\'";
                    } else {
                        ligandos += ",\'" + ligando.getId().replace("\'", "") + "\'";
                    }
                    AuxLig.add(ligando.getId());
                }
            }
        }
        ligandos += "]";
        if (!ligandos.equals("[]")) {
            new utilidades().carga();
            new escribirBC("ligandos(\'" + ID.replace("\'", "") + "\'," + ligandos + ").", ruta + "/minedObjects.pl");
        }

        boolean encontrado = false;
        objetosMinados objMIn = new objetosMinados();

        for (HGNC hgnc : HGNC) {
            String cadena_txt = "";
            String cadena = "[";
            cadena += "\'" + hgnc.getSimbolo().replace("\'", "") + "\',";
            cadena_txt += objMIn.procesarNombre(hgnc.getSimbolo()) + ";";
            cadena += "\'" + hgnc.getNombre().replace("\'", "") + "\'";
            cadena_txt += objMIn.procesarNombre(hgnc.getNombre());
            for (String sinonimo : hgnc.getSinonimos()) {
                cadena += ",\'" + sinonimo.replace("\'", "") + "\'";
                cadena_txt += ";" + objMIn.procesarNombre(sinonimo);
            }

            cadena += "]";
            new utilidades().carga();
            new escribirBC("sinonimos(\'" + hgnc.getSimbolo().replace("\'", "") + "\'," + cadena + ").", ruta + "/minedObjects.pl");
            new escribirBC(cadena_txt, ruta + "/minedObjects.txt");
            ArrayList<String> lista = hgnc.ListaNombres();
            if (lista.contains(ID)) {
                encontrado = true;
            }
        }

        if (!encontrado) {
            new utilidades().carga();
            new escribirBC("sinonimos(\'" + ID + "\',[\'" + ID + "\']).", ruta + "/minedObjects.pl");
            String cadena_txt = ID + ";" + objMIn.procesarNombre(ID);
            new escribirBC(cadena_txt, "minedObjects.txt");
        }

        if (N_Iteracion == 0) {
            new utilidades().carga();
            new escribirBC("transcription_factors(\'" + ID.replace("\'", "") + "\').", ruta + "/minedObjects.pl");
        }

    }

    public boolean buscar(factorTranscripcion objeto, String ruta) {
        boolean encontrado = false;
        try {
            ObjectContainer db = Db4o.openFile(ruta + "/TF.db");
            try {

                ObjectSet result = db.queryByExample(objeto);
                if (result.hasNext()) {
                    encontrado = true;
                }
            } catch (Exception e) {
                System.out.println("Error al acceder a minedObjectsOntology.db");
            } finally {
                db.close();
            }
        } catch (Exception e) {

        }
        return encontrado;
    }

    private lecturas_HGNC lecturasHGNC(String ID, boolean GO, boolean MESH, String ruta) {
        lecturas_HGNC HGNC = new lecturas_HGNC();
        this.HGNC = HGNC.busquedaInfGen(ID, GO, MESH, ruta);
        return HGNC;
    }

    public ArrayList<String> listaNombres() {
        ArrayList<String> lista = new ArrayList<>();
        lista.add(ID);
        HGNC.parallelStream().forEach(hgnc -> lista.addAll(hgnc.ListaNombres()));

        return lista;
    }

    public int getN_Iteracion() {
        return N_Iteracion;
    }

    public void setN_Iteracion(int N_Iteracion) {
        this.N_Iteracion = N_Iteracion;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public ArrayList<HGNC> getHGNC() {
        return HGNC;
    }

    public void setHGNC(ArrayList<HGNC> HGNC) {
        this.HGNC = HGNC;
    }

    public lecturas_TFBIND getLecturasTFBIND() {
        return lecturasTFBIND;
    }

    public void setLecturasTFBIND(lecturas_TFBIND lecturasTFBIND) {
        this.lecturasTFBIND = lecturasTFBIND;
    }

    public ArrayList<complejoProteinico> getComplejoProteinico() {
        return complejoProteinico;
    }

    public void setComplejoProteinico(ArrayList<complejoProteinico> complejoProteinico) {
        this.complejoProteinico = complejoProteinico;
    }
}
