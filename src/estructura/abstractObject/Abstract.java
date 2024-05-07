package estructura.abstractObject;

import com.db4o.Db4o;
import com.db4o.ObjectContainer;
import com.db4o.ObjectSet;
import configuracion.PMIDS;
import configuracion.configuracion;
import configuracion.utilidades;
import estructura.Paginator;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import pipeline.escribirBC;
import servicios.Pubtator3Api;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author yacson
 */
public class Abstract {

    private String fount;
    private String pubMedId;
    private String title;
    private String text;
    private List<Event> events;
    private List<ObjectDetail> objects;

    public Abstract() {
        this.events = new ArrayList<>();
        this.objects = new ArrayList<>();
    }
    
    
    
    public void find(String route, configuracion config) {
        deleteFile(route);
        createDirectory(route + "/abstracts");
        utilidades.texto_etapa = "==== " + utilidades.idioma.get(30) + " ====\n";
        utilidades.momento = "";
        limpiarPantalla();
        System.out.println(utilidades.colorTexto1 + utilidades.titulo);
        System.out.println(utilidades.colorTexto1 + utilidades.proceso);
        System.out.println("\n" + utilidades.colorTexto2 + utilidades.texto_etapa);
        
        
        
        List<String> pubMedIds = getPubMedIds(route);
        Paginator paginator = new Paginator(pubMedIds, 50);

        while (paginator.hasNext()) {
            try {
                //System.out.println("page: "+ paginator.currentPage());
                new utilidades().carga();
                var events = new Pubtator3Api().search((List<String>) paginator.getElementsPage());
                saveList(route, events);
                //TimeUnit.SECONDS.sleep(1);
            } catch (Exception e) {
               // System.out.println("total pages: "+ paginator.getTotalPages());
               // System.out.println("page: "+ paginator.currentPage());
            }
            
        }
        
        writeFile(route);
        
        //config.setAbstracts(true);
        //config.guardar(route);

    }

    public void saveList(String route, List<Abstract> abstracs) {
        abstracs.forEach(abstractObject -> {

            save(route,abstractObject);
        });
    }

    public void save(String route, Abstract abstractObject) {
        ObjectContainer db = Db4o.openFile(route + "/abstracs.db");

        try {
            ObjectSet result = db.queryByExample(abstractObject);
            if (!result.hasNext()) {
                db.store(abstractObject);
                
            }

        } catch (Exception e) {
            System.out.println(utilidades.idioma.get(17));
        } finally {
            db.close();
        }

    }

    public List<Abstract> getAll(String route) {
        List<Abstract> events = new ArrayList<>();
        ObjectContainer db = Db4o.openFile(route + "/abstracs.db");
        Abstract biologicalEvent = new Abstract();
        try {
            ObjectSet result = db.queryByExample(biologicalEvent);
            for (Object object : result) {
                events.add((Abstract) object);
            }
            return events;

        } catch (Exception e) {
            return new ArrayList<>();
        } finally {
            db.close();
        }
    }

    private List<String> getPubMedIds(String route) {
        List<String> pubMedIds = new ArrayList<>();

        ObjectContainer db = Db4o.openFile(route + "/pubmedIDs.db");
        PMIDS pm = new PMIDS();
        try {

            ObjectSet result = db.queryByExample(pm);
            PMIDS resultQuery = (PMIDS) result.get(0);
            pubMedIds.addAll(resultQuery.pubmed_ids);

        } catch (Exception e) {
        } finally {
            db.close();
        }

        return pubMedIds;
    }

    public void deleteFile(String route) {
        try {
            File ficherod = new File(route + "/abstracs.db");
            if (ficherod.delete()) {
                //System.out.println("Eliminado");
            } else {
                //System.out.println("no se elimino");
            }
        } catch (Exception e) {
            //System.out.println("error no se borra nada");
        }
    }

    public void writeFile(String route) {
              
        List<Abstract> abstracsCollection = getAll(route);
        Paginator paginator = new Paginator(abstracsCollection, 200);
        
        while (paginator.hasNext()) {
            new utilidades().carga(); 
            paginator.getElementsPage().forEach(object -> {
                writeAbstractText((Abstract) object, route, paginator.currentPage());
                writeObjects((Abstract) object, route, paginator.currentPage());
                writeRelations((Abstract) object, route, paginator.currentPage());
       
            });
            
        }
        

    }
    
    private void writeAbstractText(Abstract object, String route, int page){
        new escribirBC(object.getPubMedId() + " | " + object.getTitle()+" "+object.getText() , route+"/abstracts/abstracts_"+page+".txt");
    }
    
    private void writeObjects(Abstract object, String route, int page){
        object.getObjects().forEach( o -> {
            new escribirBC(object.getPubMedId() + " | " + o.getAccession()+ " | "+ o.getName() +" | "+ o.getLocations().get(0).getOffset()+" | "+o.getLocations().get(0).getLength()+ " | " + o.getType()+ " | " + o.getBiotype() +" | " +o.getText(), route+"/abstracts/objects_"+page+".txt");
        });
    }
    
    private void writeRelations(Abstract object, String route, int page){
        
        object.getEvents().forEach( event -> {
            new escribirBC(object.getPubMedId() + " | " + event.getRelationType()+ " | "+ event.getRole1() +" | "+ event.getRole2(), route+"/abstracts/relations_"+page+".txt");
        });
    }

   
    public String getFount() {
        return fount;
    }

    public void setFount(String fount) {
        this.fount = fount;
    }

    public String getPubMedId() {
        return pubMedId;
    }

    public void setPubMedId(String pubMedId) {
        this.pubMedId = pubMedId;
    }

    public List<Event> getEvents() {
        return events;
    }

    public void setEvents(List<Event> events) {
        this.events = events;
    }

    public List<ObjectDetail> getObjects() {
        return objects;
    }

    public void setObjects(List<ObjectDetail> objects) {
        this.objects = objects;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
    
    public void addEvent(Event abstractEvent){
        this.events.add(abstractEvent);
    }
    
    public void addObject(ObjectDetail abstractObject){
        this.objects.add(abstractObject);
    }
        
    private void limpiarPantalla() {
        System.out.print("\033[H\033[2J");
        System.out.flush();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
    
    private void createDirectory(String nombre) {
        File f = new File(nombre);
        try {
            deleteDirectory(f);
        } catch (Exception e) {

        }
        if (f.delete()) {
            // System.out.println("El directorio   ha sido borrado correctamente");
        } else {
            //System.out.println("El directorio  no se ha podido borrar");
        }

        File file = new File(nombre);
        file.mkdir();

    }

    private void deleteDirectory(File directorio) {
        File[] ficheros = directorio.listFiles();
        for (int i = 0; i < ficheros.length; i++) {
            if (ficheros[i].isDirectory()) {
                deleteDirectory(ficheros[i]);
            }
            ficheros[i].delete();
        }
    }
    
    
}
