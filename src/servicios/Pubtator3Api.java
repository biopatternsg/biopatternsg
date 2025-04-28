/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servicios;


import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import estructura.abstractObject.Abstract;
import estructura.abstractObject.Event;
import estructura.abstractObject.LocationObject;
import estructura.abstractObject.ObjectDetail;
import java.util.ArrayList;

import java.util.List;

import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONException;

/**
 *
 * @author yacson
 */
public class Pubtator3Api extends conexionServ {

    private static final String URL_PUBTATOR3 = "https://www.ncbi.nlm.nih.gov/research/pubtator3-api/publications/export/biocjson?pmids=";

    public List<Abstract> search(List<String> pubMenIds) {
        List<Abstract> abstracs = new ArrayList<>();

        try {

            var query = URL_PUBTATOR3 + String.join(",", pubMenIds);
            var response = simpleConnectionStringGET(query);
            var jsonArray = convertToJson(response);
            var PubTator3 = jsonArray.get("PubTator3").getAsJsonArray();

            for (JsonElement jsonElement : PubTator3) {
                var jsonObject = jsonElement.getAsJsonObject();
                var abstractObject = getAbstractText(jsonObject);
                searchRelations(jsonObject, abstractObject);
                abstracs.add(abstractObject);

            }

        } catch (JSONException ex) {
            Logger.getLogger(Pubtator3Api.class.getName()).log(Level.SEVERE, null, ex);
        }

        return abstracs;
    }

    private Abstract getAbstractText(JsonObject jsonObject) {
        var abstractObject = new Abstract();
        var passages = jsonObject.get("passages").getAsJsonArray();

        for (JsonElement jsonElement : passages) {
            var object = jsonElement.getAsJsonObject();
            var type = object.get("infons").getAsJsonObject().get("type").toString().replaceAll("\"", "");
            
            abstractObject.setPubMedId(jsonObject.get("id").toString().replaceAll("\"", ""));
            
            if ("title".equals(type)) {
                abstractObject.setTitle(object.get("text").toString().replaceAll("\"", ""));
                
            }
            
            if ("abstract".equals(type)) {
                abstractObject.setText(object.get("text").toString().replaceAll("\"", ""));
              
            }
            
           
            getObjects(object, abstractObject);
            
        }

        return abstractObject;

    }

    private void getObjects(JsonObject jsonObject, Abstract abstractObject) {
        var annotations = jsonObject.get("annotations").getAsJsonArray();
        for (JsonElement jsonElement : annotations) {
            try {
                var objectDetail = new ObjectDetail();

                var annotation = jsonElement.getAsJsonObject();

                var indentifier = annotation.get("infons").getAsJsonObject().get("identifier").toString().replaceAll("\"", "");
                var accession = annotation.get("infons").getAsJsonObject().get("accession").toString().replaceAll("\"", "");
                var name = annotation.get("infons").getAsJsonObject().get("name").toString().replaceAll("\"", "");
                var normalizeId = annotation.get("infons").getAsJsonObject().get("normalized_id").toString().replaceAll("\"", "");
                var type = annotation.get("infons").getAsJsonObject().get("type").toString().replaceAll("\"", "");
                var biotype = annotation.get("infons").getAsJsonObject().get("biotype").toString().replaceAll("\"", "");
                var text = annotation.get("text").toString().replaceAll("\"", "");;
                
                if (!accession.equals("null")) {
                    
                    objectDetail.setAccession(accession);
                    objectDetail.setIdentifier(indentifier);
                    objectDetail.setName(name);
                    objectDetail.setNormalizeID(normalizeId);
                    objectDetail.setType(type);
                    objectDetail.setBiotype(biotype);
                    objectDetail.setText(text);

                    getLocations(annotation, objectDetail);

                    abstractObject.addObject(objectDetail);
                }
            } catch (Exception e) {
                // System.out.println(e.getMessage());
            }

        }

    }

    private void getLocations(JsonObject jsonObject, ObjectDetail objectDetail) {
        var objects = jsonObject.get("locations").getAsJsonArray();
        for (JsonElement jsonElement : objects) {
            var location = jsonElement.getAsJsonObject();
            var locationObject = new LocationObject();
            locationObject.setLength(location.get("length").getAsInt());
            locationObject.setOffset(location.get("offset").getAsInt());
            objectDetail.addLocation(locationObject);

        }
    }

    private void searchRelations(JsonObject jsonObject, Abstract abstractObject) {

        var relationsObjects = jsonObject.get("relations").getAsJsonArray();

        for (JsonElement jsonElement : relationsObjects) {
            var abstractEvent = createBiologicalRelation(jsonElement);
            abstractObject.addEvent(abstractEvent);

        }
    }

    private Event createBiologicalRelation(JsonElement jsonElement) {
        var abstractEvent = new Event();

        var relationObject = jsonElement.getAsJsonObject();
        var infons = relationObject.get("infons").getAsJsonObject();
        var role1 = infons.get("role1").getAsJsonObject().get("name").toString().replaceAll("\"", "");
        var role2 = infons.get("role2").getAsJsonObject().get("name").toString().replaceAll("\"", "");
        var relationTpe = infons.get("type").toString().replaceAll("\"", "");

        abstractEvent.setRole1(role1);
        abstractEvent.setRole2(role2);
        abstractEvent.setRelationType(relationTpe);

        return abstractEvent;
    }

    private JsonObject convertToJson(String input) throws JSONException {
        JsonParser parser = new JsonParser();
        return parser.parse(input).getAsJsonObject();

    }

}
