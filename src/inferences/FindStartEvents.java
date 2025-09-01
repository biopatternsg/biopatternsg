/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package inferences;

import java.util.ArrayList;
import java.util.List;
import org.projog.api.Projog;
import org.projog.api.QueryResult;

/**
 *
 * @author yacson
 */
public class FindStartEvents {

    public List<String> execute(String route, Projog projog) {
        var query = "inicio(A,E,B).";
        return query(projog, query);
    }

    public List<String> execute(String route, Projog projog, List<String> selectedObjects) {

        return null;
    }

    List<String> query(Projog projog, String query) {
        List<String> events = new ArrayList<>();
        QueryResult result = projog.executeQuery(query);

        while (result.next()) {
            var event = result.getTerm("A") + "," + result.getTerm("E") + "," + result.getTerm("B");
            System.out.println("event: " + event);
            events.add(event);
        }

        return events;
    }

}
