<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.sql.*" 
    import="java.text.SimpleDateFormat"
    import="java.util.Date"
    %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="com.suam.Controle"%>
<%@ page import="com.suam.bean.Usuario"%>
<%
	String login = (String) session.getAttribute("login");
	String data = (String) request.getAttribute("data");
	String cpf = (String) request.getAttribute("cpf");
	String entrada = (String) request.getAttribute("entrada");
	String saida = (String) request.getAttribute("saida");

	List<Usuario> listaInfo= (ArrayList) request.getAttribute("listaInfo"); 
%>
<%
	Date date = new Date();
	SimpleDateFormat dataFormatada = new SimpleDateFormat("yyyy-MM-dd");
	SimpleDateFormat horaFormatada = new SimpleDateFormat("HH:mm");
	String mostraData = dataFormatada.format(date);
	String mostraHora = horaFormatada.format(date);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<!--Import materialize.css-->
	<link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Relatório</title>
	<link type="text/css" rel="stylesheet" href="css/estilo.css">
</head>
 <body class="has-fixed-sidenav" > 
	<div class="block">	       	
		<nav class="blue">
			<form name="form" method="get" action="Controle">
				<ul id="slide-out" class="sidenav">
			 		<li>
			 			<div class="user-view">
	      					<a href="#user"><img class="circle" src="image/login/avatar.png"></a>
	    				</div>
	    			<li>
	    				<a href="Perfil.jsp">Meu perfil</a>
		    			<a href="#nome"><%=login%></a>
						
	    			</li>
	    			<li>
		    			<a>erickav72@gmail.com</a>
		    			<a href="Turma.jsp">Minha Turma</a>
						
	    			</li>
	    			<li>
		    			<a href="Config.jsp">Configuração</a>
	    			</li>
	    			<%if(login.equals("adm")) {%>
			      	<li><a href="register.jsp">register</a></li>
			      	<%}else{%>
			      	<%}%>
			      	<li><a href="Controle">Sair</a></li>
		    	</ul>
		    	<a href="#" data-target="slide-out" class="sidenav-trigger show-on-large"><i class="material-icons">menu</i></a>
		    	<!--   <img src="image/logo/ItaltelLogo.png" class="body brand-logo center"></form>-->
    		
  		</nav>

		<nav>
    <div class="nav-wrapper white">
      <form name="form" method="get" action="Controle">
        <div class="input-field ">
          <input id="search" placeholder="Search" type="search" required>
          <label class="label-icon" for="search" ><i class="material-icons">search</i></label>
          <i class="material-icons">close</i>
        </div>
      </form>
    </div>
  </nav>

	
  

	  	
	  	
<!--Pesquisa ponto-->
<main class="main">

	</main>
	<footer class="page-footer blue">
		<div class="footer-copyright">
			<div class="container center">
				&copy;2020 Copyright Italtel
			</div>
		</div>
	</footer>
</div>		     
		<script type="text/javascript" src="js/materialize.min.js"></script>
		<script>
			$(document).ready(function(){
				$('.timepicker').timepicker();
			});    
		</script>
		<script>
			$(document).ready(function(){
				$('.sidenav').sidenav();
			});
		</script>
    </body>
</html>