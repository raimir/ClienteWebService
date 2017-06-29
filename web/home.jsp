<%-- 
    Document   : homepage
    Created on : 28/06/2017, 15:57:10
    Author     : Jonatan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cliente Rest Service</title>

        <!-- CSS -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:400,700" />
        <link rel="stylesheet" href="regy/assets/bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" href="regy/assets/font-awesome/css/font-awesome.min.css" />
        <link rel="stylesheet" href="regy/assets/css/animate.css" />
        <link rel="stylesheet" href="regy/assets/css/style.css" />
        <link rel="stylesheet" href="regy/assets/css/media-queries.css" />

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="regy/assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="regy/assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="regy/assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="regy/assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="regy/assets/ico/apple-touch-icon-57-precomposed.png">

    </head>

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
                                <h3>Sign up now</h3>
                                <p>Fill in the form below to get instant access:</p>
                            </div>
                            <div class="r-form-1-top-right">
                                <i class="fa fa-pencil"></i>
                            </div>
                        </div>
                        <div class="r-form-1-bottom">
                            <form role="form" action="" method="post">
                                <div class="form-group">
                                    <!--<label class="sr-only" for="r-form-1-first-name">First name</label>-->
                                    <!--<input type="text" name="r-form-1-first-name" placeholder="First name..." class="r-form-1-first-name form-control" id="r-form-1-first-name">-->
                                </div>
                                <div class="form-group">
                                    <!--<label class="sr-only" for="r-form-1-last-name">Last name</label>-->
                                    <!--<input type="text" name="r-form-1-last-name" placeholder="Last name..." class="r-form-1-last-name form-control" id="r-form-1-last-name">-->
                                </div>
                                <div class="form-group">
                                    <!--<label class="sr-only" for="r-form-1-email">Email</label>-->
                                    <!--<input type="text" name="r-form-1-email" placeholder="Email..." class="r-form-1-email form-control" id="r-form-1-email">-->
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="r-form-1-about-yourself">About yourself</label>
                                    <!--<textarea name="r-form-1-about-yourself" placeholder="About yourself..."--> 
                                              <!--class="r-form-1-about-yourself form-control" id="r-form-1-about-yourself"></textarea>-->
                                </div>
                                <!--<button type="submit" class="btn">Sign me up!</button>-->
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <!-- Javascript -->
        <script src="regy/assets/js/jquery-1.11.1.min.js"></script>
        <script src="regy/assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="regy/assets/js/jquery.backstretch.min.js"></script>
        <script src="regy/assets/js/wow.min.js"></script>
        <script src="regy/assets/js/retina-1.1.0.min.js"></script>
        <script src="regy/assets/js/scripts.js"></script>

        <!--[if lt IE 10]>
            <script src="regy/assets/js/placeholder.js"></script>
        <![endif]-->
    </body>
</html>