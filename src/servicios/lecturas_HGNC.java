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

import java.util.ArrayList;
import estructura.HGNC;
import estructura.ontologiaObjMin;
import java.util.List;
import java.util.stream.Collectors;
import org.modelmapper.ModelMapper;
import servicios.dtos.hgnc.fetch.HgncFetchResponse;
import servicios.dtos.hgnc.search.HGNCResponse;

/**
 *
 * @author yacson
 */
public class lecturas_HGNC extends conexionServ {

    private static String URL_SEARCH = "https://rest.genenames.org/search/";
    private static String URL_SYMBOL = "https://rest.genenames.org/fetch/symbol/";

    public lecturas_HGNC() {

    }

    public ArrayList<HGNC> busquedaInfGen(String etiqueta, boolean GO, boolean MESH, String ruta) {

        try {

            return search(etiqueta, GO, MESH, ruta);

        } catch (Exception e) {
            return new ArrayList<>();
        }

    }

    private ArrayList<HGNC> search(String gene, boolean GO, boolean MESH, String ruta) {
        ArrayList<HGNC> HGNC = new ArrayList<>();
        var symbols = searchSymbols(gene);

        if (symbols == null || symbols.isEmpty()) {
            var hgnc = new HGNC();
            hgnc.setNombre(gene);
            HGNC.add(hgnc);
        } else {
            symbols.forEach(symbol -> {
                var hgnc = searchInformation(symbol, GO, MESH, ruta);
                HGNC.add(hgnc);
            });
        }

        return HGNC;
    }

    private List<String> searchSymbols(String gene) {
        var response = simpleConnectionJsonGET(URL_SEARCH + gene);
        var hgncResponse = new ModelMapper().map(response, HGNCResponse.class);
        var scoreMax = hgncResponse.getResponse().getMaxScore();

        return hgncResponse.getResponse().getDocs().stream()
                .filter(doc -> doc.getScore() == scoreMax)
                .map(doc -> doc.getSymbol())
                .collect(Collectors.toList());
    }

    private HGNC searchInformation(String symbol, boolean GO, boolean MESH, String ruta) {
        HGNC hgnc = new HGNC();
        var response = simpleConnectionJsonGET(URL_SYMBOL + symbol);
        var hgncResponse = new ModelMapper().map(response, HgncFetchResponse.class);

        var doc = hgncResponse.getResponse().getDocs().get(0);

        hgnc.setNombre(doc.getName());
        hgnc.setSimbolo(doc.getSymbol());
        hgnc.setEnsembl_gene_id("");
        hgnc.setGene_family(new ArrayList<>());
        hgnc.setLocus_type(doc.getLocus_type());
        hgnc.getSinonimos().addAll(doc.getPrev_name());
        hgnc.getSinonimos().add(doc.getCosmic());

        searchUniprot(hgnc, doc.getUniprot_ids(), GO, MESH, ruta);

        return hgnc;
    }

    private void searchUniprot(HGNC hgnc, List<String> uniprotIds, boolean GO, boolean MESH, String ruta) {
        ontologiaObjMin ontologia = new ontologiaObjMin();

        uniprotIds.stream().forEach(codeUP -> {
            try {
                var uniprot = new lecturas_Uniprot(codeUP);
                ontologia.setNombre(hgnc.getSimbolo());
                uniprot.Codigos_GO();

                if (GO) {
                    ontologia.setFuncionMolecular(uniprot.getFuncionMolecular());
                    ontologia.setComponenteCelular(uniprot.getComponenteCelular());
                    ontologia.setProcesoBiologico(uniprot.getProcesoBiologico());
                }

                uniprot.buscar_tejido();
                hgnc.setTejidos(uniprot.getTejidos());
            } catch (Exception e) {
                //falla las lecturas en uniprot
            }

        });

        if (GO || MESH) {
            ontologia.guardarObjeto(ontologia, GO, MESH, ruta);
        }

    }
}
