/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import javax.faces.bean.ManagedBean;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;



public class CinemaMB {
  public String getFilmesEmCartaz() {
//    Client client = ClientBuilder.newClient();
//    WebTarget target = client.target("http://localhost:8000/webservice/alunos");
//    WebTarget resourceWebTarget;
//    resourceWebTarget = target.path("resources/helloworld");
//    Invocation.Builder invocationBuilder;
//    invocationBuilder = resourceWebTarget.request(
//      MediaType.TEXT_PLAIN_TYPE );
//    Response response = invocationBuilder.get();
//    System.out.println(response.getStatus());
//    System.out.println(response.readEntity(String.class));
//    return response.readEntity(String.class).toString();
return "a";
  }
}