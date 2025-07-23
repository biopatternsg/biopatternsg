/* 
 * bioPatternsg
 * BioPatternsg is a system that allows the integration and analysis of information related to the modeling of Gene Regulatory Networks (GRN).
 * Copyright (C) 2020
 * Jose Lopez (josesmooth@gmail.com), Jacinto Dávila (jacinto.davila@gmail.com), Yacson Ramirez (yacson.ramirez@gmail.com).
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>
 */
package pipeline;

import com.db4o.Db4o;
import com.db4o.ObjectContainer;
import com.db4o.ObjectSet;
import com.db4o.collections.ActivatableArrayList;
import configuracion.combinacion;
import configuracion.configuracion;
import configuracion.utilidades;
import estructura.factorTranscripcion;
import estructura.objetos_Experto;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 *
 * @author yacson
 */
public class combinaciones {

    private int cont = 0;
    private String carga = "";
    boolean error = true;

    public void generar_combinaciones(boolean criterio, configuracion config, String ruta, boolean nombreCorto) {

        while (error) {
            utilidades.texto_carga = "";
            utilidades.momento = "";
            new utilidades().limpiarPantalla();
            utilidades.texto_etapa = "\n" + utilidades.idioma.get(81);
            new utilidades().carga();
            //System.out.print("\n"+utilidades.idioma.get(81));
            try {
                error = false;
                //Si ya existe un archivo mineria/combinaciones.db es eliminado y comienza el proceso de nuevo
                borrar_archivo(ruta);

                // Lista en la que se guardaran todas las combinaciones generadas
                //List<String> combinacion = Collections.synchronizedList(new ArrayList<>());
                Set combinacion = new HashSet();

                objetos_Experto HE = new objetos_Experto();

                // se cargan la informacion de homologos y objetos del experto y se guardan temporalmente en una lista
                ObjectContainer dbhe = Db4o.openFile(ruta + "/homologousObjects.db");
                ObjectSet resulthe = dbhe.queryByExample(HE);
                ArrayList<objetos_Experto> homologos_experto = new ArrayList<>();
                homologos_experto.addAll(resulthe);
                dbhe.close();
                //---------------------------------------------------------------

                //se generan todas las combinaciones entre objetos del experto y homologos entre si
                combinacion.addAll(Objs_homologos_Expertos(homologos_experto, nombreCorto));
                //el siguiente juego de instrucciones genera combinaciones de los objetos encontrados en las diferentes Iteraciones
                factorTranscripcion FT = new factorTranscripcion();
                ObjectContainer db = Db4o.openFile(ruta + "/TF.db");
                ArrayList<factorTranscripcion> LFT = new ArrayList<>();
                try {
                    ObjectSet result = db.queryByExample(FT);
                    LFT.addAll(result);
                } catch (Exception e) {

                } finally {
                    db.close();
                }

                LFT.forEach((ft) -> {

                    new utilidades().carga();
                    
                    factorTranscripcion factorT = (factorTranscripcion) ft;

                    // combina un objeto con los ligandos encontrados a partir de este
                    combinacion.addAll(factor_ligando(factorT, nombreCorto));
                    //combina un objeto con los nuevos objetos encontrados a partir de este
                    combinacion.addAll(factor_nuevoObjeto(factorT, nombreCorto));
                    //combina un objeto minado en las iteraciones con los objetos del experto y homologos
                    //si criterio = false; solo se ejecutara en la iteracion 0 objetos encontrados en tfbind
                    //si criterio = true; se ejecutara en todas las iteraciones
                    if (factorT.getN_Iteracion() == 0 || criterio) {
                        combinacion.addAll(factor_objetos_H_E(factorT, homologos_experto, nombreCorto));
                    }

                });

                guardar_combinaciones(new ArrayList<>(combinacion), ruta);
            } catch (Exception e) {
                error = true;
                System.out.println("Error al generar combinaciones");
            }
        }

        //generadas todas las combinaciones de guardan en mineria/combinaciones.db
        //se guarda el checklist que indica que el proceso de generar combinaciones a terminado
        config.setCombinaciones(true);
        config.guardar(ruta);
        System.out.println("ok");

    }

