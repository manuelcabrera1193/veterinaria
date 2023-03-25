<%-- 
    Document   : links
    Created on : 29/11/2022, 03:57:44 PM
    Author     : JOSÉ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="referencias.jsp"%>
    </head>
    <body>
        
       <%@include file="cabecera.jsp" %>
       <div class="container_24">
            <table class="table table-light table-striped table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Link</th>
                        <th>ASOCIADO</th>                      
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>01</td>
                        <td><a href="https://groomers.juntoz.com/" target="_blank"> Groomers juntoz </a> </td>
                        <td>SI</td>
                    </tr>
                    <tr>
                    <td>02</td>
                    <td><a href="https://canicat.pe/" target="_blank">Canicat </a></td>
                        <td>SI</td>
                    </tr>
                     <tr>
                    <td>03</td>
                    <td> <a href="https://piensoymascotas.com" target="_blank"> Pienso y Mascotas</a></td>
                        <td>SI</td>
                    </tr>
                     <tr>
                    <td>04</td>
                    <td><a href="https://petfashion.pe/" target="_blank">Petfashion </a></td>
                        <td>SI</td>
                    </tr>
                     <tr>
                    <td>05</td>
                    <td><a href="http://importadorarokasd.com/" target="_blank"> Importadoraro kasd </a> </td>
                        <td>NO</td>
                    </tr>
                     <tr>
                    <td>06</td>
                    <td><a href="https://www.norpesa.com/" target="_blank">Norpesa</a> </td>
                        <td>SI</td>
                    </tr>
                     <tr>
                    <td>07</td>
                    <td><a href="https://koalamascotas.com/" target="_blank">Koalamascotas</a></td>
                        <td>NO</td>
                    </tr>
                     <tr>
                    <td>08</td>
                    <td><a href="https://petbrands.pe" target="_blank">Petbrands </a></td>
                        <td>SI</td>
                    </tr>
                </tbody>
            </table>
           </div>
       <%@include file="pie.jsp" %>
    </body>
</html>
