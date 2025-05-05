package models;

public class FTJaspar {
    private double identity;
    private String chromosome;
    private String strand;
    private String start;
    private String end;
    
    public double getIdentity() {
        return identity;
    }

    public void setIdentity(double identity) {
        this.identity = identity;
    }

    public String getChromosome() {
        return chromosome;
    }

    public void setChromosome(String chromosome) {
        this.chromosome = chromosome;
    }

    public String getStrand() {
        return strand;
    }

    public void setStrand(String strand) {
        this.strand = strand;
    }

    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start;
    }

    public String getEnd() {
        return end;
    }

    public void setEnd(String end) {
        this.end = end;
    }

    public FTJaspar(double identity, String chromosome, String strand, String start, String end) {
        this.identity = identity;
        this.chromosome = chromosome;
        this.strand = strand;
        this.start = start;
        this.end = end;
    }
}