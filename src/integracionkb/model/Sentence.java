package integracionkb.model;

public class Sentence {
    private final String text;
    private final String pubmedId;

    public Sentence(String text, String pubmedId) {
        this.text = text;
        this.pubmedId = pubmedId;
    }

    public String getText() { return text; }
    public String getPubmedId() { return pubmedId; }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Sentence)) return false;
        Sentence other = (Sentence) o;
        return pubmedId.equals(other.pubmedId);
    }

    @Override
    public int hashCode() {
        return pubmedId.hashCode();
    }

    @Override
    public String toString() {
        return text + " PUBMED_ID: " + pubmedId;
    }
}