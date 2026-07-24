package integracionkb.model;

import java.util.ArrayList;
import java.util.List;

public class AbstractRecord {
    private final String pmid;
    private final String abstractText;
    private final List<String> objectRecords = new ArrayList<>();
    private final List<String> relationRecords = new ArrayList<>();
    private final int sourceNumeral;

    public AbstractRecord(String pmid, String abstractText, int sourceNumeral) {
        this.pmid = pmid;
        this.abstractText = abstractText;
        this.sourceNumeral = sourceNumeral;
    }

    public String getPmid() { return pmid; }
    public String getAbstractText() { return abstractText; }
    public List<String> getObjectRecords() { return objectRecords; }
    public List<String> getRelationRecords() { return relationRecords; }
    public int getSourceNumeral() { return sourceNumeral; }

    public void addObjectRecord(String record) {
        objectRecords.add(record);
    }

    public void addRelationRecord(String record) {
        relationRecords.add(record);
    }
}