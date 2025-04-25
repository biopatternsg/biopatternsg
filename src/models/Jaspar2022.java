/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import com.google.gson.annotations.SerializedName;

/**
 *
 * @author USUARIO
 */
public class Jaspar2022 {
    //@SerializedName("chrom")
    //private String chrom;
    //@SerializedName("chromStart")
    //private int chromStart;
    //@SerializedName("chromEnd")
    //private int chromEnd;
    @SerializedName("name")
    private String name;
    @SerializedName("score")
    private int score;
    @SerializedName("strand")
    private String strand;
    @SerializedName("TFName")
    private String tfName;

    public Jaspar2022(String name, int score, String strand, String tfName) {
        this.name = name;
        this.score = score;
        this.strand = strand;
        this.tfName = tfName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public String getStrand() {
        return strand;
    }

    public void setStrand(String strand) {
        this.strand = strand;
    }

    public String getTfName() {
        return tfName;
    }

    public void setTfName(String tfName) {
        this.tfName = tfName;
    }
    
    
    
}
