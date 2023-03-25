<%-- 
    Document   : recepcion
    Created on : 22/11/2022, 06:16:25 PM
    Author     : JOSÉ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 
    Document   : contactenos
    Created on : 22/11/2022, 05:54:05 PM
    Author     : JOSÉ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Pet Clinic | Contacts</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery-1.7.1.min.js"></script>
<script src="js/superfish.js"></script>
<script>
$(function(){
	function equalHeight(group) {
		var tallest = 0;
		group.each(function() {
			var thisHeight = $(this).height();
			if(thisHeight > tallest) {
				tallest = thisHeight;
			}
		});
		group.height(tallest);
	}	
	equalHeight($(".box-1 .inner"));
})
</script>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<link rel="stylesheet" href="css/ie.css"> 
<![endif]-->
</head>
<body>
<!-- Header -->
<header>
  <div class="inner">
    <h1 class="logo"><a href="index.html">Clinica de Mascotas</a></h1>
    <div class="fright">
      <div class="header-meta">
      <!-- <form action="#" id="search-form" method="post">
          <input type="text" onBlur="if(this.value==''){this.value='search'}" onFocus="if(this.value=='search'){this.value=''}" value="search" name="search">
          <a class="search-form-submit"></a>
        </form>-->
        <div class="col-elem"> ¿Tiene Problemas con su mascotas?<br>
          Llamenos ahora mismo: <span class="phone"> 222 -7788 </span> 
          <br><span class="LOGIN"> <a href="login.html">LOGIN </a></span></br>
        </div>
      </div>
      <nav>
        <ul class="sf-menu">
          <!--<li class="current"><a href="index.html">Menu</a></li>-->
          <li><a href="about.html">Nosotros</a></li>
          <li> <a href="#">Servicios</a>
            <ul>
              <li><a href="#">Accesorios Gatos</a></li>
              <li><a href="#">Accesorios Perros</a></li>
              <li> <a href="#">Accesorios varios</a>
                <ul>
                  <li><a href="#">Aviares</a></li>
                  <li><a href="#">acuarios</a></li>
                </ul>
              </li>
              <li><a href="#">Citas</a></li>
            </ul>
          </li>
          <li><a href="#">links</a></li>
          <li><a href="contacts.html">Contactos</a></li>
        </ul>
      </nav>
    </div>
    <div class="clear"></div>
  </div>
</header>
<!-- Content -->

            
          <h2>Contactado</h2>
          

<!-- Footer -->
<footer>
  <div class="copyright"> &copy; 2022 <strong class="footer-logo">Pet clinic</strong>
  
  </div>
  <ul class="social-list">
    <li><a href="#"><img src="images/social-link-1.jpg" alt=""></a></li>
    <li><a href="#"><img src="images/social-link-2.jpg" alt=""></a></li>
    <li><a href="#"><img src="images/social-link-3.jpg" alt=""></a></li>
    <li><a href="#"><img src="images/social-link-4.jpg" alt=""></a></li>
  </ul>
</footer>
</body>
</html>

