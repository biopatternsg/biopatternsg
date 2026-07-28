package integracionkb.parser;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Set;

public class DataParser {
    private DataParser() {}

    public static Set<String> readIdentifiers(File file) throws IOException {
        Set<String> ids = new LinkedHashSet<>();
        if (!file.exists() || !file.isFile()) {
            return ids;
        }
        try (BufferedReader reader = new BufferedReader(
                new FileReader(file, StandardCharsets.UTF_8))) {
            String line;
            while ((line = reader.readLine()) != null) {
                line = line.trim();
                if (!line.isEmpty()) {
                    ids.add(line);
                }
            }
        }
        return ids;
    }

    public static void writeIdentifiers(File outputFile, Set<String> ids) throws IOException {
        outputFile.getParentFile().mkdirs();
        try (PrintWriter writer = new PrintWriter(
                new FileWriter(outputFile, StandardCharsets.UTF_8))) {
            for (String id : ids) {
                writer.println(id);
            }
        }
    }

    public static class CaseInsensitiveSet extends LinkedHashSet<String> {
        private final Set<String> lowerKeys = new HashSet<>();

        @Override
        public boolean add(String s) {
            if (s == null) {
                return super.add(s);
            }
            String key = s.toLowerCase(Locale.ROOT);
            if (lowerKeys.contains(key)) {
                return false;
            }
            lowerKeys.add(key);
            return super.add(s);
        }

        @Override
        public boolean remove(Object o) {
            if (o instanceof String) {
                lowerKeys.remove(((String) o).toLowerCase(Locale.ROOT));
            }
            return super.remove(o);
        }

        @Override
        public boolean contains(Object o) {
            if (o instanceof String) {
                return lowerKeys.contains(((String) o).toLowerCase(Locale.ROOT));
            }
            return false;
        }

        @Override
        public void clear() {
            lowerKeys.clear();
            super.clear();
        }
    }
}