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
public class MiddleEvents {
    
    public static List<Event> find(String object,Projog projog) {
        List<Event> events = new ArrayList<>();
        var query = "intermedios(" + object + ",E,B).";
        QueryResult result = projog.executeQuery(query);

        while (result.next()) {
            var event = new Event();
            event.setEvent(object + "," + result.getTerm("E") + "," + result.getTerm("B"));
            event.setObjA(object);
            event.setObjB(result.getTerm("B").getName());
            event.setRelation(result.getTerm("E").getName());
            
            if(validateEvent(event, events)){
                events.add(event);
            }
        }

        return events;
        
    }
    
    private static boolean validateEvent(Event currentEvent, List<Event> events){
        if(events.stream().filter(e->e.getEvent().equals(currentEvent.getEvent())).findFirst().isPresent()){
           return false;
        }
        
        return !currentEvent.getObjA().equals(currentEvent.getObjB());
    }

    
}