    //Busca todas las permutaciones en un listado de objetos del experto mas homologos
    private List<String> Objs_homologos_Expertos(ArrayList<objetos_Experto> objetos, boolean nombreCorto) {

        ArrayList<String> nombres = new ActivatableArrayList<>();

        List<List<String>> listaRes = new ArrayList<>();

        //se carga una lista que contine los ID de cada objeto
        objetos.parallelStream().forEach((t) -> {
            objetos_Experto obj = (objetos_Experto) t;
            nombres.add(obj.getID());
        });

        //las siguientes instrucciones encuentra las permutaciones en combinaciones de pares en la lista de ID cargada antes
        if (nombres.size() > 1) {
            IteradorCombinacion it = new IteradorCombinacion(nombres, 2);
            Iterator s = it.iterator();

            while (s.hasNext()) {
                try {

                    List<String> listares = (List<String>) s.next();
                    listaRes.add(listares);

                } catch (Exception e) {
                }

            }
        }

        Map<String, objetos_Experto> mapaDeObjetos = objetos.stream()
                .collect(Collectors.toMap(
                        objetos_Experto::getID, // Función para obtener la clave
                        Function.identity(), // Función para obtener el valor (el objeto mismo)
                        (existente, nuevo) -> existente // En caso de IDs duplicados, nos quedamos con el primero
                ));

        return generarCombinacionesDesdePares(listaRes, mapaDeObjetos, nombreCorto);

    }

    private List<String> generarCombinacionesDesdePares(
            List<List<String>> listaRes,
            Map<String, objetos_Experto> mapaDeObjetos, // Recibimos el mapa ya creado
            boolean nombreCorto) {

        Set<String> combinacionesUnicas = listaRes.parallelStream() // 1. Stream paralelo sobre los pares de IDs
                .flatMap(parDeIDs -> { // 2. Por cada par de IDs, generamos un stream de combinaciones
                     new utilidades().carga();
                    // 3. BÚSQUEDA INSTANTÁNEA: Usamos el mapa. Mucho más rápido.
                    objetos_Experto obj1 = mapaDeObjetos.get(parDeIDs.get(0));
                    objetos_Experto obj2 = mapaDeObjetos.get(parDeIDs.get(1));

                    // 4. SEGURIDAD: Si algún objeto no se encontró, retornamos un stream vacío.
                    if (obj1 == null || obj2 == null) {
                        return Stream.empty();
                    }

                    // 5. Obtenemos las listas de nombres una sola vez
                    List<String> nombres1 = obj1.listaNombres();
                    List<String> nombres2 = obj2.listaNombres();

                    // 6. GENERACIÓN DE COMBINACIONES: Creamos el stream de combinaciones para este par de objetos
                    return nombres1.stream()
                            .flatMap(nombre1 -> nombres2.stream()
                            .filter(nombre2 -> {
                                // Agrupamos todas las condiciones aquí para mayor claridad
                                if (nombre1 == null || nombre2 == null) {
                                    return false;
                                }
                                if (nombreCorto && (nombre1.trim().split("\\s+").length > 1 || nombre2.trim().split("\\s+").length > 1)) {
                                    return false;
                                }
                                return true;

                            })
                            // 7. CANONIZACIÓN: Usamos el truco de compareTo para asegurar unicidad y orden
                            .filter(nombre2 -> nombre1.compareTo(nombre2) < 0)
                            .map(nombre2 -> "[" + nombre1 + "]+AND+[" + nombre2 + "]")
                            );
                })
                .collect(Collectors.toSet()); // 8. Recolectamos todo en un Set de forma segura

        return new ArrayList<>(combinacionesUnicas);
    }

