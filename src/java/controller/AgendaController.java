/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Contato;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author Jonatan
 */
@WebServlet(name = "agenda-controller", urlPatterns = {"/contatos"})
public class AgendaController extends HttpServlet {
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        ServiceHttpURLConnectionExample serviceConnection = new ServiceHttpURLConnectionExample();
        
        String jsonTxt = serviceConnection.sendGet();
        List<Contato> arrayContatos = new ArrayList<Contato>();
        JSONArray json = new JSONArray(jsonTxt);
        for (Iterator itArray = json.iterator(); itArray.hasNext();) {
            JSONObject jsonObj = (JSONObject) itArray.next();
            Contato contato = new Contato();
            contato.setId(jsonObj.getInt("id"));
            contato.setNome(jsonObj.getString("nome"));
            contato.setTelefone(jsonObj.getString("telefone"));
            contato.setEmail(jsonObj.getString("email"));
            arrayContatos.add(contato);
        }
        
        request.setAttribute("jsonTxt", jsonTxt);
        request.setAttribute("contatos", arrayContatos);
        RequestDispatcher rd = request.getRequestDispatcher("/consultar.jsp");
        rd.forward(request,response);
    }
}
