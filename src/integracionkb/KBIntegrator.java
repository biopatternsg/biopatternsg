package integracionkb;

import integracionkb.model.AbstractRecord;
import integracionkb.model.DocumentedEvent;
import integracionkb.model.Event;
import integracionkb.parser.AbstractsParser;
import integracionkb.parser.DataParser;
import integracionkb.parser.KBaseDocParser;
import integracionkb.parser.KBasePlParser;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class KBIntegrator {

    public void generadorBCInt(String network) throws IOException {
        System.out.println("Starting integration for network: " + network);

        File networksDir = new File("minery/networks/" + network);
        if (!networksDir.exists() || !networksDir.isDirectory()) {
            throw new IllegalArgumentException("Network directory not found: " + networksDir.getAbsolutePath());
        }

        File[] experimentDirs = networksDir.listFiles(File::isDirectory);
        if (experimentDirs == null || experimentDirs.length == 0) {
            System.out.println("No experiment directories found in: " + networksDir.getAbsolutePath());
            return;
        }

        System.out.println("Found " + experimentDirs.length + " experiment directories");

        // New output directory pattern: minery/integration/{network}
        File outputDir = new File("minery/integration/" + network);
        deleteDirectory(outputDir);
        outputDir.mkdirs();

        // Integration 1: kBase.pl (simple events, no duplicates)
        integrateKBasePl(experimentDirs, outputDir);

        // Integration 2: kBaseDoc.txt (documented events with merged names and sentences)
        integrateKBaseDoc(experimentDirs, outputDir);

        // Integration 3: abstracts folders integration (all the abstracts_*.txt, objects_*.txt, and relations_*.txt merged)
        integrateAbstracts(experimentDirs, outputDir);

        // Integration 4: data folders integration (expert_objects.txt, homologous, pubmed_IDsExp)
        integrateData(experimentDirs, outputDir);

        // System.out.println("Integration completed for network: " + network);

        // Delete legacy directory after successful migration
        File oldDir = new File("minery/integration/" + network);
        if (oldDir.exists() && !oldDir.equals(outputDir)) {
            deleteDirectory(oldDir);
            System.out.println("  Removed legacy directory: " + oldDir.getAbsolutePath());
        }
    }

    private void integrateKBasePl(File[] experimentDirs, File outputDir) throws IOException {
        System.out.println("Integrating kBase.pl files...");

        Set<String> uniqueEventKeys = new LinkedHashSet<>();
        List<Event> integratedEvents = new ArrayList<>();

        KBasePlParser parser = new KBasePlParser();

        for (File expDir : experimentDirs) {
            File kBaseFile = new File(expDir, "kBase.pl");
            if (kBaseFile.exists()) {
                List<Event> events = parser.parse(kBaseFile);
                for (Event event : events) {
                    String key = event.getKey();
                    if (uniqueEventKeys.add(key)) {
                        integratedEvents.add(event);
                    }
                }
                System.out.println("  Processed: " + expDir.getName() + " (" + events.size() + " events)");
            }
        }

        File outputFile = new File(outputDir, "kBase.pl");

        try (PrintWriter writer = new PrintWriter(new FileWriter(outputFile))) {
            writer.println("base([");
            for (int i = 0; i < integratedEvents.size(); i++) {
                Event event = integratedEvents.get(i);
                writer.print(event.toPrologString());
                if (i < integratedEvents.size() - 1) {
                    writer.println(",");
                } else {
                    writer.println();
                }
            }
            writer.println("]).");
        }

        System.out.println("  Integrated kBase.pl written to: " + outputFile.getAbsolutePath());
        System.out.println("  Total unique events: " + integratedEvents.size());
    }

    private void integrateKBaseDoc(File[] experimentDirs, File outputDir) throws IOException {
        System.out.println("Integrating kBaseDoc.txt files...");

        Map<String, DocumentedEvent> integratedEvents = new LinkedHashMap<>();
        KBaseDocParser parser = new KBaseDocParser();

        for (File expDir : experimentDirs) {
            File kBaseDocFile = new File(expDir, "kBaseDoc.txt");
            if (kBaseDocFile.exists()) {
                Map<String, DocumentedEvent> events = parser.parse(kBaseDocFile);
                for (DocumentedEvent event : events.values()) {
                    String key = event.getKey();
                    if (integratedEvents.containsKey(key)) {
                        integratedEvents.get(key).merge(event);
                    } else {
                        integratedEvents.put(key, event);
                    }
                }
                System.out.println("  Processed: " + expDir.getName() + " (" + events.size() + " events)");
            }
        }

        File outputFile = new File(outputDir, "kBaseDoc.txt");

        try (PrintWriter writer = new PrintWriter(new FileWriter(outputFile))) {
            for (DocumentedEvent event : integratedEvents.values()) {
                writer.print(event.toDocumentedString());
            }
        }

        System.out.println("  Integrated kBaseDoc.txt written to: " + outputFile.getAbsolutePath());
        System.out.println("  Total unique documented events: " + integratedEvents.size());
    }

    private void integrateAbstracts(File[] experimentDirs, File outputDir) throws IOException {
        System.out.println("Integrating abstracts folders...");

        Map<String, AbstractRecord> integratedRecords = new LinkedHashMap<>();
        AbstractsParser parser = new AbstractsParser();

        for (File expDir : experimentDirs) {
            File abstractsDir = new File(expDir, "abstracts");
            if (abstractsDir.exists() && abstractsDir.isDirectory()) {
                Map<String, AbstractRecord> records = parser.parse(abstractsDir);
                for (AbstractRecord record : records.values()) {
                    String pmid = record.getPmid();
                    if (!integratedRecords.containsKey(pmid)) {
                        integratedRecords.put(pmid, record);
                    }
                }
                System.out.println("  Processed: " + expDir.getName() + " (" + records.size() + " records)");
            }
        }

        File abstractsOutputDir = new File(outputDir, "abstracts");
        abstractsOutputDir.mkdirs();

        parser.writeIntegrated(integratedRecords.values(), abstractsOutputDir);

        System.out.println("  Integrated abstracts written to: " + abstractsOutputDir.getAbsolutePath());
        System.out.println("  Total unique abstract records: " + integratedRecords.size());
    }

    private void integrateData(File[] experimentDirs, File outputDir) throws IOException {
        System.out.println("Integrating data folders...");

        File dataRoot = new File("data/" + outputDir.getName());
        if (!dataRoot.exists() || !dataRoot.isDirectory()) {
            throw new IllegalArgumentException("Data directory not found: " + dataRoot.getAbsolutePath());
        }

        DataParser.CaseInsensitiveSet expertObjects = new DataParser.CaseInsensitiveSet();
        DataParser.CaseInsensitiveSet homologous = new DataParser.CaseInsensitiveSet();
        DataParser.CaseInsensitiveSet pubmedIds = new DataParser.CaseInsensitiveSet();

        for (File expDir : experimentDirs) {
            String expName = expDir.getName();
            File dataExpDir = new File(dataRoot, expName);

            if (!dataExpDir.exists() || !dataExpDir.isDirectory()) {
                System.out.println("  WARNING: Missing data folder for experiment '" + expName +
                    "' at: " + dataExpDir.getAbsolutePath() + " - skipping");
                continue;
            }

            File expertFile = new File(dataExpDir, "expert_objects.txt");
            File homologFile = new File(dataExpDir, "homologous");
            File pubmedFile = new File(dataExpDir, "pubmed_IDsExp");

            int beforeExpert = expertObjects.size();
            int beforeHomolog = homologous.size();
            int beforePubmed = pubmedIds.size();

            expertObjects.addAll(DataParser.readIdentifiers(expertFile));
            homologous.addAll(DataParser.readIdentifiers(homologFile));
            pubmedIds.addAll(DataParser.readIdentifiers(pubmedFile));

            if (expertObjects.size() == beforeExpert) {
                System.out.println("  WARNING: " + expName + "/expert_objects.txt is empty or all duplicates");
            }
            if (homologous.size() == beforeHomolog) {
                System.out.println("  WARNING: " + expName + "/homologous is empty or all duplicates");
            }
            if (pubmedIds.size() == beforePubmed) {
                System.out.println("  WARNING: " + expName + "/pubmed_IDsExp is empty or all duplicates");
            }

            System.out.println("  Processed: " + expName +
                " (expert: +" + (expertObjects.size() - beforeExpert) +
                ", homolog: +" + (homologous.size() - beforeHomolog) +
                ", pubmed: +" + (pubmedIds.size() - beforePubmed) + ")");
        }

        File outputDirData = new File(outputDir, "data");
        deleteDirectory(outputDirData);
        outputDirData.mkdirs();

        DataParser.writeIdentifiers(new File(outputDirData, "expert_objects.txt"), expertObjects);
        DataParser.writeIdentifiers(new File(outputDirData, "homologous"), homologous);
        DataParser.writeIdentifiers(new File(outputDirData, "pubmed_IDsExp"), pubmedIds);

        System.out.println("  Integrated data written to: " + outputDirData.getAbsolutePath());
        System.out.println("  Total unique - expert_objects: " + expertObjects.size() +
                           ", homologous: " + homologous.size() +
                           ", pubmed_IDsExp: " + pubmedIds.size());
    }

    private void deleteDirectory(File dir) throws IOException {
        if (!dir.exists()) {
            return;
        }
        Path path = dir.toPath();
        Files.walk(path)
             .sorted(Comparator.reverseOrder())
             .map(Path::toFile)
             .forEach(File::delete);
    }

    public static void main(String[] args) {
        if (args.length < 1) {
            System.err.println("Usage: java KBIntegrator <network>");
            System.err.println("Example: java KBIntegrator COVID-19");
            System.exit(1);
        }

        String network = args[0];
        KBIntegrator integrator = new KBIntegrator();

        try {
            integrator.generadorBCInt(network);
            System.out.println("\nIntegration successful!");
        } catch (IOException e) {
            System.err.println("Integration failed: " + e.getMessage());
            e.printStackTrace();
            System.exit(1);
        }
    }
}