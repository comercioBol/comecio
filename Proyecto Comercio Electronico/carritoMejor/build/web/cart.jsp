<%@page import="classes.Producto"%>
<%@page import="controllers.ControladorProducto"%>
<%@page import="classes.Articulo"%>
<%@page import="java.util.ArrayList"%>
<%
     HttpSession sesion = request.getSession(true);
     ArrayList<Articulo> articulos = sesion.getAttribute("carrito") == null ? null : (ArrayList) sesion.getAttribute("carrito");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Comercio Electronico</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href=""><i class="fa fa-phone"></i> +2 22 45 88 30</a></li>
								<li><a href=""><i class="fa fa-envelope"></i> infoMip@es.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href=""><i class="fa fa-facebook"></i></a></li>
								<li><a href=""><i class="fa fa-twitter"></i></a></li>
								<li><a href=""><i class="fa fa-linkedin"></i></a></li>
								<li><a href=""><i class="fa fa-dribbble"></i></a></li>
								<li><a href=""><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="index.html"><img src="images/home/logo.png" alt="" /></a>
						</div>
						<div class="btn-group pull-right">
							<div class="btn-group">
								<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
									BOLIVIA
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="">La Paz</a></li>
									<li><a href="">Oruro</a></li>
                                                                        <li><a href="">Chuquisaca</a></li>
                                                                        <li><a href="">Potosi</a></li>
                                                                        <li><a href="">Cochabamba</a></li>
                                                                        <li><a href="">Tarija</a></li>
                                                                        <li><a href="">Santa Cruz</a></li>
                                                                        <li><a href="">Beni</a></li>
                                                                        <li><a href="">Pando</a></li>
								</ul>
							</div>
							
							<div class="btn-group">
								<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
									Moneda
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="">Bolivianos (Bs)</a></li>
									<li><a href="">Dolares ($)</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href=""><i class="fa fa-user"></i> Acontinuacion</a></li>
								<li><a href=""><i class="fa fa-star"></i> Ver mas</a></li>
								<li><a href="checkout.html"><i class="fa fa-crosshairs"></i>Otros</a></li>
								<li><a href="cart.html"><i class="fa fa-shopping-cart"></i> Carrito</a></li>
								<li><a href="login.html"><i class="fa fa-lock"></i> Login</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="index.html">Inicio</a></li>
								<li class="dropdown"><a href="#" class="active">Igresar<i class="fa fa-angle-down"></i></a>
                                                <ul role="menu" class="sub-menu">
                                                <li><a href="shop.html" class="active">Productos</a></li>
						        <li><a href="product-details.html">Compras</a></li> 
										
					                <li><a href="login.html">Recervas</a></li> 
                                                </ul>
                                                </li> 
								
								
							</ul>
						</div>
					</div>
					
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->

	<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="#">Compras</a></li>
				  <li class="active">Productos en carrito</li>
				</ol>
			</div>
			<div class="table-responsive cart_info" id="cart-container">
                            <table class="table table-condensed" id="shop-table">
					<thead>
						<tr class="cart_menu">
							<td class="image">Producto</td>
							<td class="description"></td>
							<td class="price">Precio</td>
							<td class="quantity">Cantida</td>
							<td class="total">Total</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
                                            
                                            
                                                <%
                                                    ControladorProducto cp = new ControladorProducto();
                                                    double total = 0;
                                                    if(articulos != null){
                                                    for(Articulo a: articulos){
                                                        Producto producto = cp.getProducto(a.getIdProducto());
                                                        total += a.getCantidad() * producto.getPrecio();
                                                        
                                                                                                            
                                                %>
                                            
						<tr>
							<td class="cart_product">
                                                            <a href=""><img src="<%= producto.getImg()%>" alt="" width="120"></a>
							</td>
							<td class="cart_description">
								<h4><a href=""><%= producto.getNombre()%></a></h4>
								<p>Web ID: <%= producto.getId()%></p>
							</td>
							<td class="cart_price">
								<p>Bs <%= producto.getPrecio()%></p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
									<a class="cart_quantity_up" href=""> + </a>
                                                                        <input class="cart_quantity_input" type="text" name="quantity" value="<%= a.getCantidad()%>" autocomplete="off" size="2">
									<a class="cart_quantity_down" href=""> - </a>
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price">$<%= Math.round(producto.getPrecio()*a.getCantidad()*100.0) / 100.0%></p>
							</td>
							<td class="cart_delete">
                                                            <span id="idarticulo" style="display:none;"><%= producto.getId()%></span>
                                                            <a class="cart_quantity_delete" href="" id="deleteitem"><i class="fa fa-times"></i></a>
							</td>
						</tr>
                                                
                                                <%}}%>
                                                
                                                
                                                
                                                
                                                
                                                
                                                

						
					</tbody>
				</table>
                                <% if (articulos == null){%>
                                <h4>No hay Articulos en el carro</h4>
                                <%}%>
			</div> 
                                                <a href="javascript:window.history.go(-2);">Seguir Comprando</a>
		</div>
	</section> <!--/#cart_items-->

	<section id="do_action">
		<div class="container">
			<div class="heading">
				<h3>Las compras de productos por la web?</h3>
				<p>Enaqui puede comprar diferentes tipos de ropas de vestir para toda ocacion que uno busca lo encuentra aqui.</p>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="chose_area">
						<ul class="user_option">
							<li>
								<input type="checkbox">
								<label>Su cupon de compra</label>
							</li>
							<li>
								<input type="checkbox">
								<label>La factura de compra</label>
							</li>
							<li>
								<input type="checkbox">
								<label>Impricion de factura</label>
							</li>
						</ul>
						<ul class="user_info">
							<li class="single_field">
								<label>Ciudades:</label>
                                                                <select>
									<option>Las Paz</option>
									<option>Sucre</option>
									<option>Ixiamas</option>
									<option>Caranavi</option>
									<option>Santa cruz de la Sierra</option>
									<option>Oruro</option>
									<option>Rriberalta</option>
									<option>Chapare</option>
								</select>
								
							</li>
							<li class="single_field">
								<label>Regiones / de provincias:</label>
								<select>
									<option>Coroico</option>
									<option>Chulumani</option>
									<option>Sorata</option>
									<option>Guanay</option>
									<option>Copacabana</option>
									<option>Achacachi</option>
									<option>Warnes</option>
									<option>Palos blancos</option>
								</select>
							
							</li>
							<li class="single_field zip-field">
								<label>Codigo de venta:</label>
								<input type="text">
							</li>
						</ul>
						<a class="btn btn-default update" href="">Guardar</a>
						<a class="btn btn-default check_out" href="">Continue sin Guardar</a>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="total_area">
						<ul>
                                                    <li>Costo sub total <span id="txt-subtotal">Bs<%= Math.round(total*100.0)/100.0%></span></li>
							<li>Costo de utilidad <span>Bs 0.0</span></li>
							<li>Pago por importe<span>............</span></li>
                                                        <li>Total <span id="txt-total"><%= Math.round(total*100.0)/100.0%></span></li>
						</ul>
							<a class="btn btn-default update" href="">Mostrar</a>
							<a class="btn btn-default check_out" href="">Imprimir</a>
					</div>
				</div>
			</div>
		</div>
	</section><!--/#do_action-->

	<footer id="footer"><!--Footer-->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="companyinfo">
							<h2><span>o</span>-modas</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,sed do eiusmod tempor</p>
						</div>
					</div>
					<div class="col-sm-7">
						<div class="col-sm-3">
							<div class="video-gallery text-center">
								<a href="#">
									<div class="iframe-img">
										<img src="images/home/iframe1.png" alt="" />
									</div>
									<div class="overlay-icon">
										<i class="fa fa-play-circle-o"></i>
									</div>
								</a>
								<p>Nuevos diseños</p>
								<h2>JULIO 2016</h2>
							</div>
						</div>
						
						<div class="col-sm-3">
							<div class="video-gallery text-center">
								<a href="#">
									<div class="iframe-img">
										<img src="images/home/iframe2.png" alt="" />
									</div>
									<div class="overlay-icon">
										<i class="fa fa-play-circle-o"></i>
									</div>
								</a>
								<p>Nuevos diseños</p>
								<h2>AGOSTO 2016</h2>
							</div>
						</div>
						
						<div class="col-sm-3">
							<div class="video-gallery text-center">
								<a href="#">
									<div class="iframe-img">
										<img src="images/home/iframe3.png" alt="" />
									</div>
									<div class="overlay-icon">
										<i class="fa fa-play-circle-o"></i>
									</div>
								</a>
								<p>Nuevos diseños</p>
								<h2>OCTUBRE 2016</h2>
							</div>
						</div>
						
						<div class="col-sm-3">
							<div class="video-gallery text-center">
								<a href="#">
									<div class="iframe-img">
										<img src="images/home/iframe4.png" alt="" />
									</div>
									<div class="overlay-icon">
										<i class="fa fa-play-circle-o"></i>
									</div>
								</a>
								<p>Nuevos diseños</p>
								<h2>ENERO 2017</h2>
							</div>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="address">
							<img src="images/home/map.png" alt="" />
							<p>Comercio electronico de Boliviaa nivel nacional y mundial </p>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="footer-widget">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Servicios</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Recervas Oline</a></li>
								<li><a href="">Contactos </a></li>
								<li><a href="">Ordenar productos</a></li>
								<li><a href="">Ubicaciones</a></li>
								<li><a href="">Otros</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Promociones</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Por cantidad</a></li>
								<li><a href="">En oferta</a></li>
								<li><a href="">Por aniversario</a></li>
								<li><a href="">Fechas civicas</a></li>
								<li><a href="">otros</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Entregas</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Por via aerea</a></li>
								<li><a href="">A domicilio</a></li>
								<li><a href="">A su Empresa</a></li>
								<li><a href="">A provicias</a></li>
								<li><a href="">Otros</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Ver a</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Nuevas empresas</a></li>
								<li><a href="">Diseños de novedad</a></li>
								<li><a href="">Diseñadores</a></li>
								<li><a href="">Venta de maquinas</a></li>
								<li><a href="">otros</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3 col-sm-offset-1">
						<div class="single-widget">
							<h2>Visitanos</h2>
							<form action="#" class="searchform">
								<input type="text" placeholder="Your email address" />
								<button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
								<p>Aqui podra encontrar muchas <br />otras promociones que ofrecemos...</p>
							</form>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">2016 © Compania de ventas Mip@es.bo, Anivel nacional y internacional.</p>
					<p class="pull-right">El acceso <span><a target="_blank" href="http://www.ventasMip@es.com">Entrar</a></span></p>
				</div>
			</div>
		</div>
		
	</footer><!--/Footer-->
	


    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
    <script src="js/carrito.js"></script>
</body>
</html>