<%-- 
    Document   : edicion_venta_gatos
    Created on : 22/11/2022, 07:26:52 PM
    Author     : JOSÉ
--%>
<%@page import="model.gatos"%>
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
            gatos p = new gatos();
            List<gatos> listagatoss = new LinkedList<>();
            listagatoss = p.listagatoss();
        %>
        
        <div class="container_24">
            <div class="row">
                <div class="col-sm-4">
                    <a href="Controladorg?accion=add" class="btn btn-primary">Agregar productos gatos</a>                    
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
                    <% for(gatos px : listagatoss) { %>
                    <tr>
                        <td><%= px.getgatos_id() %></td>
                        <td><%= px.getgatos_nombre() %></td>
                        <td><%= px.getgatos_precio() %></td>
                        <td><a href="Controladorg?accion=editar&id=<%= px.getgatos_id() %>" class="btn btn-warning">Editar</a></td>
                        <td><a href="Controladorg?accion=eliminar&id=<%= px.getgatos_id() %>" class="btn btn-danger">Eliminar</a></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>            
        </div>
       <%@include file="../pie.jsp" %>
    </body>
</html>

