<%-- 
    Document   : agregaru
    Created on : 03/12/2022, 12:05:37 AM
    Author     : JOSÉ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@include file="seguridad.jsp" %>--%>
<!DOCTYPE html>
<html>
    <head>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>Agregar usuarios</title>
    </head>
    <body>
        
        <div class="container col-lg-3"> 
            <form action="procesa" method="post">
                <div class="form-group text-center"> 
                    <img src="images/logo.png"/>
                    <h1> <strong> Agregar usuarios</strong></h1>
                </div>               
                <div class="form-group">
                    <label> Nombre: </label> 
                    <input class="form-control" type="number" min="3" max="200" name="id" placeholder="Ingrese nombre">
                </div> 
                <div class="form-group">
                    <label> Contraseña: </label> 
                    <input class="form-control" type="password" name="txtprod" placeholder="Ingrese contraseña">
                </div> 
                
                <input class="btn btn-success" type="submit" value="Grabar">
            </form>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
 
    </body>
</html>
