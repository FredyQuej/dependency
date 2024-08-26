<%-- 
    Document   : login
    Created on : 16 nov. 2022, 04:08:35
    Author     : Guiye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Sistema de inventario de productos</title>
        <link href="./Bootstrap/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container mt-4 col-lg-3">
            <h1>Bienvenidos al sistema de inventario de productos</h1>
            <form action="Validar" method="post">
                
                <div class="form-group m-4">
                    <label>Nombre: </label>
                    <input class="form-control" type="text" name="txtNombre" placeholder="Ingrese nombre"/>
                </div>
                <div class="form-group m-4">
                <label>Contraseña: </label>
                    <input class="form-control" type="password" name="txtContrasenia" placeholder="Ingrese contraseña"/>
                </div>
                <input class="btn btn-danger btn-block m-4" type="submit" name="accion" value="ingresar">
            </form>
        </div>
        <script src="./Bootstrap/js/bootstrap.bundle.js"></script>
    </body>
</html>