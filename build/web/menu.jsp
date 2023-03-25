<%-- 
    Document   : menu
    Created on : Nov 12, 2022, 7:57:23 PM
    Author     : Juan
--%>
<%@page import="model.Pelicula"%>
<%@page import="java.util.List"%>
<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="seguridad.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="referencias/referencias.jsp"%>
        <title>JSP Page</title>
    </head>
    <body class="cuerpo">
        <!--
        <div class="center">
            <form name="menu" action="procesa" method="post">
                <h2 style="text-align:center;">Colores</h2>
                <input type="radio" name="pagina" value="rojo" checked>rojo
                <input type="radio" name="pagina" value="azul" >azul
                <input type="submit" value="Enviar" class="btn btn-primary form-control">
            </form>
        </div>
        -->
        <%
            Pelicula p = new Pelicula();
            List<Pelicula> listaPelicula = new LinkedList<>();
            listaPelicula = p.listaPeliculas();
        %>
        
        <div class="center2">
            <div class="row">
                <div class="col-sm-4">
                    <a href="procesa?pagina=agregar" class="btn btn-primary">Agregar pelicula</a>                    
                </div>
                <div class="col-sm-8"></div>
            </div>
            <table class="table table-light table-striped table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>TITULO</th>
                        <th>SINOPSIS</th>
                        <th>ANIO</th>
                        <th>EDITAR</th>
                        <th>ELIMINAR</th>                        
                    </tr>
                </thead>
                <tbody>
                    <% for(Pelicula px : listaPelicula) { %>
                    <tr>
                        <td><%= px.getPelicula_id() %></td>
                        <td><%= px.getPelicula_titulo() %></td>
                        <td><%= px.getPelicula_sinopsis() %></td>
                        <td><%= px.getPelicula_anio() %></td>
                        <td><a href="procesa?pagina=editar&pelicula=<%= px.getPelicula_id() %>" class="btn btn-warning">Editar</a></td>
                        <td><a href="procesa?pagina=eliminar&pelicula=<%= px.getPelicula_id() %>" class="btn btn-danger">Eliminar</a></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>            
        </div>
        
        
    </body>
</html>
