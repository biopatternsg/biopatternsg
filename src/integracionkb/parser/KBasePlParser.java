package integracionkb.parser;

import integracionkb.model.Event;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class KBasePlParser {
    private static final Pattern EVENT_PATTERN = Pattern.compile("event\\('([^']+)',\\s*([^,]+),\\s*'([^']+)'\\)");

    public List<Event> parse(File file) throws IOException {
        List<Event> events = new ArrayList<>();
        
        try (BufferedReader reader = new BufferedReader(new FileReader(file))) {
            String line;
            while ((line = reader.readLine()) != null) {
                line = line.trim();
                if (line.isEmpty() || line.startsWith("base") || line.equals("]).")) {
                    continue;
                }
                
                Matcher matcher = EVENT_PATTERN.matcher(line);
                if (matcher.find()) {
                    String subject = matcher.group(1);
                    String relation = matcher.group(2).trim();
                    String object = matcher.group(3);
                    events.add(new Event(subject, relation, object));
                }
            }
        }
        
        return events;
    }
}