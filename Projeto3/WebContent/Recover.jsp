<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
    <title>Recuperação de senha</title>

    <!-- CSS  -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="css/materialize.min.css">
  <link rel="stylesheet" type="text/css" href="css/estilo.css">
  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
</head>
<body>
    <nav class="light-blue lighten-1" role="navigation">
        <div class="nav-wrapper container"><a id="logo-container" href="#" class="brand-logo center">EducaHack</a>
        </div>
    </nav>
    <main class="main">
        <div class="container meio">
            <div class="row">
            	<div class="input-field col m6 l6 s12 offset-l3 offset-m3">
            		<input id="email" type="email" class="validate">
                    	<label for="email">Insira o e-mail cadastrado na conta</label>
            	
	            
		            <div class='row center'>
						<button type='submit' name='btn_login' class='col s12 btn btn-large waves-effect indigo'>Enviar</button>
			       		<a href="index.html">Voltar</a>
			       	</div>
				
           		</div>
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


    <!--  Scripts-->
    <script src="js/materialize.js"></script>
	<script type="text/javascript">
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
