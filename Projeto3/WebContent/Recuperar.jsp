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
    <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
     <link rel="stylesheet" type="text/css" href="css/estilo.css">
</head>
<body>
    <nav class="light-blue lighten-1" role="navigation">
        <div class="nav-wrapper container"><a id="logo-container" href="#" class="brand-logo center">EducaHacking</a></div>
        <ul class="left">
            <li><a href="#">Cancelar</a></li>
        </ul>
    </nav>
    <main class="main">

	
        <div class="container">
            <br><br>
            <div class="row">
                <div class="input-field col m6 l6 s12 offset-l3 offset-m3">
                    <input id="password" type="password" class="validate">
                    <label for="password">Insira a nova senha</label>
                </div>

                <div class="input-field col m6 l6 s12 offset-l3 offset-m3">
                    <input id="password" type="password" class="validate">
                    <label for="password">Insira a senha novamente</label>
               
            
            		<div class='row center'>
						<button type='submit' name='btn_login' class='col s12 btn btn-large waves-effect darken-4'>Enviar</button>
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
    <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="js/materialize.js"></script>
    <script src="js/init.js"></script>

    </body>
</html>
