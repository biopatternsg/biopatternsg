/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servicios.dtos.hgnc.search;

/**
 *
 * @author yacson
 */
public class Doc {

    private String hgnc_id;
    private String symbol;
    private float score;

    public String getHgnc_id() {
        return hgnc_id;
    }

    public void setHgnc_id(String hgnc_id) {
        this.hgnc_id = hgnc_id;
    }

    public String getSymbol() {
        return symbol;
    }

    public void setSymbol(String symbol) {
        this.symbol = symbol;
    }

    public float getScore() {
        return score;
    }

    public void setScore(float score) {
        this.score = score;
    }

}
