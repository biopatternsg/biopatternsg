
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package inferences;

import inferences.model.Event;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;
import org.projog.api.Projog;
import utils.LoadContextProjog;

/**
 *
 * @author yacson
 */
public class Inferences {

    private static final String PATHWAYS_JPL = "scripts/pathwaysJPL.pl";
    private static final String PATHWAYS_OBJECTS = "/pathwaysObjects.pl";
    private static final String K_BASE = "/kBase.pl";

    public void findPathways(String route) {
        List<String> plFiles = Arrays.asList(PATHWAYS_JPL, route + PATHWAYS_OBJECTS, route + K_BASE);
        Projog context = new LoadContextProjog().execute(plFiles);

        var startEvents = StartEvents.find(context);
        var endEvents = EndEvents.find("CD4", context);
        buildPathway(startEvents, endEvents, context);

    }

    private void buildPathway(List<Event> startEvents, List<Event> endEvents, Projog context) {
        var initialObjects = startEvents.stream().map(e -> e.getObjB()).collect(Collectors.toSet());
        initialObjects.forEach(object -> pathway(object, startEvents, endEvents, new ArrayList<>(), context));
    }

    private void pathway(String object, List<Event> startEvents, List<Event> endEvents, List<Event> eventPathway, Projog context) {
        List<Event> eventsCurrentPathway = new ArrayList<>();
        eventsCurrentPathway.addAll(eventPathway);
        var events = MiddleEvents.find(object, context);
        events.forEach(currentEvent -> verifyPathway(currentEvent, startEvents, endEvents, eventsCurrentPathway, context));
    }

    private void verifyPathway(Event currentEvent, List<Event> startEvents, List<Event> endEvents, List<Event> eventPathway, Projog context) {
        if (validateObjects(eventPathway, currentEvent)) {

            eventPathway.add(currentEvent);
            var linkEvent = endEvents.stream().filter(e -> e.getObjA().equals(currentEvent.getObjB())).findFirst();
            if (linkEvent.isPresent()) {
                writePathway(eventPathway, startEvents, endEvents);
            } else {
                pathway(currentEvent.getObjB(), startEvents, endEvents, eventPathway, context);
            }

        }
    }

    private void writePathway(List<Event> eventPathway, List<Event> startEvents, List<Event> endEvents) {
        var initials = startEvents.stream().filter(e -> e.getObjB().equals(eventPathway.get(0).getObjA())).collect(Collectors.toList());
        var finals = endEvents.stream().filter(e -> e.getObjA().equals(eventPathway.get(0).getObjB())).collect(Collectors.toList());

        initials.forEach(i -> {
            finals.forEach(f -> {
                System.out.print(i.getEvent() + " ; ");
                eventPathway.forEach(m -> System.out.print(m.getEvent() + " ; "));
                System.out.println(f.getEvent());
            });

        });

    }

    private boolean validateObjects(List<Event> eventPathway, Event currentEvent) {
        return !eventPathway.stream().filter(event -> event.getObjA().equals(currentEvent.getObjA())).findFirst().isPresent();
    }

}
