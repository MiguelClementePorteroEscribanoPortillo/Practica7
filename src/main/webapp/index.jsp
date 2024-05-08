<!DOCTYPE html>
<html lang="en">
<head>
<!-- basic -->
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="tienda.*"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>La Chapuzza</title>
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

.nav-links a, .logo a {
	color: white;
	transition: color 0.3s;
}

.headerperfe:hover .nav-links a, .headerperfe:hover .logo a {
	color: black;
}

.headerperfe .nav-links a {
	color: white;
}

.headerperfe:hover .nav-links a {
	color: black;
}

.navbar {
	width: 100%;
	padding: 5px 0;
	display: flex;
	justify-content: space-between;
	align-items: center; /* Centra verticalmente */
}

.logo {
	display: flex; /* Usa flexbox para alinear verticalmente */
	align-items: center; /* Centra verticalmente */
}

.logo a {
	/* Misma margen que para el h1 */
	color: white; /* Color de texto blanco */
	transition: color 0.3s; /* Transición de color */
	font-size: 1rem;
	color: white;
}

.logo a:hover {
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
	width: 35px;
}
</style>


<script>
	window.addEventListener('scroll', function() {
		var navbar = document.getElementById('navbar');
		var headerContent = navbar.querySelectorAll('*'); // Selecciona todos los elementos dentro del header
		var threshold = 1100; // Ajusta este valor según donde quieras que cambie el color

		if (window.scrollY >= threshold) {
			navbar.style.backgroundColor = 'white'; // Cambia el color de fondo al hacer scroll
			navbar.style.color = 'black'; // Cambia el color del texto al hacer scroll
			headerContent.forEach(function(element) {
				element.style.color = 'black'; // Cambia el color de todos los elementos dentro del header al hacer scroll
			});
		} else {
			navbar.style.backgroundColor = 'transparent'; // Restaura el color de fondo inicial
			navbar.style.color = 'white'; // Restaura el color de texto inicial
			headerContent.forEach(function(element) {
				element.style.color = 'white'; // Restaura el color de todos los elementos dentro del header al hacer scroll
			});
		}
	});
</script>

<%
BDController controladorBD = new BDController();
%>


