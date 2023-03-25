<%-- 
    Document   : pruebacnx
    Created on : 29/11/2022, 08:38:36 PM
    Author     : JOSÉ
--%>

<%@page import="model.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            conexion cn = new conexion();
            int conecta = cn.pruebaConexion();
            out.println(conecta);
        %>
    </body>
</html>