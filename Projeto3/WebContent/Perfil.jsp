<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.suam.Controle"%>
<%@ page import="com.suam.bean.Usuario"%>
<%
	String login= (String)session.getAttribute("login");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">
<head>
   <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="css/materialize.min.css">
  <link rel="stylesheet" type="text/css" href="css/estilo.css">
  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
</head>
<body class="has-fixed-sidenav">
    <div class="block">
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
	</div>
    <main class="main">
   		<img src="image/login/avatar.png" class="avatar">

      <ul class="collection">
       <li class="collection-header"><h4> Erick Araujo do Nascimento</h4></li>
      <li class="collection-item">E-mail: erickaraujo@souunsuam.com.br</li>
      <li class="collection-item">Matricula: 213131541 </li>
      <li class="collection-item">Status: Cursando</li>
      <li class="collection-item">CPF: 13412414141</li>
    </ul>

</main>
   <footer class="page-footer blue">
		<div class="footer-copyright">
			<div class="container center">
				&copy;2020 Copyright EducaHack
			</div>
		</div>
	</footer>


    <!--  Scripts-->
    <script src="js/materialize.js"></script>

    </body>
     <script>
		$(document).ready(function(){
			$('.sidenav').sidenav();
		});
	</script>
</html>
</body>
</html>