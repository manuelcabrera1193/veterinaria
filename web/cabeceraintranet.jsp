<%-- 
    Document   : cabeceraintranet
    Created on : 29/11/2022, 05:04:21 PM
    Author     : JOSÉ
--%>
<%@page import="java.util.List"%>
<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<header>
    <div class="inner"> 
    <h1 class="logo"><a href="indexIntranet.jsp">Clinica de Mascotas</a></h1>
    <div class="fright">
         <div class="header-meta">
      <!-- <form action="#" id="search-form" method="post">
          <input type="text" onBlur="if(this.value==''){this.value='search'}" onFocus="if(this.value=='search'){this.value=''}" value="search" name="search">
          <a class="search-form-submit"></a>
        </form>-->
      <div class="col-elem">
            <a href="Controlador?accion=Salir" class="nav-link dropdown-toogle"  data-toogle="dropdown">Cerrar Sesion</a>
        </div>
      
      </div>
      <nav>
        <ul class="sf-menu">
          <!--<li class="current"><a href="index.html">Menu</a></li>-->
         <li><a href="ControladoraU?accion=listar&${nom}">Usuarios</a></li>
          <li> <a href="#">Edicion de Ventas</a>
            <ul>
              <li><a href="Controladorg?accion=listar">Edicion Accesorios Gatos</a></li>
              <li><a href="Controladorp?accion=listar">Edicion Accesorios Perros</a></li>
              <li> <a href="Controladorav?accion=listar">Edicion Accesorios varios</a>
                <ul>
                   
                  <li><a href="#">Aviares</a></li>
                  <li><a href="#">acuarios</a></li>
                </ul>
              </li>
             <!-- <li><a href="#">Citas</a></li> -->
            </ul>
          </li>
          <li><a href="linksintranet.jsp">links</a></li>
          
        </ul>
      </nav>
    </div>
    </div>
  
</header>