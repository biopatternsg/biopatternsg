/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pathways_objects;

import java.util.ArrayList;
import java.util.List;
import org.projog.api.Projog;

/**
 *
 * @author yacson
 */
public class ClassifyObject {
    
    public static List<String> classify(Projog projog, List<String> objects) {
        List<String> classifiedObjects = new ArrayList<>();
        objects.forEach(object -> classify(projog, object, classifiedObjects));
        return classifiedObjects;

    }

    private static void classify(Projog projog, String object, List<String> classifiedObjects) {
        
        if (isLigand(projog, object)) {
            classifiedObjects.add("ligand('" + object + "').");
        }

        if (isEnzyme(projog, object)) {
            classifiedObjects.add("enzyme('" + object + "').");
        }

        if (isProtein(projog, object)) {
            classifiedObjects.add("protein('" + object + "').");
        }

        if (isReceptor(projog, object)) {
            classifiedObjects.add("receptor('" + object + "').");
        }

        if (isTranscriptionFactor(projog, object)) {
            classifiedObjects.add("transcription_factor('" + object + "').");
        }

    }

    private static boolean isLigand(Projog projog, String object) {
        var query = "p_ligand('" + object + "').";
        var result = projog.executeQuery(query);
        return result.next();

    }

    private static boolean isReceptor(Projog projog, String object) {
        var query = "p_receptor('" + object + "').";
        var result = projog.executeQuery(query);
        return result.next();

    }

    private static boolean isTranscriptionFactor(Projog projog, String object) {
        var query = "p_transcription_factor('" + object + "').";
        var result = projog.executeQuery(query);
        return result.next();
    }

    private static boolean isProtein(Projog projog, String object) {
        var query = "p_protein('" + object + "').";
        var result = projog.executeQuery(query);
        return result.next();
    }

    private static boolean isEnzyme(Projog projog, String object) {
        var query = "p_enzyme('" + object + "').";
        var result = projog.executeQuery(query);
        return result.next();
    }
    
}
