/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servicios;

import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author yacson
 */
public class Pubtator3Api extends conexionServ {

    private static String URL_PUBTATOR3 = "https://www.ncbi.nlm.nih.gov/research/pubtator3-api/publications/export/biocjson?pmids=";

    public void search(String pmId) {
        try {

            var query = URL_PUBTATOR3 + pmId;
            var response = simpleConnectionJsonGET(query);
            var json = new JSONObject(new Gson().toJson(response));
            var relations = searchRealtionsDisplay(json);
            var keys = searchKeys(json);
            

        } catch (JSONException ex) {
            Logger.getLogger(Pubtator3Api.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    private List<String> searchRealtionsDisplay(JSONObject json) throws JSONException {
        List<String> relations = new ArrayList<>();
        var jsonArray = json.getJSONArray("relations_display");
        for (int i = 0; i < jsonArray.length(); i++) {
            var relation = jsonArray.getJSONObject(i).get("name").toString();
            relations.add(relation);
        }
       
        return relations;
    }

    private Map<String, String> searchKeys(JSONObject json) throws JSONException {
        Map<String, String> keys = new HashMap<>();

        var jsonArray = json.getJSONArray("passages");
        for (int i = 0; i < jsonArray.length(); i++) {
            getAnnotations(jsonArray.getJSONObject(i), keys);

        }
        return null;
    }

    private void getAnnotations(JSONObject json, Map<String, String> keys) throws JSONException {
        var annotations = json.getJSONArray("annotations");
        for (int i = 0; i < annotations.length(); i++) {
            getKeys(annotations.getJSONObject(i), keys);
        }
    }

    private void getKeys(JSONObject json, Map<String, String> keys) throws JSONException {
        var infos = json.getJSONObject("infons");
        try {
            var name = infos.get("name").toString();
            var key = infos.get("accession").toString();
            addkeyToMap(keys, key, name);
        } catch (Exception e) {
           // System.out.println(e.getCause());
        }
    }

    private void addkeyToMap(Map<String, String> keys, String key, String name) {
        if (name != null && key != null && !keys.containsKey(key)) {
            keys.put(key, name);
        }
    }

}
