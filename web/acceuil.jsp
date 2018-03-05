<%-- 
    Document   : acceuil
    Created on : 4 mars 2018, 07:32:15
    Author     : Diana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title> AeroTrack</title>
<link rel="stylesheet" href="style/bootstrap.min.css" />
<link rel = "stylesheet" href = "style/style.css" type = "text/css"/>
<link rel = "stylesheet" href = "style/styleRows.css" type = "text/css"/>
<link rel="stylesheet" href="style/navbarStyle.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Montserrat:400,700|Vollkorn:400italic,700italic,400,700&amp;subset=latin,latin-ext">
<script type="text/javascript" src="js/scrypt.js"></script>
</head>
<body>

	<div class="navbar" id="menuNav">
				<a 
				id="login" href="login.jsp">CONNEXION </a>
				<a id="contact" href="#cont">ALERTES SMS / </a>
				<a id="services" href="#serv">ARRIVEES / </a>
				<a id="porfolio" href="#jobs">DEPARTS / </a>
				<a class="active" id= "acceuil" href="acceuil.jsp">ACCUEIL / </a>
				<p>
	</div>

<!-- Begin Acceuil -->
<section class="services-divider" id="serv">
  <div class="row pad-top">

  </div>
  <div class="row">
 <form action = "./Controller?operateur=A"method="post">   
    <div class="large-4 columns push-2">
      <div class="service ">
            <img class="img-services" src="images/services01-01.png" title="" alt="Image non existente">
            <input id ="service1" class = "bService" type="submit" name="ConsulterArrives" value="Consulter" />
      </div>
    </div>
 </form>
  <form action = "./Controller?operateur=D"method="post">      
    <div class="large-4 columns push-2">
      <div class="service ">
	              <img class="img-services" src="images/services01-02.png" title="" alt="Image non existente"/>
            <input id ="service1" class = "bService" type="submit" name="ConsulterDepart" value="Consulter" />
      </div>
    </div>
  </form>
  </div>
      <div id = "find"class="row">
        <div >
            <form action = "main.php #cont" method="post">
              <input type="email" name="your-email" placeholder="Cherchez un vol... "/>
                        <p><input type="submit" class = "bService" name = "Rechercher" value="Rechercher" /></p>
          </form>
      </div>
    </div>
</section>
<!--Fin section Acceuil-->

<!-- sticky menu function	-->		
<script>
window.onscroll = function() {myFunction()};

var navbar = document.getElementById("menuNav");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}
</script>
</body>
</html>