<!-- body -->
<body class="main-layout">
	<!-- loader  -->
	<div class="loader_bg">
		<div class="loader">
			<img src="images/f49.gif" alt="#" />
		</div>
	</div>

	<header class="headerperfe" id="navbar">
		<div class="navbar">
			<div class="logo">
				<a href="index.jsp">LA CHAPUZZA</a>
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
	<!-- Banner con imagen de fondo -->
	<div class="banner">
		<img src="images/jordanazul.png" alt="Fondo">
	</div>
	<!-- end banner -->
	<!-- about section -->
	<div class="about">
		<div class="container">
			<div class="row d_flex">
				<div class="col-md-5">
					<div class="about_img">
						<figure>
							<img src="images/jordanrojas.png" alt="#" />
						</figure>
					</div>
				</div>
				<div class="col-md-7">
					<div class="titlepage">
						<h2>Tenemos las ultimas tendecias</h2>
						<p>Si te gusta la ropa, el streetwear o simplemente quieres
							echar un vistazo, bienvenido esta es tu tienda de confianza, LA
							VERDADERA CHAPUZZA</p>
					</div>
					<a class="read_more" href="#">Ver más</a>
				</div>
			</div>
		</div>
	</div>

	<!-- about section -->
	<!-- Our  Glasses section -->
	<div class="glasses">
		<div class="container">
			<div class="row">
				<div class="col-md-10 offset-md-1">
					<div class="titlepage">
						<h2>Nuestros productos más vendidos</h2>
						<p>Estos son algunos de nuestros productos más vendidos</p>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
					<div class="glasses_box">
					<%Producto producto1=controladorBD.dameProductoCod(1); %>
						<figure>
							<img src="images/<%=producto1.getId_producto()%>.png" alt="#" />
						</figure>
						<h3>
							<span class="blu">$</span><%=producto1.getPrecio() %>
						</h3>
						<p><%=producto1.getDescripcion() %></p>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
					<div class="glasses_box">
					<%Producto producto2=controladorBD.dameProductoCod(2); %>
						<figure>
							<img src="images/<%=producto2.getId_producto()%>.png" alt="#"/>
						</figure>
						<h3>
							<span class="blu">$</span><%=producto2.getPrecio() %>
						</h3>
						<p><%=producto2.getDescripcion() %></p>
						<button>Comprar</button>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
					<div class="glasses_box">
						<figure>
							<img src="images/glass3.png" alt="#" />
						</figure>
						<h3>
							<span class="blu">$</span>50
						</h3>
						<p>Sunglasses</p>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
					<div class="glasses_box">
						<figure>
							<img src="images/glass4.png" alt="#" />
						</figure>
						<h3>
							<span class="blu">$</span>50
						</h3>
						<p>Sunglasses</p>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
					<div class="glasses_box">
						<figure>
							<img src="images/glass5.png" alt="#" />
						</figure>
						<h3>
							<span class="blu">$</span>50
						</h3>
						<p>Sunglasses</p>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
					<div class="glasses_box">
						<figure>
							<img src="images/glass6.png" alt="#" />
						</figure>
						<h3>
							<span class="blu">$</span>50
						</h3>
						<p>Sunglasses</p>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
					<div class="glasses_box">
						<figure>
							<img src="images/glass7.png" alt="#" />
						</figure>
						<h3>
							<span class="blu">$</span>50
						</h3>
						<p>Sunglasses</p>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
					<div class="glasses_box">
						<figure>
							<img src="images/glass8.png" alt="#" />
						</figure>
						<h3>
							<span class="blu">$</span>50
						</h3>
						<p>Sunglasses</p>
					</div>
				</div>
				<div class="col-md-12">
					<a class="read_more" href="#">Read More</a>
				</div>
			</div>
		</div>
	</div>
	<!-- end Our  Glasses section -->
	<!-- Our shop section -->
	<div id="about" class="shop">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-5">
					<div class="shop_img">
						<figure>
							<img src="images/jordan3.jpg" width="788" height="797" alt="#" />
						</figure>
					</div>
				</div>
				<div class="col-md-7 padding_right0">
					<div class="max_width">
						<div class="titlepage">
							<h2>Las mejores zapatillas</h2>
							<p>Tenemos las mejores zapatillas del mercado a tu
								disposicíón para que puedas ir siempre con un estilo impecable
								sea cuando sea.</p>
							<a class="read_more" href="glasess.jsp">Ver productos</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end Our shop section -->
	<!-- clients section -->
	<div class="clients">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="titlepage">
						<h2>¿Qué dicen nuestros clientes sobre nosotros?</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div id="myCarousel" class="carousel slide clients_Carousel "
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="container">
									<div class="carousel-caption ">
										<div class="row">
											<div class="col-md-12">
												<div class="clients_box">
													<figure>
														<img src="images/chunguitos.jpg" alt="#" width="188"
															height="172" />
													</figure>
													<h3>Chunguitos</h3>
													<p>Ayy primooo, pues la pagina esta eso esta mu bienn,
														di que si pa que haiga lujoo. Mu bien mu bueno to, voy a
														avisar al cigala. 🟩🟦🔴🟦🟩</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="container">
									<div class="carousel-caption">
										<div class="row">
											<div class="col-md-12">
												<div class="clients_box">
													<figure>
														<img src="images/mauricio-colmenero.png" alt="#"
															width="188" height="172" />
													</figure>
													<h3>Mauricio colmenero</h3>
													<p>¡Vaya maravilla, colega! Esto es mejor que un
														gazpacho en pleno agosto. ¡La mejor página que he visto en
														mi vida! Ni las patatas bravas de mi abuela llegan a este
														nivel de excelencia. ¡Bravo, bravo y bravo! TIRI TIRI
														TIRITI 🟥🟨🟨🟥 🐂🥃🧊👠🎩</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="container">
									<div class="carousel-caption">
										<div class="row">
											<div class="col-md-12">
												<div class="clients_box">
													<figure>
														<img src="images/jorge-arabe.jpeg" alt="#" width="188"
															height="172" />
													</figure>
													<h3>Jorge</h3>
													<p>Está pagina es muy buena es bastante optima, una
														pedazo de chapuceria en condiciones, tenemos la mafia del
														nelson activa, pronto se viene extracción de pétroleo con
														los alumnos de prácticas jeje 🐐</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<a class="carousel-control-prev" href="#myCarousel" role="button"
							data-slide="prev"> <i class='fa fa-angle-left'></i>
						</a> <a class="carousel-control-next" href="#myCarousel" role="button"
							data-slide="next"> <i class='fa fa-angle-right'></i>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end clients section -->
	<!-- 	<!-- contact section -->
	<!-- 	<div id="contact" class="contact"> -->
	<!-- 		<div class="container"> -->
	<!-- 			<div class="row"> -->
	<!-- 				<div class="col-md-6"> -->
	<!-- 					<form id="request" class="main_form"> -->
	<!-- 						<div class="row"> -->
	<!-- 							<div class="col-md-12 "> -->
	<!-- 								<h3>Contact Us</h3> -->
	<!-- 							</div> -->
	<!-- 							<div class="col-md-12 "> -->
	<!-- 								<input class="contactus" placeholder="Name" type="type" -->
	<!-- 									name="Name"> -->
	<!-- 							</div> -->
	<!-- 							<div class="col-md-12"> -->
	<!-- 								<input class="contactus" placeholder="Phone Number" type="type" -->
	<!-- 									name="Phone Number"> -->
	<!-- 							</div> -->
	<!-- 							<div class="col-md-12"> -->
	<!-- 								<input class="contactus" placeholder="Email" type="type" -->
	<!-- 									name="Email"> -->
	<!-- 							</div> -->
	<!-- 							<div class="col-md-12"> -->
	<!-- 								<input class="contactusmess" placeholder="Message" type="type" -->
	<!-- 									Message="Name"> -->
	<!-- 							</div> -->
	<!-- 							<div class="col-md-12"> -->
	<!-- 								<button class="send_btn">Send</button> -->
	<!-- 							</div> -->
	<!-- 						</div> -->
	<!-- 					</form> -->
	<!-- 				</div> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 		<div class="container-fluid"> -->
	<!-- 			<div class="map_section"> -->
	<!-- 				<div id="map"></div> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 	</div> -->
	<!-- 	</div> -->
	<!-- 	<!-- end contact section -->
	<!--  footer -->
	<br>
	<br>
	<br>
	<footer>
		<div class="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-8 offset-md-2">
						<ul class="location_icon">
							<li><a href="https://maps.app.goo.gl/hJwmdmu4CkufsHwo7"><i
									class="fa fa-map-marker" aria-hidden="true"></i></a><br>
								Ubicación</li>
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
	<script>
		// This example adds a marker to indicate the position of Bondi Beach in Sydney,
		// Australia.
		function initMap() {
			var map = new google.maps.Map(document.getElementById('map'), {
				zoom : 11,
				center : {
					lat : 40.645037,
					lng : -73.880224
				},
			});

			var image = 'images/maps-and-flags.png';
			var beachMarker = new google.maps.Marker({
				position : {
					lat : 40.645037,
					lng : -73.880224
				},
				map : map,
				icon : image
			});
		}
	</script>
	<!-- google map js -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap"></script>
	<!-- end google map js -->
</body>
</html>
