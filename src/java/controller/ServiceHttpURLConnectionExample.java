/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author Jonatan
 */
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;

public class ServiceHttpURLConnectionExample {

    private final String USER_AGENT = "Mozilla/5.0";
    private static final int HTTP_COD_SUCESSO = 200;
    public static final String GET = "GET";
    public static final String POST = "POST";
    private String url;
    private String urlParameters;

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUrlParameters() {
        return urlParameters;
    }

    public void setUrlParameters(String urlParameters) {
        this.urlParameters = urlParameters;
    }
    
    public void setUrlParameters(Map<String,String> urlParameters) {
        String params= "";
        for (Map.Entry<String, String> entry : urlParameters.entrySet())
        {
             params += entry.getKey() + "=" + entry.getValue() + "&";
        }
        if( !params.equals("") ) {
            params = params.substring(0, params.length()-1);
        }
        this.urlParameters = params;
    }
    
    // HTTP GET request
    public String sendGet() throws IOException {

        URL obj;
        if (url != null) {
            obj = new URL(url);
        }
        else {
            url = "http://127.0.0.1:8000/webservice/contatos";
            obj = new URL(url);
        }
        
        HttpURLConnection con = (HttpURLConnection) obj.openConnection();

        // optional default is GET
        con.setRequestMethod(GET);

        //add request header
        con.setRequestProperty("User-Agent", USER_AGENT);
        
        int responseCode = con.getResponseCode();
        if (con.getResponseCode() != HTTP_COD_SUCESSO) {
            throw new RuntimeException("HTTP error code : "+ con.getResponseCode());
        }
        
        BufferedReader in = new BufferedReader(
            new InputStreamReader(con.getInputStream())
        );
        String inputLine;
        StringBuffer response = new StringBuffer();

        while ((inputLine = in.readLine()) != null) {
            response.append(inputLine);
        }
        in.close();

        //print result
        return response.toString();

    }

    // HTTP POST request
    public String sendPost() throws IOException {

        URL obj;
        if (url != null) {
            obj = new URL(url);
        }
        else {
            url = "http://127.0.0.1:8000/webservice/contatos/inserir";
            obj = new URL(url);
        }
        
        //HttpsURLConnection con = (HttpsURLConnection) obj.openConnection();
        HttpURLConnection con = (HttpURLConnection) obj.openConnection();

        //add reuqest header
        con.setRequestMethod(POST);
        con.setRequestProperty("User-Agent", USER_AGENT);
        con.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
//        con.setRequestProperty("Accept-Language", "en-US,en;q=0.5");
      
//        urlParameters = "nome=jonatan&telefone=1234&email=abc@gmail.com";

        // Send post request
        con.setDoOutput(true);
        DataOutputStream wr = new DataOutputStream(con.getOutputStream());
        wr.writeBytes(urlParameters);
        wr.flush();
        wr.close();

        int responseCode = con.getResponseCode();
        if (con.getResponseCode() != HTTP_COD_SUCESSO) {
            throw new RuntimeException("HTTP error code : "+ con.getResponseCode());
        }

        BufferedReader in = new BufferedReader(
                new InputStreamReader(con.getInputStream()));
        String inputLine;
        StringBuffer response = new StringBuffer();

        while ((inputLine = in.readLine()) != null) {
            response.append(inputLine);
        }
        in.close();

        //print result
        System.out.println(response.toString());
        return response.toString();
    }
}
