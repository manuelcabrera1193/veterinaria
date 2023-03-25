<%-- 
    Document   : edicion_venta_varios
    Created on : 29/11/2022, 05:35:17 PM
    Author     : JOSÉ
--%>

<%@page import="model.varios"%>
<%@page import="java.util.List"%>
<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@include file="seguridad.jsp" %>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="referencias.jsp"%>
    </head>
    <body>
       <%@include file="cabeceraintranet.jsp" %>
        <%
            varios p = new varios();
            List<varios> listavarioss = new LinkedList<>();
            listavarioss = p.listavarioss();
        %>
        
        <div class="container_24">
            <div class="row">
                <div class="col-sm-4">
                    <a href="Controladorav?accion=add" class="btn btn-primary">Agregar productos varios</a>                    
                </div>
                <div class="col-sm-8"></div>
            </div>
            
            <table class="table table-light table-striped table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>PRODUCTO</th>
                        <th>PRECIO</th>  
                        <th>Editar</th> 
                        <th>Eliminar</th> 
                    </tr>
                </thead>
                <tbody>
                    <% for(varios px : listavarioss) { %>
                    <tr>
                        <td><%= px.getvarios_id() %></td>
                        <td><%= px.getvarios_nombre() %></td>
                        <td><%= px.getvarios_precio() %></td>
                        <td><a href="Controladorav?accion=editar&idd<%= px.getvarios_id() %>" class="btn btn-warning">Editar</a></td>
                        
                        <td><a href="Controladorav?accion=eliminar&id=<%= px.getvarios_id() %>" class="btn btn-danger">Eliminar</a></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>            
        </div>
       <%@include file="pie.jsp" %>
    </body>
</html>