    //consulta un objeto por su ID en la base de datos y retona todo la imformacion de este
    //solo para homologos y objetos del experto
    private objetos_Experto objExp(String obj, String ruta) {
        objetos_Experto objExp = new objetos_Experto();
        objExp.setID(obj);

        ObjectContainer db = Db4o.openFile(ruta + "/homologousObjects.db");
        try {
            ObjectSet result = db.queryByExample(objExp);
            objetos_Experto objs = (objetos_Experto) result.next();
            return objs;

        } catch (Exception e) {
        } finally {
            db.close();
        }
        return objExp;
    }

    //genera combinaciones entre un objeto minado y ligandos encontrados a partir de este
    private List<String> factor_ligando(factorTranscripcion FT, boolean nombreCorto) {

        Set<String> combinacionesUnicas = FT.listaNombres().parallelStream() // 1. Stream paralelo principal
                .filter(Objects::nonNull)
                .filter(nombre1 -> !nombreCorto || nombre1.trim().split("\\s+").length == 1)
                .flatMap(nombre1
                        -> // 2. Por cada nombre1, generar stream de sus combinaciones
                        FT.getComplejoProteinico().stream()
                        .flatMap(comp -> comp.getLigandos().stream()) // 3. Aplanar para obtener un stream de 'ligandos'
                        // 4. EL TRUCO: Transforma un 'ligando' en un stream de sus dos propiedades (ID y Nombre)
                        .flatMap(ligando -> Stream.of(ligando.getId(), ligando.getNombre()))
                        // En este punto, el stream ya no contiene objetos 'ligando',
                        // sino Strings que son o un ID o un Nombre. Los llamaremos 'nombre2'.

                        .filter(Objects::nonNull) // 5. Aplicar filtros al 'nombre2'
                        .filter(nombre2 -> !nombreCorto || nombre2.trim().split("\\s+").length == 1)
                        .filter(nombre2 -> nombre1.compareTo(nombre2) < 0) // 6. Garantizar unicidad y orden
                        .map(nombre2 -> "[" + nombre1 + "]+AND+[" + nombre2 + "]") // 7. Mapear a la combinación final
                )
                .collect(Collectors.toSet()); // 8. Recolectar en un Set

        return new ArrayList<>(combinacionesUnicas);
    }
    //genera combinaciones entre un objeto minado y nuevos ojetos encontrados a partir de este

    private List<String> pruebaInsert(factorTranscripcion FT, ArrayList<objetos_Experto> listaHE, boolean nombreCorto) {

        List<String> nombresFT = FT.listaNombres();

        Stream<String> combinacionesStream = listaHE.parallelStream()
                .flatMap(objExp -> {
                    List<String> nombresExperto = objExp.listaNombres();

                    return nombresFT.stream()
                            .filter(Objects::nonNull)
                            .filter(nombre1 -> !nombreCorto || nombre1.trim().split("\\s+").length == 1)
                            .flatMap(nombre1
                                    -> nombresExperto.stream()
                                    .filter(Objects::nonNull)
                                    .filter(nombre2 -> !nombreCorto || nombre2.trim().split("\\s+").length == 1)
                                    .filter(nombre2 -> nombre1.compareTo(nombre2) < 0)
                                    .map(nombre2 -> "[" + nombre1 + "]+AND+[" + nombre2 + "]")
                            );
                });

        Set<String> combinacionesUnicas = combinacionesStream.collect(Collectors.toSet());

        return new ArrayList<>(combinacionesUnicas);

    }

