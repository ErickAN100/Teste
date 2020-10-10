<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.suam.Controle"%>
<%@ page import="com.suam.bean.Usuario"%>
<%
	String login= (String)session.getAttribute("login");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="css/materialize.min.css">
  <link rel="stylesheet" type="text/css" href="css/estilo.css">
  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="has-fixed-sidenav">
	<nav class="blue">
			<form name="form" method="get" action="Controle">
				<ul id="slide-out" class="sidenav">
			 		<li>
			 			<div class="user-view">
	      					<a href="#user"><img class="circle" src="image/login/avatar.png"></a>
	    				</div>
	    			<li>
	    				<a href="Feed.jsp">Home</a>
	    				<a href="Perfil.jsp">Meu perfil</a>
		    			
						
	    			</li>
	    			<li>
	    				<a href="#nome"><%=login%></a>
		    			<a>erickav72@gmail.com</a>
		    							
	    			</li>
	    			<li>
	    				<a href="Turma.jsp">Minha Turma</a>
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
    		</form>
  		</nav>
	 <main class="main">
	   <ul class="collection" >
	      	<li class="collection-item">
	      	<a class="waves-effect waves-light  modal-trigger" href="#modal1">
	      	<h4 class="corrigi">Aula #1 Introdução a Programação </h4>
	      	<p>Aula introdutoria de programação (nível iniciante)</p></a>
	      </li>
	   </ul>
	  	  <div id="modal1" class="modal">
    		<div class="modal-content">
  				<video class="responsive-video" controls>
    				<source src="Aula/Aula_Java.mp4" type="video/mp4">
  				</video>
    		</div>
    		<div class="modal-footer">
      			<a href="#!" class="modal-close waves-effect waves-green btn-flat">Fechar</a>
    		</div>
  		</div>
  		<ul class="collection" >
	      	<li class="collection-item">
	      	<a class="waves-effect waves-light  modal-trigger" href="#modal1">
	      	<h4 class="corrigi">Aula #2 Introdução a Programação </h4>
	      	<p>Aula introdutoria de programação (nível iniciante)</p></a>
	      </li>
	   </ul>
	  	  <div id="modal1" class="modal">
    		<div class="modal-content">
  				<video class="responsive-video" controls>
    				<source src="Aula/Aula_Java.mp4" type="video/mp4">
  				</video>
    		</div>
    		<div class="modal-footer">
      			<a href="#!" class="modal-close waves-effect waves-green btn-flat">Fechar</a>
    		</div>
  		</div>
  		<ul class="collection" >
	      	<li class="collection-item">
	      	<a class="waves-effect waves-light  modal-trigger" href="#modal1">
	      	<h4 class="corrigi">Aula #3 Introdução a Programação </h4>
	      	<p>Aula introdutoria de programação (nível iniciante)</p></a>
	      </li>
	   </ul>
	  	  <div id="modal1" class="modal">
    		<div class="modal-content">
  				<video class="responsive-video" controls>
    				<source src="Aula/Aula_Java.mp4" type="video/mp4">
  				</video>
    		</div>
    		<div class="modal-footer">
      			<a href="#!" class="modal-close waves-effect waves-green btn-flat">Fechar</a>
    		</div>
  		</div>
  		<ul class="collection" >
	      	<li class="collection-item">
	      	<a class="waves-effect waves-light  modal-trigger" href="#modal1">
	      	<h4 class="corrigi">Aula #4 Introdução a Programação </h4>
	      	<p>Aula introdutoria de programação (nível iniciante)</p></a>
	      </li>
	   </ul>
	  	  <div id="modal1" class="modal">
    		<div class="modal-content">
  				<video class="responsive-video" controls>
    				<source src="Aula/Aula_Java.mp4" type="video/mp4">
  				</video>
    		</div>
    		<div class="modal-footer">
      			<a href="#!" class="modal-close waves-effect waves-green btn-flat">Fechar</a>
    		</div>
  		</div>
  		<ul class="collection" >
	      	<li class="collection-item">
	      	<a class="waves-effect waves-light  modal-trigger" href="#modal1">
	      	<h4 class="corrigi">Aula #5 Introdução a Programação </h4>
	      	<p>Aula introdutoria de programação (nível iniciante)</p></a>
	      </li>
	   </ul>
	  	  <div id="modal1" class="modal">
    		<div class="modal-content">
  				<video class="responsive-video" controls>
    				<source src="Aula/Aula_Java.mp4" type="video/mp4">
  				</video>
    		</div>
    		<div class="modal-footer">
      			<a href="#!" class="modal-close waves-effect waves-green btn-flat">Fechar</a>
    		</div>
  		</div>
  		<ul class="collection" >
	      	<li class="collection-item">
	      	<a class="waves-effect waves-light  modal-trigger" href="#modal1">
	      	<h4 class="corrigi">Aula #6 Introdução a Programação </h4>
	      	<p>Aula introdutoria de programação (nível iniciante)</p></a>
	      </li>
	   </ul>
	  	  <div id="modal1" class="modal">
    		<div class="modal-content">
  				<video class="responsive-video" controls>
    				<source src="Aula/Aula_Java.mp4" type="video/mp4">
  				</video>
    		</div>
    		<div class="modal-footer">
      			<a href="#!" class="modal-close waves-effect waves-green btn-flat">Fechar</a>
    		</div>
  		</div>
  		<ul class="collection" >
	      	<li class="collection-item">
	      	<a class="waves-effect waves-light  modal-trigger" href="#modal1">
	      	<h4 class="corrigi">Aula #7 Introdução a Programação </h4>
	      	<p>Aula introdutoria de programação (nível iniciante)</p></a>
	      </li>
	   </ul>
	  	  <div id="modal1" class="modal">
    		<div class="modal-content">
  				<video class="responsive-video" controls>
    				<source src="Aula/Aula_Java.mp4" type="video/mp4">
  				</video>
    		</div>
    		<div class="modal-footer">
      			<a href="#!" class="modal-close waves-effect waves-green btn-flat">Fechar</a>
    		</div>
  		</div>
  		<ul class="collection" >
	      	<li class="collection-item">
	      	<a class="waves-effect waves-light  modal-trigger" href="#modal1">
	      	<h4 class="corrigi">Aula #8 Introdução a Programação </h4>
	      	<p>Aula introdutoria de programação (nível iniciante)</p></a>
	      </li>
	   </ul>
	  	  <div id="modal1" class="modal">
    		<div class="modal-content">
  				<video class="responsive-video" controls>
    				<source src="Aula/Aula_Java.mp4" type="video/mp4">
  				</video>
    		</div>
    		<div class="modal-footer">
      			<a href="#!" class="modal-close waves-effect waves-green btn-flat">Fechar</a>
    		</div>
  		</div>
  		<ul class="collection" >
	      	<li class="collection-item">
	      	<a class="waves-effect waves-light  modal-trigger" href="#modal1">
	      	<h4 class="corrigi">Aula #9 Introdução a Programação </h4>
	      	<p>Aula introdutoria de programação (nível iniciante)</p></a>
	      </li>
	   </ul>
	  	  <div id="modal1" class="modal">
    		<div class="modal-content">
  				<video class="responsive-video" controls>
    				<source src="Aula/Aula_Java.mp4" type="video/mp4">
  				</video>
    		</div>
    		<div class="modal-footer">
      			<a href="#!" class="modal-close waves-effect waves-green btn-flat">Fechar</a>
    		</div>
  		</div>
  		<ul class="collection" >
	      	<li class="collection-item">
	      	<a class="waves-effect waves-light  modal-trigger" href="#modal1">
	      	<h4 class="corrigi">Aula #10 Introdução a Programação </h4>
	      	<p>Aula introdutoria de programação (nível iniciante)</p></a>
	      </li>
	   </ul>
	  	  <div id="modal1" class="modal">
    		<div class="modal-content">
  				<video class="responsive-video" controls>
    				<source src="Aula/Aula_Java.mp4" type="video/mp4">
  				</video>
    		</div>
    		<div class="modal-footer">
      			<a href="#!" class="modal-close waves-effect waves-green btn-flat">Fechar</a>
    		</div>
  		</div>
  		</main>
	   <footer class="page-footer blue">
		<div class="footer-copyright">
			<div class="container center">
				&copy;2020 Copyright EducaHack
			</div>
		</div>
	
	</footer>
	   
	 <script type="text/javascript" src="js/materialize.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				$('.scrollspy').scrollSpy();
			});
		</script>
		 <script>
	$(document).ready(function(){
		$('.sidenav').sidenav();
	});
  </script>
  <script type="text/javascript">
   		$(document).ready(function(){
	    $('.modal').modal();
	  	});
   </script>
</body>
</body>
</html>