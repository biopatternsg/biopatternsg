
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
public class EndEvents {

    public static List<Event> find(String endObject, Projog projog) {

        if (endObject != null && !endObject.isEmpty()) {
            return queryWithEndObject(projog, endObject);
        } else {
            return query(projog);
        }
    }

    public static List<Event> queryWithEndObject(Projog projog, String endObject) {
        List<Event> events = new ArrayList<>();
        QueryResult result = projog.executeQuery("final(A,E," + endObject + ").");
        while (result.next()) {
            var event = new Event();
            event.setEvent(result.getTerm("A") + "," + result.getTerm("E") + "," + endObject);
            event.setObjA(result.getTerm("A").getName());
            event.setObjB(endObject);
            event.setRelation(result.getTerm("E").getName());
            events.add(event);
        }
        return events;
    }

    public static List<Event> query(Projog projog) {
        List<Event> events = new ArrayList<>();
        QueryResult result = projog.executeQuery("final(A,E,B).");
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
