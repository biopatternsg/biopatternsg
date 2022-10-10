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
import java.util.ArrayList;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import estructura.complejoProteinico;
import estructura.HGNC;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author yacson-ramirez
 */
public class lecturas_PDB extends conexionServ {

    private static final String URL_PDB_OBJECT = "https://data.rcsb.org/graphql?query=";

    public complejoProteinico Busqueda_PDB(String cp, boolean GO, boolean MESH, String ruta) {

        complejoProteinico CP = new complejoProteinico();
        String query = URL_PDB_OBJECT + "%7B%0A%20%20entry(entry_id:%22" + cp + "%22)%20%7B%0A%20%20%20%20entry%20%7B%0A%20%20%20%20%20%20id%0A%20%20%20%20%7D%0A%20%20%20%20polymer_entities%20%7B%0A%20%20%20%20%20%20rcsb_polymer_entity_container_identifiers%20%7B%0A%20%20%20%20%20%20%20%20entry_id%0A%20%20%20%20%20%20%20%20auth_asym_ids%0A%20%20%20%20%20%20%7D%0A%20%20%20%20%20%20entity_poly%20%7B%0A%20%20%20%20%20%20%20%20rcsb_entity_polymer_type%0A%20%20%20%20%20%20%20%20rcsb_sample_sequence_length%0A%20%20%20%20%20%20%7D%0A%20%20%20%20%20%20rcsb_polymer_entity%20%7B%0A%20%20%20%20%20%20%20%20pdbx_description%0A%20%20%20%20%20%20%20%20pdbx_fragment%0A%20%20%20%20%20%20%20%20pdbx_ec%0A%20%20%20%20%20%20%09pdbx_mutation%0A%20%20%20%20%20%20%20%20details%0A%20%20%20%20%20%20%20%20formula_weight%0A%20%20%20%20%20%20%7D%0A%20%20%20%20%20%20rcsb_entity_source_organism%20%7B%0A%20%20%20%20%20%20%20%20ncbi_scientific_name%0A%20%20%20%20%20%20%20%20ncbi_taxonomy_id%0A%20%20%20%20%20%20%7D%0A%20%20%20%20%20%20rcsb_polymer_entity_name_com%20%7B%0A%20%20%20%20%20%20%20%20name%0A%20%20%20%20%20%20%7D%0A%20%20%20%20%20%20uniprots%20%7B%0A%20%20%20%20%20%20%20%20rcsb_uniprot_container_identifiers%20%7B%0A%20%20%20%20%20%20%20%20%20%20uniprot_id%0A%20%20%20%20%20%20%20%20%7D%0A%20%20%20%20%20%20%20%20rcsb_uniprot_protein%20%7B%0A%20%20%20%20%20%20%20%20%20%20name%20%7B%0A%20%20%20%20%20%20%20%20%20%20%20%20value%0A%20%20%20%20%20%20%20%20%20%20%7D%0A%20%20%20%20%20%20%20%20%7D%0A%20%20%20%20%20%20%7D%0A%20%20%20%20%7D%0A%20%20%7D%0A%7D";

        try {
            Object response = simpleConnectionJsonGET(query);
            JSONObject json = new JSONObject(new Gson().toJson(response));
            JSONArray jsonArray = json.getJSONObject("data").getJSONObject("entry").getJSONArray("polymer_entities");
            searchPDB(jsonArray, CP, GO, MESH, ruta);
        } catch (JSONException ex) {
            Logger.getLogger(lecturas_PDB.class.getName()).log(Level.SEVERE, null, ex);
        }

        return CP;
    }

    private void searchPDB(JSONArray jsonArray, complejoProteinico cp, boolean GO, boolean MESH, String ruta) {
        try {
            for (int i = 0; i < jsonArray.length(); i++) {
                var polymerType = jsonArray.getJSONObject(i).getJSONObject("entity_poly").get("rcsb_entity_polymer_type").toString();
                var description = jsonArray.getJSONObject(i).getJSONObject("rcsb_polymer_entity").get("pdbx_description").toString();
                String uniprot = null;
                try {
                    uniprot = jsonArray.getJSONObject(i).getJSONArray("uniprots").getJSONObject(0).getJSONObject("rcsb_uniprot_container_identifiers").get("uniprot_id").toString();
                } catch (Exception e) {
                    uniprot = null;
                }
                if (polymerType.equalsIgnoreCase("dna")) {
                    cp.setDNA(description);
                } else {
                    ArrayList<HGNC> L_HGNC = new ArrayList<>();
                    if (uniprot != null) {
                        lecturas_Uniprot UP = new lecturas_Uniprot(uniprot);
                        L_HGNC = new lecturas_HGNC().busquedaInfGen(UP.getSimbolo(), GO, MESH, ruta);
                    } else {
                        L_HGNC = new lecturas_HGNC().busquedaInfGen(description, GO, MESH, ruta);
                    }

                    for (HGNC hgnc : L_HGNC) {
                        boolean encontrado = false;
                        for (HGNC hgnc2 : cp.getHGNC()) {
                            if (hgnc2.getSimbolo().equals(hgnc.getSimbolo())) {
                                encontrado = true;
                                break;
                            }
                        }
                        if (!encontrado) {
                            cp.getHGNC().add(hgnc);
                        }
                    }

                }

            }
        } catch (JSONException ex) {

        }
    }
  
}
