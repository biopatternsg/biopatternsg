/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package inferences;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.List;
import pipeline.escribirBC;

/**
 *
 * @author yacson
 */
public class InferenceUtils {
    
    public void summarizeKB(String route) {
         deleteFile(route + "/kBaseR.pl");
        List<String> events = readKB(route);
        ArrayList<String> summarize = new ArrayList<>();
        
        events.stream().forEach((e) -> {
            String sep[] = e.split(",");
            String obj1 = sep[0];
            String obj2 = sep[2];
            String event = sep[1];
            event = classifyEvent(event);

            String summarizedEvent = "event(" + obj1 + "," + event + "," + obj2 + ")";

            if (!summarize.contains(summarizedEvent)) {
                summarize.add(summarizedEvent);
            }

        });

        new escribirBC("base([", route + "/kBaseR.pl");

        for (int i = 0; i < summarize.size() - 1; i++) {
            new escribirBC(summarize.get(i) + ",", route + "/kBaseR.pl");
        }
        new escribirBC(summarize.get(summarize.size() - 1), route + "/kBaseR.pl");

        new escribirBC("]).", route + "/kBaseR.pl");


    }
    
     

    public List<String> readKB(String ruta) {
        List<String> events = new ArrayList<>();

        File file = null;
        FileReader fr = null;
        BufferedReader br = null;
        try {

            file = new File(ruta + "/kBase.pl");

            fr = new FileReader(file);
            br = new BufferedReader(fr);
            String line;
            while ((line = br.readLine()) != null) {
                String text = line.replace("base([", "").replace("]).", "").replace("event(", "").replace(")", "");
                if (!text.equals("")) {
                    events.add(text);
                }
            }

        } catch (Exception e) {

            // e.printStackTrace();
        } finally {
            try {
                if (null != fr) {
                    fr.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        return events;
    }

    public String classifyEvent(String synonym) {

        List<String> eventsUp = new ArrayList<>();
        eventsUp.add("cause");
        eventsUp.add("positive_correlation");

        List<String> eventsDown = new ArrayList<>();
        eventsDown.add("inhibition");
        eventsDown.add("negative_correlation");

        List<String> eventsMiddle = new ArrayList<>();
        eventsMiddle.add("association");

        List<String> eventsStart = new ArrayList<>();
        eventsStart.add("bind");

        if (eventsUp.contains(synonym)) {
            synonym = "positive_correlation";
        } else if (eventsDown.contains(synonym)) {
            synonym = "negative_correlation";
        } else if (eventsMiddle.contains(synonym)) {
            synonym = "association";
        } else if (eventsStart.contains(synonym)) {
            synonym = "bind";
        }

        return synonym;
    }

    private void deleteFile(String fileName) {
        try {
            File file = new File(fileName);
            file.delete();
        } catch (Exception e) {

        }
    }
    
    

}
