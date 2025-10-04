/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package object_pathways;

import configuracion.utilidades;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.projog.api.Projog;
import pipeline.escribirBC;
import pipeline.minado_FT;
import utils.LoadContextProjog;

/**
 *
 * @author yacson
 */
public class BuildPathwayObjects {

    private static final String MESH_ONTOLOGY = "/ontologyMESH.pl";
    private static final String MINED_OBJECTS = "/minedObjects.pl";
    private static final String WELL_KNOWN_RULES = "/wellKnownRules.pl";
    private static final String KBASE = "/kBase.pl";
    private static final String GENERATOR_PATHWAYS_OBJECTS = "scripts/generatorPathwaysObjects.pl";

    public void execute(String route) {
        var projog = new LoadContextProjog().execute(fileList(route));

        var objects = findObjects(projog);

        var classifiedObjects = classifyObjects(projog, objects);

        createFilePathwayObjects(route, classifiedObjects);

    }

    private void createFilePathwayObjects(String route, List<String> classifiedObjects) {
        createFile(route);
        String fileRoute = route + "/pathwaysObjects.pl";
        classifiedObjects.forEach(object ->  new escribirBC(object, fileRoute));

    }

    private List<String> classifyObjects(Projog projog, List<String> objects) {
        List<String> classifiedObjects = new ArrayList<>();
        objects.forEach(object -> classifyObject(projog, object, classifiedObjects));
        return classifiedObjects;

    }

    private void classifyObject(Projog projog, String object, List<String> classifiedObjects) {
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

    private boolean isLigand(Projog projog, String object) {
        var query = "p_ligand('" + object + "').";
        var result = projog.executeQuery(query);
        return result.next();

    }

    private boolean isReceptor(Projog projog, String object) {
        var query = "p_receptor('" + object + "').";
        var result = projog.executeQuery(query);
        return result.next();

    }

    private boolean isTranscriptionFactor(Projog projog, String object) {
        var query = "p_transcription_factor('" + object + "').";
        var result = projog.executeQuery(query);
        return result.next();
    }

    private boolean isProtein(Projog projog, String object) {
        var query = "p_protein('" + object + "').";
        var result = projog.executeQuery(query);
        return result.next();
    }

    private boolean isEnzyme(Projog projog, String object) {
        var query = "p_enzyme('" + object + "').";
        var result = projog.executeQuery(query);
        return result.next();
    }

    private List<String> findObjects(Projog projog) {
        List<String> objects = new ArrayList<>();
        var query = "listar_eventos(A,B).";
        var result = projog.executeQuery(query);

        while (result.next()) {
            objects.add(result.getTerm("A").getName());
            objects.add(result.getTerm("B").getName());
        }

        return objects;
    }

    private List<String> fileList(String route) {
        return List.of(
                route + MESH_ONTOLOGY,
                route + MINED_OBJECTS,
                route + WELL_KNOWN_RULES,
                GENERATOR_PATHWAYS_OBJECTS
        );
    }

    private void createFile(String route) {
        FileWriter file = null;
        PrintWriter pw = null;
        try {
            file = new FileWriter(route + "/pathwaysObjects.pl");
        } catch (IOException ex) {
            Logger.getLogger(minado_FT.class.getName()).log(Level.SEVERE, null, ex);
        }
        pw = new PrintWriter(file);
    }

}
