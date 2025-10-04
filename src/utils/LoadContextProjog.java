/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.io.File;
import java.util.Arrays;
import java.util.List;
import org.projog.api.Projog;

/**
 *
 * @author yacson
 */
public class LoadContextProjog {
    
    public Projog execute(List<String> plFiles) {
        Projog projog = new Projog();
        loadPrologFiles(projog, plFiles);

        return projog;
    }

    private void loadPrologFiles(Projog projog, List<String> plFiles) {
        
        for (String filePath : plFiles) {
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
