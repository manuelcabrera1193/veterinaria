<%-- 
    Document   : creacionUsuario
    Created on : 29/11/2022, 05:48:57 PM
    Author     : JOSÉ
--%>

<%@page import="model.Usuario"%>
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
            Usuario p = new Usuario();
            List<Usuario> listaUsuario = new LinkedList<>();
            listaUsuario = p.listaUsuario();
        %>
        
        <div class="container_24">
            <div class="row">
              
                <div class="col-sm-8"></div>
            </div>
            
            <table class="table table-light table-striped table-hover">
                <thead>
                    <tr>
                        <th>Usuario</th>
                        <th>Contraseña</th> 
                    </tr>
                </thead>
                <tbody>
                    <% for(Usuario px : listaUsuario) { %>
                    <tr>
                        <td><%= px.getUsuario() %></td>
                        <td><%= px.getPassword() %></td>
                       
                    </tr>
                    <% } %>
                </tbody>
            </table>            
        </div>
       <%@include file="pie.jsp" %>
    </body>
</html>
