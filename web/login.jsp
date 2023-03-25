<%-- 
    Document   : login
    Created on : 28/11/2022, 10:04:46 PM
    Author     : JOSÉ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="referencias2.jsp"%>
    </head>
    <body>
        <div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="images/logo.png" id="icon" alt="User Icon" />
    </div>

    <!-- Login Form -->
    <form action="Controlador">
      <input type="text" id="usuario" class="fadeIn second" name="usuario" placeholder="usuario">
      <input type="text" id="password" class="fadeIn third" name="password" placeholder="password">
      <input  class="fadeIn fourth" type="submit" name="accion" value="Ingresar"  >
    </form>

    <!-- Remind Passowrd -->
   <!-- <div id="formFooter">
      <a class="underlineHover" href="#">¿Olvidaste la contraseña?</a>
    </div>
 -->
  </div>
</div>

        
</html>