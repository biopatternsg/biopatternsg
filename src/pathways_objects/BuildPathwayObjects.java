/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pathways_objects;

import configuracion.configuracion;
import configuracion.utilidades;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.projog.api.Projog;
import org.projog.api.QueryResult;
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

    public void execute(String route, configuracion config) throws IOException {
        var projog = new LoadContextProjog().execute(fileList(route));

        var objects = findObjects(projog);
        
        var classifiedObjects = ClassifyObject.classify(projog, objects);

        createFilePathwayObjects(route, classifiedObjects, objects);

        improveObjectsFromPuptator(route);

        config.setObjetosPatrones(true);
        config.guardar(route);

    }

    private void createFilePathwayObjects(String route, List<String> classifiedObjects, List<String> objects) {
        createFile(route);
        String fileRoute = route + "/pathwaysObjects.pl";
        new escribirBC("%//" + objects.toString(), fileRoute);
        classifiedObjects.forEach(object -> new escribirBC(object, fileRoute));

    }
  

    private List<String> findObjects(Projog projog) {
        Set<String> objects = new HashSet<>();
        var query = "listar_eventos(A,B).";
        QueryResult result = projog.executeQuery(query);

        while (result.next()) {
            objects.add(result.getTerm("A").getName());
            objects.add(result.getTerm("B").getName());
        }

        return new ArrayList<>(objects);
    }

    private List<String> fileList(String route) {
        return List.of(
                GENERATOR_PATHWAYS_OBJECTS,
                route + MESH_ONTOLOGY,
                route + MINED_OBJECTS,
                route + WELL_KNOWN_RULES,
                route + KBASE
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

    private void improveObjectsFromPuptator(String route) throws IOException {

        //  Este metodo permite mejorar los objetos del experto y del archivo pathwaysObjects.pl    
        ProcessBuilder builder = new ProcessBuilder("python3", "scripts/improve_objects_pathways.py", route);

        Map<String, String> env = builder.environment();

        // Set working directory
        String workingDir = System.getProperty("user.dir");

        builder.directory(new File(workingDir));

        // Start process and get output
        Process process = builder.start();

        InputStream out = process.getInputStream();

        // Convert output stream into a readable format
        BufferedReader br = new BufferedReader(new InputStreamReader(out));

        String line;

        while ((line = br.readLine()) != null) {

            System.out.println(line);

        }

    }

}
