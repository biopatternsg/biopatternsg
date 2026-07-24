package integracionkb.parser;

import integracionkb.model.AbstractRecord;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class AbstractsParser {
    private static final Pattern ABSTRACTS_PATTERN = Pattern.compile("^(\\d+)\\s*\\|\\s*(.+)$");
    private static final Pattern OBJECTS_PATTERN = Pattern.compile("^(\\d+)\\s*\\|\\s*(.+)$");
    private static final Pattern RELATIONS_PATTERN = Pattern.compile("^(\\d+)\\s*\\|\\s*(.+)$");
    private static final Pattern FILE_NUMERAL_PATTERN = Pattern.compile("abstracts_(\\d+)\\.txt$");

    public Map<String, AbstractRecord> parse(File abstractsDir) throws IOException {
        Map<String, AbstractRecord> records = new HashMap<>();

        File[] abstractsFiles = abstractsDir.listFiles((dir, name) -> name.matches("abstracts_\\d+\\.txt"));
        if (abstractsFiles == null || abstractsFiles.length == 0) {
            return records;
        }

        for (File abstractsFile : abstractsFiles) {
            Matcher m = FILE_NUMERAL_PATTERN.matcher(abstractsFile.getName());
            if (!m.find()) {
                continue;
            }
            int numeral = Integer.parseInt(m.group(1));

            File objectsFile = new File(abstractsDir, "objects_" + numeral + ".txt");
            File relationsFile = new File(abstractsDir, "relations_" + numeral + ".txt");

            Map<String, List<String>> objectsMap = parseObjectsFile(objectsFile);
            Map<String, List<String>> relationsMap = parseRelationsFile(relationsFile);

            try (BufferedReader reader = new BufferedReader(new java.io.FileReader(abstractsFile))) {
                String line;
                while ((line = reader.readLine()) != null) {
                    line = line.trim();
                    if (line.isEmpty()) {
                        continue;
                    }
                    Matcher am = ABSTRACTS_PATTERN.matcher(line);
                    if (am.find()) {
                        String pmid = am.group(1);
                        String abstractText = am.group(2).trim();

                        if (!records.containsKey(pmid)) {
                            AbstractRecord record = new AbstractRecord(pmid, abstractText, numeral);
                            
                            List<String> objRecs = objectsMap.get(pmid);
                            if (objRecs != null) {
                                for (String obj : objRecs) {
                                    record.addObjectRecord(obj);
                                }
                            }
                            
                            List<String> relRecs = relationsMap.get(pmid);
                            if (relRecs != null) {
                                for (String rel : relRecs) {
                                    record.addRelationRecord(rel);
                                }
                            }
                            
                            records.put(pmid, record);
                        }
                    }
                }
            }
        }

        return records;
    }

    private Map<String, List<String>> parseObjectsFile(File file) throws IOException {
        Map<String, List<String>> map = new HashMap<>();
        if (!file.exists()) {
            return map;
        }
        try (BufferedReader reader = new BufferedReader(new java.io.FileReader(file))) {
            String line;
            while ((line = reader.readLine()) != null) {
                line = line.trim();
                if (line.isEmpty()) {
                    continue;
                }
                Matcher m = OBJECTS_PATTERN.matcher(line);
                if (m.find()) {
                    String pmid = m.group(1);
                    String record = m.group(2).trim();
                    map.computeIfAbsent(pmid, k -> new ArrayList<>()).add(record);
                }
            }
        }
        return map;
    }

    private Map<String, List<String>> parseRelationsFile(File file) throws IOException {
        Map<String, List<String>> map = new HashMap<>();
        if (!file.exists()) {
            return map;
        }
        try (BufferedReader reader = new BufferedReader(new java.io.FileReader(file))) {
            String line;
            while ((line = reader.readLine()) != null) {
                line = line.trim();
                if (line.isEmpty()) {
                    continue;
                }
                Matcher m = RELATIONS_PATTERN.matcher(line);
                if (m.find()) {
                    String pmid = m.group(1);
                    String record = m.group(2).trim();
                    map.computeIfAbsent(pmid, k -> new ArrayList<>()).add(record);
                }
            }
        }
        return map;
    }

    public void writeIntegrated(Iterable<AbstractRecord> records, File outputDir) throws IOException {
        Map<Integer, List<AbstractRecord>> byNumeral = new HashMap<>();
        
        for (AbstractRecord record : records) {
            byNumeral.computeIfAbsent(record.getSourceNumeral(), k -> new ArrayList<>()).add(record);
        }

        for (Map.Entry<Integer, List<AbstractRecord>> entry : byNumeral.entrySet()) {
            int numeral = entry.getKey();
            List<AbstractRecord> numeralRecords = entry.getValue();

            File abstractsOut = new File(outputDir, "abstracts_" + numeral + ".txt");
            File objectsOut = new File(outputDir, "objects_" + numeral + ".txt");
            File relationsOut = new File(outputDir, "relations_" + numeral + ".txt");

            try (PrintWriter absWriter = new PrintWriter(new FileWriter(abstractsOut));
                 PrintWriter objWriter = new PrintWriter(new FileWriter(objectsOut));
                 PrintWriter relWriter = new PrintWriter(new FileWriter(relationsOut))) {

                for (AbstractRecord record : numeralRecords) {
                    absWriter.println(record.getPmid() + " | " + record.getAbstractText());
                    
                    for (String obj : record.getObjectRecords()) {
                        objWriter.println(record.getPmid() + " | " + obj);
                    }
                    
                    for (String rel : record.getRelationRecords()) {
                        relWriter.println(record.getPmid() + " | " + rel);
                    }
                }
            }
        }
    }
}