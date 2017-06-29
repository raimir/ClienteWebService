<%-- 
    Document   : ajax
    Created on : 28/06/2017, 12:10:02
    Author     : Jonatan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>   
        <script>
            $(document).ready(function () {
                $("#clickme").click(function () {
                    strurl = "http://127.0.0.1:8000/webservice/contatos/" + $("#idcontato").val();

                    $.ajax({
                        url: strurl,
                        success: function (contato) {
                            if (contato != null) {
                                var nome = contato.nome;
                                var telefone = contato.telefone;
                                var email = contato.email;

                                valor = "<p>" + nome + "</p>";
                                valor += "<p>" + telefone + "</p>";
                                valor += "<p>" + email + "</p>";
                                $(valor).appendTo("#div2");
//                            $("#div2").html(valor);

                            } else {
                                document.getElementById("div1").innerHTML = "Nullo";
                            }
                        }});
                });

                //carregando tabela
                $.ajax({
                    url: "http://127.0.0.1:8000/webservice/contatos",
                    success: function (contatos) {
                        if (contatos != null && contatos.length > 0) {

                            for (var i in contatos) {

                                var cols = "";

                                for (var key in contatos[i]) {
                                    cols += "<td class=\"text-left\">";
                                    cols += contatos[i][key];
                                    cols += "</td>"
                                }
                                $("#contatosTable").append("<tr>" + cols + "</tr>");
                            }
                        } else {
                            document.getElementById("div1").innerHTML = "Nullo";
                        }
                    }});
            });
        </script>
    </head>
    <body>
        <nav class="navbar navbar-inverse" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">Regy - Bootstrap Registration Landing Page</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="top-navbar-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="/">Inicío</a></li>
                        <li><a href="/alunos/inserir">Inserir</a></li>
                        <li><a href="/alunos/consultar">Consultar</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="row">
            <div class="col-sm-6">
                <div class="input-group">
                    <input id="idcontato" type="number" class="form-control" placeholder="Buscar contato">
                    <span class="input-group-btn">
                        <button id="clickme" class="btn btn-default" type="button">Go!</button>
                    </span>
                </div>
            </div>
        </div>


        <div id="div1"><h2>Let jQuery AJAX Change This Text</h2></div>

        <div id="div2"></div>
        <div class="row">
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Nome</th>
                            <th>Sobrenome</th>
                            <th>E-mail</th>
                        </tr>
                    </thead>

                    <tbody id="contatosTable"></tbody>
                </table>
            </div>    
        </div>

        <div class="row">
            <form class="form-horizontal">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Inserir</button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
