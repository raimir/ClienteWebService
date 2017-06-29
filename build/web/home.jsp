<%-- 
    Document   : homepage
    Created on : 28/06/2017, 15:57:10
    Author     : Jonatan
--%>

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
                    <div class="col-sm-8 col-sm-offset-2 text">
                        <h1 class="wow fadeInLeftBig"></h1>
                        <div class="description wow fadeInLeftBig">
                            <p></p>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 r-form-1-box wow fadeInUp">
                        <div class="r-form-1-top">
                            <div class="r-form-1-top-left">
                                <h3>Bem Vindo!</h3>
                            </div>
                            <div class="r-form-1-top-right">
                                <i class="fa fa-child" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>