<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : productosinfo
    Created on : Dec 2, 2016, 8:31:27 PM
    Author     : oscar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <b>Bienvenido, ${sessionScope.welcome.username}</b>
        
        <h1>Productos Disponibles</h1>
        
        <table border="1">
            <th>ID</th>
            <th>Código</th>
            <th>Nombre Película</th>
            <th>Descripción</th>
            <th>Precio</th>
            <th>Foto</th>
            <th>Dispónible en</th>
            <th>Anunciante</th>
            <th>Teléfono Anunciante</th>
            <c:forEach items="${allProductos}" var="p">
                <tr>
                    <td>${p.productid}</td>
                    <td>${p.productcode}</td>
                    <td>${p.productname}</td>
                    <td>${p.productdescription}</td>
                    <td>${p.price}</td>
                    <td>${p.picture}</td>
                    <td>${p.availablecityproduct}</td>
                    <td>${p.advertisername}</td>
                    <td>${p.advertiserphone}</td>
                </tr>
            </c:forEach>
        </table>
        
        
    </body>
</html>

-->

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>BlockBuster - Compra y Venta de Películas</title>


    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/shop-item.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Bienvenido ${sessionScope.welcome.username}</a>
            </div>
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-md-3">
                <p class="lead">Blockbuster</p>
                <div class="list-group">
                    <a href="#" class="list-group-item">Acción</a>
                    <a href="#" class="list-group-item">Ciencia Ficción</a>
                    <a href="#" class="list-group-item">Comedia</a>
                    <a href="#" class="list-group-item active">Drama</a>
                </div>
            </div>

            <div class="col-md-9">
                <c:forEach items="${allProductos}" var="p">
                <div class="thumbnail">
                    <img class="img-responsive" src="http://placehold.it/800x300" alt="">
                    <div class="caption-full">
                        <h4 class="pull-right">$ ${p.price}</h4>
                        <h4><a href="#">${p.productname} (${p.productcode})</a>
                        </h4>
                        <p>${p.productdescription}</p>
                        <p>Disponible en: ${p.availablecityproduct}</p>
                        <p>Anunciante: ${p.advertisername}</p>
                        <p>Telefono Aunciante: ${p.advertiserphone}</p>
                    </div>
                    <div class="ratings">
                        <p class="pull-right">3 comentarios</p>
                        <p>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star-empty"></span>
                            4.0 estrellas
                        </p>
                    </div>
                </div>
            </c:forEach>
                <div class="well">

                    <div class="text-right">
                        <a class="btn btn-success">Deja un comentario</a>
                    </div>

                    <hr>

                    <div class="row">
                        <div class="col-md-12">
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star-empty"></span>
                            Anónimo
                            <span class="pull-right">Hace 10 días</span>
                            <p>Me encantó la película, y estaba en perfecto estado</p>
                        </div>
                    </div>

                    <hr>

                    <div class="row">
                        <div class="col-md-12">
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star-empty"></span>
                            Anónimo
                            <span class="pull-right">Hace 12 días</span>
                            <p>I've alredy ordered another one!</p>
                        </div>
                    </div>

                    <hr>

                    <div class="row">
                        <div class="col-md-12">
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star-empty"></span>
                            Anónimo
                            <span class="pull-right">Hace 15 días</span>
                            <p>I've seen some better than this, but not at this price. I definitely recommend this item.</p>
                        </div>
                    </div>

                </div>

            </div>

        </div>

    </div>
    <!-- /.container -->

    <div class="container">

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Privacy Policy - Copyright &copy; 2016 Digimedia.com, L.P.</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>