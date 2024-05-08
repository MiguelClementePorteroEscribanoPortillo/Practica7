<!DOCTYPE html>
<html lang="en">
<head>
<!-- basic -->
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>sungla</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- bootstrap css -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" href="css/style.css">
<!-- Responsive-->
<link rel="stylesheet" href="css/responsive.css">
<!-- fevicon -->
<link rel="icon" href="images/fevicon.png" type="image/gif" />
<!-- Scrollbar Custom CSS -->
<link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
<!-- Tweaks for older IEs-->
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
	media="screen">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>

<style>
body {
	margin: 0;
	font-family: Arial, sans-serif;
}

.headerperfe {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	z-index: 1000;
	transition: background-color 0.3s;
	background-color: transparent; /* Color de fondo inicial */
}

.headerperfe:hover {
	background-color: white;
}

.nav-links a, .logo h1 {
	color: white;
	transition: color 0.3s;
}

.headerperfe .nav-links a {
	color: black;
}

.navbar {
	width: 100%;
	padding: 5px 0;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.logo h1 {
	margin-left: 20px;
	color: black;
}

.nav-links {
	flex-grow: 1;
	text-align: center;
}

.nav-links a {
	text-decoration: none;
	color: black;
	padding: 10px 20px;
	transition: background-color 0.3s;
}

.section {
	height: 800px;
	text-align: center;
	padding-top: 50px;
}

.icon {
	margin-right: 20px;
	width: 40px;
}
/* Estilos adicionales para el video */
.about_video {
	display: flex;
	flex-direction:column;
	justify-content: center;
	align-items: center;
	margin-top: 20px;
}

.about_video video {
	max-width: 100%;
	border: 2px solid #ccc; /* Agrega un borde al video */
	border-radius: 10px; /* Borde redondeado */
}
</style>
<!-- body -->
<body class="main-layout position_head">
	<!-- loader  -->
	<div class="loader_bg">
		<div class="loader">
			<img src="images/loading.gif" alt="#" />
		</div>
	</div>
	<!-- end loader -->
	<!-- header -->
	<header class="headerperfe" id="navbar">
		<div class="navbar">
			<div class="logo">
				<a>LA CHAPUZZA</a>
			</div>
			<div class="nav-links">
				<a href="index.jsp">Inicio</a> <a href="about.jsp">Nosotros</a> <a
					href="#glasses.jsp">Productos</a> <a href="contact.jsp">Contacto</a>
			</div>
			<div class="icon">
				<img src="images/usuario-icono.png" alt="#" />
			</div>
		</div>
	</header>

	<!-- end header inner -->
	<!-- end header -->
	<!-- about section -->
	<div class="about">
		<div class="container">
			<div class="row d_flex">
				<div class="col-md-5">
					<div class="about_img">
						<figure>
							<img src="images/marioluigi.png" alt="#" width="280px" />
						</figure>
					</div>
				</div>
				<div class="col-md-7">
					<div class="titlepage">
						<h2>Sobre nuestra tienda la chapuzza</h2>
						<p>Somos dos chavales de 19 años de Mardid los dueños de esta
							marca, no venimos a ser otra marca más, venimos a dejar huella, a
							romper el miedo y salir desde lo más hondo del pozo para llegar a
							lo más arriba, queremos construir una comunidad, una familia,
							ofreciendo precios bajos y los mejores detalles y calidad en
							marcas</p>
					</div>
				</div>
				
			</div>
			<div class="about_video">
					<h2>A continuación os dejamos un video de uno de los creadores de la marca mostrando la calidad de los productos junto a sus amigos, rodearos de gente que os haga bien siempre. 🙌🙏</h2>
                    <video width="640" height="360" controls>
                        <source src="video/videochapuzza.mp4" type="video/mp4">
                    </video>
                </div>
		</div>
	</div>
	<!-- about section -->
	<!--  footer -->
	<footer>
		<div class="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-8 offset-md-2">
						<ul class="location_icon">
							<li><a href="https://maps.app.goo.gl/hJwmdmu4CkufsHwo7"><i class="fa fa-map-marker"
									aria-hidden="true"></i></a><br> Ubicación</li>
							<li><a href="#"><i class="fa fa-phone"
									aria-hidden="true"></i></a><br> +230409</li>
							<li><a href="#"><i class="fa fa-envelope"
									aria-hidden="true"></i></a><br> lachapuzza@gmail.com</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="copyright">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<p>© 2024 All Rights Reserved. Design by LA CHAPUZZA</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- end footer -->
	<!-- Javascript files-->
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/jquery-3.0.0.min.js"></script>
	<!-- sidebar -->
	<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>