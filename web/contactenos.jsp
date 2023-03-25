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
 <%@include file="cabecera.jsp" %>
<!-- Content -->
<section id="content">
 <div class="container_24">
    <div class="">
     <!-- <article class="grid_6">
        <div class="box-1">
          <div class="inner">
            <h3>Microchip implant</h3>
            <p> Vivamus hendrerit mauris ut dui. gravida ut viverra lectus tincidunt. Cras mattis tempor eros nec tristique. </p>
            <div class="btn-container">
              <div class="button-box"> <a href="#" class="button">read more</a> </div>
            </div>
          </div>
        </div>
      </article> 
      <article class="grid_6">
        <div class="box-1">
          <div class="inner">
            <h3>Ultrasound</h3>
            <p class="p0"> <strong class="str-1"> Vivamus hendrerit mauris ut dui gravida ut viverra </strong> </p>
            <p> Cras mattis tempor eros nec tristique. Sed sed felis arcu, vel vehicula augue. Maecenas faucibus sagittis. cursus. </p>
            <div class="btn-container">
              <div class="button-box"> <a href="#" class="button">read more</a> </div>
            </div>
          </div>
        </div>
      </article>
      <article class="grid_6">
        <div class="box-1">
          <div class="inner">
            <h3>Transport service</h3>
            <p> Vivamus hendrerit mauris ut dui. gravida ut viverra lectus tincidunt. Cras mattis tempor eros nec tristique. </p>
            <div class="btn-container">
              <div class="button-box"> <a href="#" class="button">read more</a> </div>
            </div>
          </div>
        </div>
      </article>
      <article class="grid_6">
        <div class="box-1">
          <div class="inner">
            <h3>Vaccinations</h3>
            <p class="p0"> <strong class="str-1"> Vivamus hendrerit mauris ut gravida ut viverra </strong> </p>
            <p> Cras mattis tempor eros nec tristique. Sed sed felis arcu, vel vehicula augue. </p>
            <div class="btn-container">
              <div class="button-box"> <a href="#" class="button">read more</a> </div>
            </div>
          </div>
        </div>
      </article>-->
     <!-- <div class="clear"></div>-->
      <div class="wrapper">
        <article class="grid_7 suffix_1">
          <h2>Info de contacto:</h2>
          <div class="map-container img-box">
           <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d7802.962374134462!2d-77.08488255675627!3d-12.079175462710614!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2spe!4v1669158864679!5m2!1ses!2spe" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div>
          <strong class="str-4">Pet clinic</strong>
          <dl class="adress">
            <dt>8901 Av. La marina, San Miguel, Peru</dt>
            <dd><span>Telefono:</span><strong>959 603 6035</strong></dd>
            <!--<dd><span>Fax:</span><strong>+1 504 889 9898</strong></dd>-->
            <dd><span>Email:</span><a href="#">mail@petclinic.org</a></dd>
          </dl>
        </article>
        <article class="grid_16">
            
          <h2>Formulario de Contacto:</h2>
          <form action="recepcion.jsp" id="contact-form" method="post">
              <div>
            <fieldset>
              <label class="name"> <span>Nombre:</span>
                <input type="text" name="nombre" class="form-control">
              </label>
              <label class="email"> <span>Email:</span>
                <input type="email" name="correo" class="form-control">
              </label>
              <label class="message"> <span>Mensaje:</span>
                <textarea type="text" name="mensaje" class="form-control" ></textarea>
              </label>
            </fieldset>
             <!-- <input type="submit" value='Limpiar' class="btn btn-primary form-control"> -->
              <input type="submit" value='Enviar' class="btn btn-primary form-control">
              </div>
          </form>
        </article>
      </div>
    </div>
  </div>
</section>
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
