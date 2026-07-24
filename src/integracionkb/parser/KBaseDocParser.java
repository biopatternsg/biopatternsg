package integracionkb.parser;

import integracionkb.model.DocumentedEvent;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class KBaseDocParser {
    private static final Pattern EVENT_PATTERN = Pattern.compile("event\\('([^']+)',\\s*([^,]+),\\s*'([^']+)'\\)");
    private static final Pattern SUBJECT_NAMES_PATTERN = Pattern.compile("subject names\\s*:\\s*:\s*(.+)");
    private static final Pattern OBJECT_NAMES_PATTERN = Pattern.compile("object names\\s*:\\s*:\s*(.+)");
    private static final Pattern PUBMED_PATTERN = Pattern.compile("^(.+)\\s+PUBMED_ID:\\s*(.+)$");
    private static final String EVENT_DELIMITER = "******************* Regulatory Event *******************";

    public Map<String, DocumentedEvent> parse(File file) throws IOException {
        Map<String, DocumentedEvent> events = new HashMap<>();
        
        try (BufferedReader reader = new BufferedReader(new FileReader(file))) {
            String line;
            DocumentedEvent currentEvent = null;
            boolean inSentencesSection = false;
            List<String> subjectNames = null;
            List<String> objectNames = null;

            while ((line = reader.readLine()) != null) {
                String trimmed = line.trim();
                
                if (trimmed.equals(EVENT_DELIMITER)) {
                    if (currentEvent != null) {
                        String key = currentEvent.getKey();
                        if (events.containsKey(key)) {
                            events.get(key).merge(currentEvent);
                        } else {
                            events.put(key, currentEvent);
                        }
                    }
                    currentEvent = null;
                    subjectNames = null;
                    objectNames = null;
                    inSentencesSection = false;
                    continue;
                }

                if (currentEvent == null && trimmed.startsWith("event('")) {
                    Matcher m = EVENT_PATTERN.matcher(trimmed);
                    if (m.find()) {
                        currentEvent = new DocumentedEvent(m.group(1), m.group(2).trim(), m.group(3));
                    }
                    continue;
                }

                if (currentEvent != null) {
                    Matcher m;
                    
                    if ((m = SUBJECT_NAMES_PATTERN.matcher(trimmed)).find()) {
                        subjectNames = parseNameList(m.group(1));
                        if (!subjectNames.isEmpty()) {
                            currentEvent.addSubjectNames(subjectNames);
                        }
                        continue;
                    }

                    if ((m = OBJECT_NAMES_PATTERN.matcher(trimmed)).find()) {
                        objectNames = parseNameList(m.group(1));
                        if (!objectNames.isEmpty()) {
                            currentEvent.addObjectNames(objectNames);
                        }
                        continue;
                    }

                    if (trimmed.startsWith("Sentences from abstracts") || trimmed.startsWith("------------------------")) {
                        inSentencesSection = true;
                        continue;
                    }

                    if (inSentencesSection && !trimmed.isEmpty() && currentEvent != null) {
                        Matcher pm = PUBMED_PATTERN.matcher(trimmed);
                        if (pm.find()) {
                            String text = pm.group(1).trim();
                            String pubmedId = pm.group(2).trim();
                            if (!text.isEmpty() && !pubmedId.isEmpty()) {
                                currentEvent.addSentence(new DocumentedEvent.SentenceEntry(text, pubmedId));
                            }
                        }
                    }
                }
            }

            // Don't forget the last event
            if (currentEvent != null) {
                String key = currentEvent.getKey();
                if (events.containsKey(key)) {
                    events.get(key).merge(currentEvent);
                } else {
                    events.put(key, currentEvent);
                }
            }
        }
        
        return events;
    }

    private List<String> parseNameList(String listStr) {
        List<String> names = new ArrayList<>();
        listStr = listStr.trim();
        
        if (!listStr.startsWith("[") || !listStr.endsWith("]")) {
            return names;
        }
        
        String content = listStr.substring(1, listStr.length() - 1).trim();
        if (content.isEmpty()) {
            return names;
        }

        // Split by comma, handling quoted strings
        String[] parts = content.split(",(?=(?:[^']*'[^']*')*[^']*$)");
        for (String part : parts) {
            String name = part.trim();
            if (name.startsWith("'") && name.endsWith("'")) {
                name = name.substring(1, name.length() - 1);
            }
            if (!name.isEmpty()) {
                names.add(name);
            }
        }
        return names;
    }
}