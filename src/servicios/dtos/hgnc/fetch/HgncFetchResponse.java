/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servicios.dtos.hgnc.fetch;

/**
 *
 * @author yacson
 */
public class HgncFetchResponse {
    
    private Object responseHeader;
    
    private Response response;

    public Object getResponseHeader() {
        return responseHeader;
    }

    public void setResponseHeader(Object responseHeader) {
        this.responseHeader = responseHeader;
    }

    public Response getResponse() {
        return response;
    }

    public void setResponse(Response response) {
        this.response = response;
    }
    
    
    
}
