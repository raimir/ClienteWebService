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
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class ContatoController extends HttpServlet {
    private static final int HTTP_COD_SUCESSO = 200;
    private final String USER_AGENT = "Mozilla/5.0";

//    @Override
//    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//            ServiceHttpURLConnectionExample http = new ServiceHttpURLConnectionExample();
//        response.setContentType("text/html;charset=UTF-8");
//        
//        RequestDispatcher rd = request.getRequestDispatcher("/inserir.jsp");
//        rd.forward(request,response);
//    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.sendRedirect("inserir.jsp");
        RequestDispatcher rd = request.getRequestDispatcher("/inserir.jsp");
        rd.forward(request,response);
    }
        
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        
//        PrintWriter out = response.getWriter();
//        String nome = request.getParameter("nome");
//        String telefone = request.getParameter("telefone");
//        String email = request.getParameter("email");
//        
//        out.println("nome: " + nome);
//        out.println("telefone: " + telefone);
//        out.println("email: " + email);
//        response.setContentType("text/html;charset=UTF-8");
//        
//        ServiceHttpURLConnectionExample serviceConnection = new ServiceHttpURLConnectionExample();
//        
//        String jsonTxt = serviceConnection.sendPost();
//        request.setAttribute("jsonTxt", jsonTxt);
//        RequestDispatcher rd = request.getRequestDispatcher("/inserir.jsp");
//        rd.forward(request,response);
//    }
}
