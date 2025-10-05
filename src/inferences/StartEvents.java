/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package inferences;

import inferences.model.Event;
import java.util.ArrayList;
import java.util.List;
import org.projog.api.Projog;
import org.projog.api.QueryResult;

/**
 *
 * @author yacson
 */
public class StartEvents {

    public static List<Event> find(Projog projog) {
        var query = "inicio(A,E,B).";
        return query(projog, query);
    }

    public static List<Event> execute(String route, Projog projog, List<String> selectedObjects) {

        return null;
    }

    private static List<Event> query(Projog projog, String query) {
        List<Event> events = new ArrayList<>();
        QueryResult result = projog.executeQuery(query);

        while (result.next()) {
            var event = new Event();
            event.setEvent(result.getTerm("A") + "," + result.getTerm("E") + "," + result.getTerm("B"));
            event.setObjA(result.getTerm("A").getName());
            event.setObjB(result.getTerm("B").getName());
            event.setRelation(result.getTerm("E").getName());
            
            events.add(event);
        }

        return events;
    }

}
