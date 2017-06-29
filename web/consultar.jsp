<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entity.Contato" %>
<%@page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    
    <%@include file="head.jsp" %>

    <body>

        <!-- Top menu -->
        <%@include file="nav.jsp" %>

        <!-- Top content -->
        <div class="top-content">
            <div class="container">

                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 r-form-1-box ">
                        <div class="r-form-1-top">
                            <div class="r-form-1-top-left">
                                <h3>Contatos</h3>
                            </div>
                            <div class="r-form-1-top-right">
                                <i class="fa fa-table" aria-hidden="true"></i>
                            </div>
                        </div>

                        <div class="r-form-1-bottom" style="background: none !important;">

                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Nome</th>
                                            <th>Telefone</th>
                                            <th>E-mail</th>
                                        </tr>
                                    </thead>

                                    <tbody id="contatos">
                                        <%
                                            List<Contato> contatos = (ArrayList<Contato>) request.getAttribute("contatos");
                                            for (Iterator itContato = contatos.iterator(); itContato.hasNext();) {
                                                Contato contato = (Contato) itContato.next();
                                        %>
                                        <tr>
                                            <td class="text-left"><%=contato.getId()%></td>
                                            <td class="text-left"><%=contato.getNome()%></td>
                                            <td class="text-left"><%=contato.getTelefone()%></td>
                                            <td class="text-left"><%=contato.getEmail()%></td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="row">

                </div>

            </div>
        </div>
    </body>
</html>