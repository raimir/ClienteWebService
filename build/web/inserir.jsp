<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entity.Contato" %>
<%@page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <%@include file="head.jsp" %>

    <body>

        <!-- Top menu -->
        <%@include file="nav.jsp" %>

        <!-- Top content -->
        ${jsonTxt}
        <div class="top-content">
            <div class="container">

                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 r-form-1-box wow fadeInUp">
                        <div class="r-form-1-top">
                            <div class="r-form-1-top-left">
                                <h3>Inserir Contato</h3>
                            </div>
                            <div class="r-form-1-top-right">
                                <i class="fa fa-pencil"></i>
                            </div>
                        </div>

                        <div class="r-form-1-bottom">
                            <form role="form" action="${pageContext.request.contextPath}/contatos/inserir" method="post">

                            <div class="form-body">
                                <div class="form-group form-md-line-input">
                                    <div class="col-md-12">
                                        <input type="text" name="nome" placeholder="Nome" class="form-control">
                                        <div class="form-control-focus"></div>
                                    </div>
                                </div>

                                <div class="form-group form-md-line-input">
                                    <div class="col-md-12">
                                        <input type="text" name="telefone" placeholder="Telefone" class="form-control">
                                        <div class="form-control-focus"></div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <input type="text" name="email" placeholder="Email" class="form-control">
                                        <div class="form-control-focus"></div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-actions">
                                <div class="row">
                                    <div class="col-md-12">
                                        <button type="submit" class="btn">Inserir</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>