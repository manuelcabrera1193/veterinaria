<%-- 
    Document   : indexIntranet
    Created on : 29/11/2022, 05:39:32 PM
    Author     : JOSÉ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="referencias.jsp"%>
    </head>
    <body>
        <%@include file="cabeceraintranet.jsp" %>
        <div class="col-elem" align='center' > <h1> Bienvenido a tu sistema de intranet.... <strong>USUARIO ${nom}</strong></h1><br>
        </div>
         <%@include file="contenido.jsp" %>
       <%@include file="pie.jsp" %>
    </body>
</html>
