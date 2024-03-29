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

import configuracion.utilidades;
import java.util.ArrayList;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import estructura.HGNC;
import estructura.ontologiaObjMin;


/**
 *
 * @author yacson
 */
public class lecturas_HGNC extends conexionServ{
    
    private static String URL_SEARCH = "https://rest.genenames.org/search/";
    private static String URL_SYMBOL = "https://rest.genenames.org/fetch/symbol/";
    
    public lecturas_HGNC() {

    }

    public ArrayList<HGNC> busquedaInfGen(String etiqueta, boolean GO, boolean MESH,String ruta) {
        ArrayList<HGNC> HGNC = new ArrayList<>();
        //System.out.println("Etiqueta:  "+contenido);
        if (busqueda_genenames(etiqueta, false, 0, HGNC, GO, MESH,ruta)) {

            return HGNC;
        } else if (busqueda_genenames(etiqueta, true, 0, HGNC, GO, MESH,ruta)) {
            return HGNC;
        } else {
            return HGNC;
            //lecturas pathwaycommons
        }

    }

    public boolean busqueda_genenames(String contenido, boolean criterio, int opcion, ArrayList<HGNC> HGNC, boolean GO, boolean MESH,String ruta) {

        ArrayList<String> factor = new ArrayList<>();
        if (!contenido.equals("") && !contenido.equals(null)) {
            if (criterio) {
                String cri = obtener_factor(contenido);
                try {
                    cri = cri.replace(" ", "+");

                    String Url = URL_SEARCH + cri;
                    Document doc = conecta(Url);
                    factor = busqueda_lista_xml(doc, opcion, cri);
                } catch (Exception e) {
                    try {
                        contenido = contenido.replace(" ", "+");
                        String Url = URL_SEARCH + contenido;
                        Document doc = conecta(Url);
                        factor = busqueda_lista_xml(doc, opcion, cri);

                    } catch (Exception ee) {
                    }

                }
            } else {

                try {
                    contenido = contenido.replace(" ", "+");
                    String Url = URL_SEARCH + contenido;
                    Document doc = conecta(Url);
                    factor = busqueda_lista_xml(doc, opcion, contenido);
                } catch (Exception ee) {
                    HGNC hgnc = new HGNC();
                    hgnc.setSimbolo(contenido);
                    hgnc.setNombre(contenido);
                    HGNC.add(hgnc);
                }
            }

            //System.out.println("etiqueta: "+ID);
            //System.out.println("Factor: "+factor);
            // System.out.println("cantidad Objetos HUGO: " + factor.size());
            for (int i = 0; i < factor.size(); i++) {

                try {
                    // String nombre = busque String  Url = URL_SEARCH + contenido;

                    //System.out.println("Simbolo HUGO: " + factor.get(i));
                    String Url = URL_SYMBOL + factor.get(i);
                    Document doc = conecta(Url);
                    HGNC.add(busqueda_datos_xml(doc, GO, MESH,ruta));

                } catch (Exception e) {
                    // System.out.println("no se encuentra "+contenido+" en HUGO");

                }
            }
        }

        if (factor.size() > 0) {
            return true;
        } else {
            return false;
        }

    }

