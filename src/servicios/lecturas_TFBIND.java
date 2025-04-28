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
package servicios;

import com.google.gson.Gson;
import configuracion.utilidades;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.stream.Collectors;
import javax.swing.JOptionPane;
import models.DataJaspar;
import models.FTJaspar;
import models.Jaspar2022;

public class lecturas_TFBIND {

    private String id;
    private String factor;
    private float porcentaje;
    private int numero;
    private String signo;
    private String cadena;

    public lecturas_TFBIND() {

    }

    public lecturas_TFBIND(String id, String factor, String cadena) {
        this.id = id;
        this.factor = factor;
        this.cadena = cadena;
    }

    public lecturas_TFBIND(String ruta, float confiabilidad, int fuenteBusqueda) throws IOException {

        BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
        /*System.out.printf("\nIngrese Confiabilidad: ");
        confiabilidad = Float.parseFloat(in.readLine());*/
        leer_de_archivo(ruta, confiabilidad, fuenteBusqueda);

    }

    public ArrayList<lecturas_TFBIND> leer_de_archivo(String ruta, float confiabilidad, int fuenteBusqueda){

        ArrayList<lecturas_TFBIND> lecturasTFBIND = new ArrayList<>();
        ArrayList<lecturas_TFBIND> lecturasJaspar = new ArrayList<>();
        File archivo = null;
        FileReader fr = null;
        BufferedReader br = null;

        try {
            
            archivo = new File(ruta);
            
            fr = new FileReader(archivo);
            br = new BufferedReader(fr);
            String metodo;
            System.out.println("");
            System.out.println(utilidades.idioma.get(140)+"" + ruta);
            ArrayList<String> control_factores = new ArrayList<>();
            
            while ((metodo = br.readLine()) != null) {
                System.out.println(utilidades.idioma.get(141) + "" +  metodo);
                
                //Busqueda en TFBIND
                if(fuenteBusqueda == 1 || fuenteBusqueda == 3){
                    lecturasTFBIND = obtener_lecturas(metodo, confiabilidad, control_factores);
                }
              
                //Busqueda en JASPAR
                if(fuenteBusqueda == 2 || fuenteBusqueda == 3) {
                    lecturasJaspar = lecturas_Jaspar(metodo, confiabilidad, control_factores);
                }
            }
            System.out.println("...ok");

        } catch (Exception e) {

           // e.printStackTrace();

        } finally {
            try {
                if (null != fr) {
                    fr.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        ArrayList<lecturas_TFBIND> lecturasTF = new ArrayList<>();
        lecturasTF.addAll(lecturasTFBIND);
        
        Map<String, lecturas_TFBIND> lecturasTFMap = lecturasTF.stream().collect(Collectors.toMap(
                lecturas_TFBIND::getFactor,
                lectura -> lectura
        ));
        
        for(lecturas_TFBIND lectura : lecturasJaspar) {
            if(lecturasTFBIND.isEmpty() || !lecturasTFMap.containsKey(lectura.getFactor())) {
                lecturasTF.add(lectura);
            }
        }
        
        
        return lecturasTF;
    }

    public ArrayList<lecturas_TFBIND> obtener_lecturas(String metodo, float confiabilidad, ArrayList<String> control_factores) throws MalformedURLException, IOException {

        int cont = 0;
        URL urlpagina;
        InputStreamReader isr;
        BufferedReader br;
        String linea, segmento;
        StringBuffer buffer = new StringBuffer();
        String[] separar;
        String factor;
        ArrayList<lecturas_TFBIND> lecturas = new ArrayList<>();

        try {
            urlpagina = new URL("https://tfbind.hgc.jp/cgi-bin/calculate.cgi?seq=%3E+COMMENTS%0D%0A" + metodo);
            isr = new InputStreamReader(urlpagina.openStream());
            br = new BufferedReader(isr);

            while ((linea = br.readLine()) != null) {

                cont++;
                try {
                    if (cont >= 7) {
                        segmento = linea.replaceAll(" +", "#").replace("<BR>", "").replace("</BODY>", "").replace("</HTML>", "");
                        separar = segmento.split("#");
                        //System.out.println(separar[2]);
                        if (separar.length > 1 && Float.parseFloat(separar[2]) >= confiabilidad) {

                            factor = separar[1].substring(separar[1].indexOf("$") + 1, separar[1].indexOf("_"));

                            if (!control_factores.contains(factor)) {

                                lecturas_TFBIND aux = new lecturas_TFBIND();
                                control_factores.add(factor);
                                aux.setFactor(factor);
                                aux.setPorcentaje(Float.parseFloat(separar[2]));
                                aux.setNumero(Integer.parseInt(separar[3]));
                                aux.setSigno(separar[4]);
                                aux.setCadena(separar[5] + "  " + separar[6]);
                                lecturas.add(aux);

                            }

                        }

                    }
                } catch (Exception e) {
                }

            }
            br.close();
            isr.close();

        } catch (MalformedURLException e) {
            System.out.println("Error al leer el archivo");
        } catch (IOException e) {

        }

        return lecturas;
    }
    
        public ArrayList<lecturas_TFBIND> lecturas_Jaspar(String metodo, float confiabilidad, ArrayList<String> control_factores){
        ArrayList<lecturas_TFBIND> lecturasJaspar = new ArrayList<>();
        
        try {
            URL buscarCoordenadasUrl = new URL("https://genome.ucsc.edu/cgi-bin/hgBlat?type=BLAT%27s+guess&userSeq=" + metodo);
            InputStreamReader isr = new InputStreamReader(buscarCoordenadasUrl.openStream());
            BufferedReader br = new BufferedReader(isr);
            String linea, inicioInfo = "----------------------------------------------------------------";
            boolean mostrarInfo = false;
            int totalFT = 1;
            System.out.println("\n" + utilidades.idioma.get(159));
            ArrayList<FTJaspar> infoBlast = new ArrayList<>();
            Scanner lectura = new Scanner(System.in);
            
            while ((linea = br.readLine()) != null && totalFT <= 5) {
                if(linea.contains(inicioInfo)){
                    mostrarInfo = true;
                }
                if(mostrarInfo){
                    int posicion = linea.indexOf("YourSeq ");
                    if(posicion != -1){
                        linea = linea.substring(posicion);
                        String[] info = linea.split(" ");
                        List<String> listaElementos = new ArrayList<>();
                        
                        for (String elemento : info) {
                            if (!elemento.isEmpty()) {
                                listaElementos.add(elemento);
                            }
                        }
                        
                        System.out.print(totalFT + ". IDENTITY: " + listaElementos.get(5));
                        System.out.print(" CHROM: " + listaElementos.get(6));
                        System.out.print(" STRAND: " + listaElementos.get(7));
                        System.out.print(" START: " + listaElementos.get(8));
                        System.out.println(" END: " + listaElementos.get(9));
                        
                        String porcentaje = listaElementos.get(5).replace("%", "");
                        
                        infoBlast.add(
                                new FTJaspar(Double.parseDouble(porcentaje),
                                listaElementos.get(6),
                                listaElementos.get(7),
                                listaElementos.get(8),
                                listaElementos.get(9))
                        );
                        totalFT++;
                    }
                }
            }
            
            System.out.println("\n" + utilidades.idioma.get(160));
            Integer seleccionFt = lectura.nextInt();
            FTJaspar seleccionado = infoBlast.get(seleccionFt - 1);
            
            //Buscar en JASPAR
            URL buscarFTUrl = new URL("https://api.genome.ucsc.edu/getData/track?genome=hg38&track=jaspar2022&chrom=" + 
                    seleccionado.getChromosome() + 
                    "&start=" + seleccionado.getStart() + "&end=" + seleccionado.getEnd());
            
            isr = new InputStreamReader(buscarFTUrl.openStream());
            br = new BufferedReader(isr);
            
            StringBuilder content = new StringBuilder(); 
            
            while ((linea = br.readLine()) != null) {
                content.append(linea);
            }
            
            Gson gson = new Gson(); 
            DataJaspar data = gson.fromJson(content.toString(), DataJaspar.class);
            
            int maxJasparScore = data.getJaspar2022().stream()
                    .map(it -> it.getScore())
                    .max(Integer::compare)
                    .orElse(0);
            
            float confiabilidadAjustada = maxJasparScore * confiabilidad; 
            
            List<Jaspar2022> lista = data.getJaspar2022().stream()
                    .filter(item -> item.getScore() > confiabilidadAjustada)
                    .collect(Collectors.toList());
            
            lecturasJaspar = lista.stream().map(it -> {
                lecturas_TFBIND aux = new lecturas_TFBIND();
                aux.setFactor(it.getTfName());
                aux.setPorcentaje(((float) it.getScore() / 100));
                aux.setSigno(("("+it.getStrand()+")"));
                return aux;
            }).collect(Collectors.toCollection(ArrayList::new));
            
        } catch (Exception e) {
        }
           
        return lecturasJaspar;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFactor() {
        return factor;
    }

    public void setFactor(String factor) {
        this.factor = factor;
    }

    public float getPorcentaje() {
        return porcentaje;
    }

    public void setPorcentaje(float porcentaje) {
        this.porcentaje = porcentaje;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getSigno() {
        return signo;
    }

    public void setSigno(String signo) {
        this.signo = signo;
    }

    public String getCadena() {
        return cadena;
    }

    public void setCadena(String cadena) {
        this.cadena = cadena;
    }

}
