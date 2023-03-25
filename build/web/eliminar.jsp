<%-- 
    Document   : eliminar
    Created on : 01/12/2022, 11:05:27 PM
    Author     : JOSÉ
--%>

<%@page import="model.gatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- <%@include file="seguridad.jsp" %> --%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="referencias.jsp"%>
        <title>Editar</title>
    </head>
    <body class="cuerpo">
        <div class="center2">
        <h1>Eliminar Venta Gatos</h1>
        <%
        String gatos = request.getParameter("itemg_nombre");
        gatos p = new gatos();
        p.muestragatos(gatos);
        %>
        
        <form action="procesa" method="post">
            <input type="hidden" name="pagina" value="eliminar">            
            id<br>
            <input type="text" name="id" class="form-control" value="<%= p.getgatos_id()%>" readonly><br>
            Nombre Producto<br>
            <input type="text" name="titulo" class="form-control" value="<%= p.getgatos_nombre()%>" readonly><br>
            Sinopsis<br>
            <textarea name="sinopsis" class="form-control" readonly><%= p.getgatos_precio()%></textarea><br>
           
            <input type="submit" value="Grabar" class="btn btn-success">
        </form>
        </div>
    </body>
</html>
