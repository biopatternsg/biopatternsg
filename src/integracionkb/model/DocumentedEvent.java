package integracionkb.model;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class DocumentedEvent {
    private final String subject;
    private final String relation;
    private final String object;
    private final Set<String> subjectNames = new LinkedHashSet<>();
    private final Set<String> objectNames = new LinkedHashSet<>();
    private final Map<String, SentenceEntry> sentences = new LinkedHashMap<>();

    public DocumentedEvent(String subject, String relation, String object) {
        this.subject = subject;
        this.relation = relation;
        this.object = object;
    }

    public String getSubject() { return subject; }
    public String getRelation() { return relation; }
    public String getObject() { return object; }

    public String getKey() {
        return subject + "|" + relation + "|" + object;
    }

    public Set<String> getSubjectNames() { return subjectNames; }
    public Set<String> getObjectNames() { return objectNames; }
    public Map<String, SentenceEntry> getSentences() { return sentences; }

    public void addSubjectNames(List<String> names) {
        subjectNames.addAll(names);
    }

    public void addObjectNames(List<String> names) {
        objectNames.addAll(names);
    }

    public void addSentence(SentenceEntry sentence) {
        sentences.putIfAbsent(sentence.getText(), sentence);
    }

    public void merge(DocumentedEvent other) {
        subjectNames.addAll(other.subjectNames);
        objectNames.addAll(other.objectNames);
        other.sentences.forEach((text, sentence) -> 
            sentences.putIfAbsent(text, sentence)
        );
    }

    public String toPrologString() {
        return "event('" + subject + "'," + relation + ",'" + object + "')";
    }

    public String toDocumentedString() {
        StringBuilder sb = new StringBuilder();
        sb.append("******************* Regulatory Event *******************\n\n");
        sb.append(toPrologString()).append("\n\n");
        sb.append("subject names: : ").append(formatList(subjectNames)).append("\n");
        sb.append("object names: : ").append(formatList(objectNames)).append("\n\n");
        sb.append("Sentences from abstracts:\n");
        sb.append("------------------------\n\n");
        for (SentenceEntry sentence : sentences.values()) {
            sb.append(sentence.getText()).append(" PUBMED_ID: ").append(sentence.getPubmedId()).append("\n\n");
        }
        sb.append("\n");
        return sb.toString();
    }

    private String formatList(Set<String> items) {
        StringBuilder sb = new StringBuilder("[");
        boolean first = true;
        for (String item : items) {
            if (!first) sb.append(", ");
            sb.append("'").append(item.replace("'", "\\'")).append("'");
            first = false;
        }
        sb.append("]");
        return sb.toString();
    }

    public static class SentenceEntry {
        private final String text;
        private final String pubmedId;

        public SentenceEntry(String text, String pubmedId) {
            this.text = text;
            this.pubmedId = pubmedId;
        }

        public String getText() { return text; }
        public String getPubmedId() { return pubmedId; }
    }
}