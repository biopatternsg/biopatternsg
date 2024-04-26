/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package estructura;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 *
 * @author yacson
 */
public class Paginator {

    private int page;
    private int pageSize;
    private int totalPages;
    private List<?> list;

    public Paginator(List<?> list, int pageSize) {
        this.page = 0;
        this.pageSize = pageSize;
        this.totalPages = calculateTotalPages(list);
        this.list = list;

    }
    
    public boolean hasNext(){
        if(page > totalPages){
            return false;
        }
        
        page++;
        
        return true;
    }
    
    public List<?> getElementsPage(){
        if (page == 1) {
            return getFirstPage();
        }

        if (page == totalPages) {
            return getLastPage();
        }

        if (page > totalPages) {
            return new ArrayList<>();
        }

        return getPage();
        
    }
    
    private int calculateTotalPages(List<?> list){
        int pages = list.size() / pageSize;
        
        if((list.size() % pageSize) > 0){
            pages++;
        }
        
        return pages;
    }

   
    private List<?> getPage() {

        var currentPage = list.subList(pageSize * page, pageSize * page + 1);
        return currentPage;
    }

    private List<?> getFirstPage() {
        if (pageSize >= list.size()) {
            return list;
        }
        
        return list.subList(0, pageSize);

    }

    private List<?> getLastPage() {
        var currentPage = list.subList(pageSize * (page-1), list.size() - 1);
        return currentPage;

    }

    public int currentPage() {
        return page;
    }

    public int getTotalPages() {
        return this.totalPages;
    }
    
    

}
