/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package inferences;

import EDU.purdue.cs.bloat.decorate.Main;
import java.io.File;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Arrays;
import java.util.List;
import org.projog.api.Projog;

/**
 *
 * @author yacson
 */
public class InferencesLoadContext {

    private static final String PATHWAYS_JPL = "scripts/pathwaysJPL.pl";
    private static final String PATHWAYS_OBJECTS = "/pathwaysObjects.pl";
    private static final String K_BASE = "/kBase.pl";

    public Projog execute(String route) {
        Projog projog = new Projog();
        loadPrologFiles(projog, route);

        return projog;
    }

    private void loadPrologFiles(Projog projog, String route) {
        List<String> prologFiles = Arrays.asList(PATHWAYS_JPL, route + PATHWAYS_OBJECTS, route + K_BASE);

        for (String filePath : prologFiles) {
            try {
                File prologFile = new File(filePath);
                projog.consultFile(prologFile);
                System.out.println(" - Archivo '" + prologFile.getName() + "' cargado.");
            } catch (Exception ex) {
                System.err.println("Error: No se pudo encontrar el archivo " + filePath);
            }

        }
    }

}
