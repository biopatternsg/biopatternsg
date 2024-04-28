/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package estructura.abstractObject;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author yacson
 */
public class ObjectDetail {
    
    private String name;
    private String identifier;
    private String accession;
    private String normalizeID;
    private List<LocationObject> locations;
    private String type;
    private String biotype;
    private String text;

    public ObjectDetail() {
        this.locations = new ArrayList<>();
    }
    
    public void addLocation(LocationObject location){
        this.locations.add(location);
    }

    public List<LocationObject> getLocations() {
        return locations;
    }

    public void setLocations(List<LocationObject> locations) {
        this.locations = locations;
    }
    
    

    public String getIdentifier() {
        return identifier;
    }

    public void setIdentifier(String identifier) {
        this.identifier = identifier;
    }

    public String getAccession() {
        return accession;
    }

    public void setAccession(String accession) {
        this.accession = accession;
    }

   
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return identifier;
    }

    public void setCode(String code) {
        this.identifier = code;
    }

    public String getNormalizeID() {
        return normalizeID;
    }

    public void setNormalizeID(String normalizeID) {
        this.normalizeID = normalizeID;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getBiotype() {
        return biotype;
    }

    public void setBiotype(String biotype) {
        this.biotype = biotype;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
    
    
    
    

       
    
           
}