    private ArrayList<String> busqueda_lista_xml(Document doc, int opcion, String palabra) {
        ArrayList<String> nombres = new ArrayList<>();
        NodeList nList = doc.getElementsByTagName("result");
        Node nNode = nList.item(0);
        Element Element = (Element) nNode;
        float score = Float.parseFloat(Element.getAttribute("maxScore"));
        nList = doc.getElementsByTagName("doc");

        int cont = 0;
        for (int i = 0; i < nList.getLength(); i++) {
            nNode = nList.item(i);
            Element elemento = (Element) nNode;

            //opcion = 0; Se toman todos los simbolos con que tengan la mejor ponderacion 
            if (opcion == 0) {
                if (score == Float.parseFloat(elemento.getElementsByTagName("float").item(0).getTextContent())) {
                    //System.out.println(" simbolo "+elemento.getElementsByTagName("str").item(1).getTextContent());
                    nombres.add(elemento.getElementsByTagName("str").item(1).getTextContent());
                }
                //opcion = -1; Se toman todos los simbolos que muestre la busqueda
            } else if (opcion == -1) {

                if (elemento.getElementsByTagName("str").item(1).getTextContent().equals(palabra)) {
                    nombres.add(elemento.getElementsByTagName("str").item(1).getTextContent());
                    break;
                }
                //opcion >= 1; Se toman tantos simbolos como sea el valor de la variable opcion
            } else if (opcion >= 1) {
                if (cont < opcion) {
                    cont++;
                    nombres.add(elemento.getElementsByTagName("str").item(1).getTextContent());

                }

            }
            new utilidades().carga();
        }

        return nombres;
    }

    private HGNC busqueda_datos_xml(Document doc, boolean GO, boolean MESH,String ruta) {

        HGNC hgnc = new HGNC();
        NodeList nList = doc.getElementsByTagName("doc");
        Node nNode = nList.item(0);
        boolean ont = false;

        if (nNode.getNodeType() == Node.ELEMENT_NODE) {

            Element elemento = (Element) nNode;
            hgnc.setSimbolo(elemento.getElementsByTagName("str").item(1).getTextContent());//Simbolo
            hgnc.setNombre(elemento.getElementsByTagName("str").item(2).getTextContent());//Nombre
            hgnc.setLocus_type(elemento.getElementsByTagName("str").item(4).getTextContent());//Locus type
            //-------------------------------------------------------
            //ensemble gene id
            NodeList list = elemento.getElementsByTagName("str");
            ontologiaObjMin ontologia = new ontologiaObjMin();
            for (int i = 0; i < list.getLength(); i++) {
                Node nodo = list.item(i);
                if (nodo.getNodeType() == nodo.ELEMENT_NODE) {
                    Element elm = (Element) nodo;
                    if (elm.getAttribute("name").equals("ensembl_gene_id")) {
                        hgnc.setEnsembl_gene_id(elemento.getElementsByTagName("str").item(i).getTextContent());
                    }
                }
            }
            //-------------------------------------
            list = elemento.getElementsByTagName("arr");
            for (int i = 0; i < list.getLength(); i++) {
                new utilidades().carga();
                Node nodo = list.item(i);
                if (nodo.getNodeType() == nodo.ELEMENT_NODE) {

                    //--------------------------------------------------------
                    //Busqueda de sinonimos
                    Element elm = (Element) nodo;
                    if (elm.getAttribute("name").equals("alias_symbol")) {
                        
                        int ls = elm.getElementsByTagName("str").getLength();
                        for (int j = 0; j < ls; j++) {
                            hgnc.getSinonimos().add(elm.getElementsByTagName("str").item(j).getTextContent());
                        }

                    }

                    if (elm.getAttribute("name").equals("prev_name")) {
                        
                        int ls = elm.getElementsByTagName("str").getLength();
                        for (int j = 0; j < ls; j++) {
                            hgnc.getSinonimos().add(elm.getElementsByTagName("str").item(j).getTextContent());
                        }

                    }

                    if (elm.getAttribute("name").equals("prev_symbol")) {
                        int ls = elm.getElementsByTagName("str").getLength();
                        for (int j = 0; j < ls; j++) {
                            hgnc.getSinonimos().add(elm.getElementsByTagName("str").item(j).getTextContent());
                        }

                    }

                    //----------------------------------------------------------
                    //gene_family
                    if (elm.getAttribute("name").equals("gene_family")) {
                        
                        int ls = elm.getElementsByTagName("str").getLength();
                        for (int j = 0; j < ls; j++) {
                            hgnc.getGene_family().add(elm.getElementsByTagName("str").item(j).getTextContent());
                        }

                    }

                    //-----------------------------------------------------------
                    //Busqueda de Ontologias
                    ontologia.setNombre(hgnc.getSimbolo());
                    //Ontologia GO --------------------------------------------
                    lecturas_Uniprot letUP = null;
                    if (elm.getAttribute("name").equals("uniprot_ids")) {
                        
                        int ls = elm.getElementsByTagName("str").getLength();
                        for (int j = 0; j < ls; j++) {
                            try {
                                String codUP = elm.getElementsByTagName("str").item(j).getTextContent();
                                letUP = new lecturas_Uniprot(codUP);
                                letUP.Codigos_GO();
                                if (GO) {
                                    ontologia.setFuncionMolecular(letUP.getFuncionMolecular());
                                    ontologia.setComponenteCelular(letUP.getComponenteCelular());
                                    ontologia.setProcesoBiologico(letUP.getProcesoBiologico());
                                }
                            } catch (Exception e) {
                               
                            }
                        }
                           
                        letUP.buscar_tejido();
                        hgnc.setTejidos(letUP.getTejidos());
                                   
                        for (String sinonimo : letUP.getSinonimos()) {
                            if (!hgnc.getSinonimos().contains(sinonimo)) {
                                hgnc.getSinonimos().add(sinonimo);
                                //System.out.println(letUP.getSinonimos().get(j));
                            }
                        }

                    }
                    
                    //ontologia MESH--------------------------------------------
                    if (MESH && !ont) {
                        try {
                            lecturas_MESH letMesh = new lecturas_MESH();
                           // System.out.println(hgnc.getSimbolo() + "  " + hgnc.getNombre());
                            String idmesh = letMesh.busquedaTerm(hgnc.getNombre().replace(" ", "+"), 2);
                            if (idmesh == null) {
                                idmesh = letMesh.busquedaTerm(hgnc.getSimbolo(), 2);
                            }
                            ontologia.getParent().add(idmesh);
                            ont = true;
                        } catch (Exception e) {
                            //System.out.println("Error");
                        }

                    }

                }

            }
            
            //----------------------------------------------------------
            if (GO || MESH) {
                
                ontologia.guardarObjeto(ontologia, GO, MESH,ruta);
            }

        }
        return hgnc;
    }