    private List<String> factor_nuevoObjeto(factorTranscripcion FT, boolean nombreCorto) {

        Set<String> combinacionesUnicas = FT.listaNombres().parallelStream() // 1. Paralelizar solo el stream exterior
                .filter(Objects::nonNull) // 2. Validar que nombre1 no sea null
                .filter(nombre1 -> !nombreCorto || nombre1.trim().split("\\s+").length == 1) // 3. Condición de nombreCorto
                .flatMap(nombre1
                        -> // 4. Aplanar: Por cada nombre1, generar un stream de combinaciones
                        FT.getComplejoProteinico().stream() // Stream de complejos proteínicos (secuencial)
                        .flatMap(comp -> comp.listaNombres().stream() // Stream de nombres del complejo (secuencial)
                        .filter(Objects::nonNull) // 5. Validar que nombre2 no sea null
                        .filter(nombre2 -> !nombreCorto || nombre2.trim().split("\\s+").length == 1) // 6. Condición de nombreCorto
                        // 7. Optimización: Evita duplicados (A,B vs B,A) y auto-combinaciones (A,A)
                        .filter(nombre2 -> nombre1.compareTo(nombre2) < 0)
                        // 8. Mapear a la combinación canónica final
                        .map(nombre2 -> "[" + nombre1 + "]+AND+[" + nombre2 + "]")
                        )
                )
                .collect(Collectors.toSet()); // 9. Recolectar en un Set para garantizar unicidad

        return new ArrayList<>(combinacionesUnicas);

    }

    //genera combinaciones entre un objeto minado y los objetos del experto y homologos
    private List<String> factor_objetos_H_E(factorTranscripcion FT, ArrayList<objetos_Experto> listaHE, boolean nombreCorto) {

        List<String> nombresFT = FT.listaNombres();

        Stream<String> combinacionesStream = listaHE.parallelStream()
                .flatMap(objExp -> {
                    List<String> nombresExperto = objExp.listaNombres();

                    return nombresFT.stream()
                            .filter(Objects::nonNull)
                            .filter(nombre1 -> !nombreCorto || nombre1.trim().split("\\s+").length == 1)
                            .flatMap(nombre1
                                    -> nombresExperto.stream()
                                    .filter(Objects::nonNull)
                                    .filter(nombre2 -> !nombreCorto || nombre2.trim().split("\\s+").length == 1)
                                    .filter(nombre2 -> nombre1.compareTo(nombre2) < 0)
                                    .map(nombre2 -> "[" + nombre1 + "]+AND+[" + nombre2 + "]")
                            );
                });

        Set<String> combinacionesUnicas = combinacionesStream.collect(Collectors.toSet());

        return new ArrayList<>(combinacionesUnicas);
    }

    //iserta una combinacion de palabras a la lista de combinaciones
    public void insertar_combinacion(List<String> combinaciones, String palabra1, String palabra2, boolean nombreCorto) {

        try {

            //System.out.println(palabra1+" "+palabra2);
            if (!nombreCorto || (palabra1.split(" ").length == 1 && palabra2.split(" ").length == 1)) {
                //if (!combinaciones.contains("[" + palabra1 + "]+AND+[" + palabra2 + "]") && !combinaciones.contains("[" + palabra2 + "]+AND+[" + palabra1 + "]")) {
                combinaciones.add("[" + palabra1 + "]+AND+[" + palabra2 + "]");
                new utilidades().carga();
                //cont++;1
                //if (cont % 1000 == 0) {1

                // }
                //}
            }
        } catch (Exception e) {
            error = true;
            //System.out.println("Error aqui " + palabra1 + "+" + palabra2);
        }

    }

    public void guardar_combinaciones(ArrayList<String> combinacion, String ruta) {
        ObjectContainer db = Db4o.openFile(ruta + "/combinations.db");
        combinacion comb = new combinacion();
        comb.combinaciones = combinacion;

        try {
            db.store(comb);

        } catch (Exception e) {
            System.out.println("Error al guardar combinaciones.db...");
            error = true;
        } finally {
            db.close();
        }

    }

    public void borrar_archivo(String ruta) {
        try {
            System.out.println(ruta);
            File ficherod = new File(ruta + "/combinations.db");
            if (ficherod.delete()) {
                //System.out.println("Eliminado");
            } else {
                //System.out.println("no se elimino");
            }
        } catch (Exception e) {
            //System.out.println("error no se borra nada");
        }
    }

}
