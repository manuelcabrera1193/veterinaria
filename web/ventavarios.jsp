<%-- 
    Document   : ventagatos
    Created on : 22/11/2022, 07:26:52 PM
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
       <%@include file="cabecera.jsp" %>
        <%
            varios p = new varios();
            List<varios> listavarioss = new LinkedList<>();
            listavarioss = p.listavarioss();
        %>
        
        <div class="center2">
            <div class="row">
               <div class="col-sm-8"></div>
            </div>
            <div class="container_24">
                <h2>Venta de Accesorios Varios</h2>
            <table class="table table-light table-striped table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>PRODUCTO</th>
                        <th>PRECIO</th>  
                        <th>COMPRAR</th> 
                    </tr>
                </thead>
                <tbody>
                    <% for(varios px : listavarioss) { %>
                    <tr>
                        <td><%= px.getvarios_id() %></td>
                        <td><%= px.getvarios_nombre() %></td>
                        <td><%= px.getvarios_precio() %></td>
                        <td><a href=Controladorav?accion=eliminar2&id=<%= px.getvarios_id() %>" class="btn btn-danger">Comprar todo</a></td>
                    </tr>
                    <% } %>
                </tbody>
            </table> 
                </div>
        </div>
       <%@include file="pie.jsp" %>
    </body>
</html>