    public String obtener_factor(String desc) {
        String pal = "";
        String[] palabras = desc.split(" ");

        if (palabras.length == 1) {
            pal = desc;

        } else if (palabras.length == 2) {
            pal = desc;

        } else if (palabras.length > 2) {

            for (int i = 0; i < palabras.length; i++) {

                for (int j = 0; j < lista().length; j++) {
                    String[] pal_list = lista()[j].split(" ");
                    try {
                        if (palabras[i].equalsIgnoreCase(pal_list[0]) && palabras[i + 1].equalsIgnoreCase(pal_list[1])) {
                            if ((i + 2) < palabras.length) {
                                if (esAlfaNumerica(palabras[i + 2])) {
                                    pal = palabras[i + 2];
                                    return pal;
                                } else if (i > 0) {
                                    pal = palabras[i - 1];
                                    return pal;
                                }
                            } else if (i > 0) {
                                pal = palabras[i - 1];
                                return pal;
                            }
                        }
                    } catch (Exception e) {
                        pal = desc;
                    }

                }

            }

        }

        if (pal.equals("")) {
            pal = desc;
        }

        return pal;
    }

    private String[] lista() {
        String lista[] = {
            "initiation factor",
            "binding protein",
            "cyclase-associated protein",
            "transcription factor",
            "finger protein",
            "domain-binding protein",
            "domain-binding protein",
            "Sensor protein",
            "receptor coactivator",
            "transcription coactivator",
            "domain-binding protein",
            "kinase protein",
            "enzime protein",
            "adaptor protein",
            "translocator protein",
            "transporter protein"
        };

        return lista;
    }

    public boolean esAlfaNumerica(final String cadena) {

        for (int i = 0; i < cadena.length(); ++i) {
            char caracter = cadena.charAt(i);

            if (Character.isLetter(caracter)) {
                return true;
            }
        }
        return false;
    }
}
