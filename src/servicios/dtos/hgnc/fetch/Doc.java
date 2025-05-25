/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servicios.dtos.hgnc.fetch;

import java.util.List;

/**
 *
 * @author yacson
 */
public class Doc {
    
    private List<String> pubmed_id;
    private String locus_type;
    private List<String> alias_symbol;
    private List<String> gene_group_id;
    private String symbol;
    private List<String> uniprot_ids;
    private List<String> prev_name;
    private String name;
    private String cosmic;

    public List<String> getPubmed_id() {
        return pubmed_id;
    }

    public void setPubmed_id(List<String> pubmed_id) {
        this.pubmed_id = pubmed_id;
    }

    public String getLocus_type() {
        return locus_type;
    }

    public void setLocus_type(String locus_type) {
        this.locus_type = locus_type;
    }

    public List<String> getAlias_symbol() {
        return alias_symbol;
    }

    public void setAlias_symbol(List<String> alias_symbol) {
        this.alias_symbol = alias_symbol;
    }

    public List<String> getGene_group_id() {
        return gene_group_id;
    }

    public void setGene_group_id(List<String> gene_group_id) {
        this.gene_group_id = gene_group_id;
    }

    public String getSymbol() {
        return symbol;
    }

    public void setSymbol(String symbol) {
        this.symbol = symbol;
    }

    public List<String> getUniprot_ids() {
        return uniprot_ids;
    }

    public void setUniprot_ids(List<String> uniprot_ids) {
        this.uniprot_ids = uniprot_ids;
    }

    public List<String> getPrev_name() {
        return prev_name;
    }

    public void setPrev_name(List<String> prev_name) {
        this.prev_name = prev_name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCosmic() {
        return cosmic;
    }

    public void setCosmic(String cosmic) {
        this.cosmic = cosmic;
    }
    
    
    
    
}
