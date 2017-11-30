<?php
session_start();
include 'Conexion.php';
conectar();
if(isset($_SESSION["sesion_nombreUsuario"])){
	header("Location: administracion.php");
}
//SI SE INICIA SESION ALUMNO
if(isset($_POST["iniciar"])){
	//ESTABLECER VARIABLES nickUsuario Y contraUsuario
	if(!empty($_POST['nombreUsuario']) && !empty($_POST['passwordUsuario'])) {
		$nombreUsuario=$_POST['nombreUsuario'];
		$passwordUsuario=$_POST['passwordUsuario'];
		

		//BUSCAR USUARIO EN LA BASE DE DATOS
		$queryUsuario =mysql_query("SELECT * FROM usuario WHERE nombreUsuario='".$nombreUsuario."' AND passwordUsuario='".$passwordUsuario."'") or die();
		$numrows=mysql_num_rows($queryUsuario);
		//VARIABLES matriculaUsuario y passwordUsuario DE LA BASE DE DATOS
		if($numrows!=0)	{
			while($row=mysql_fetch_assoc($queryUsuario))
			{
				$dbnombreUsuario=$row['nombreUsuario'];
				$dbpasswordUsuario=$row['passwordUsuario'];
			}
			//COMPROBAR SI COINCIDE USUARIO Y CONTRASEÑA
			if($nombreUsuario == $dbnombreUsuario && $passwordUsuario == $dbpasswordUsuario){
				$_SESSION['sesion_nombreUsuario']=$nombreUsuario;
				//REDIRECCIONAR
				header("Location: administracion.php");
			} else {
				$ERROR = "No coincide usuario y contraseña.";
			}
		} else {
			$ERROR = "Nombre de usuario o contraseña inválida.";
		}
	} else {
		$ERROR = "Todos los campos son requeridos.";
	}
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Administrador - Iniciar Sesión</title>
    
        <link rel="shortcut icon" type="image/x-icon" href="assets/src/ico/favicon.ico" />
        <link rel="apple-touch-icon" sizes="57x57" href="assets/src/ico/apple-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="60x60" href="assets/src/ico/apple-icon-60x60.png">
        <link rel="apple-touch-icon" sizes="72x72" href="assets/src/ico/apple-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="76x76" href="assets/src/ico/apple-icon-76x76.png">
        <link rel="apple-touch-icon" sizes="114x114" href="assets/src/ico/apple-icon-114x114.png">
        <link rel="apple-touch-icon" sizes="120x120" href="assets/src/ico/apple-icon-120x120.png">
        <link rel="apple-touch-icon" sizes="144x144" href="assets/src/ico/apple-icon-144x144.png">
        <link rel="apple-touch-icon" sizes="152x152" href="assets/src/ico/apple-icon-152x152.png">
        <link rel="apple-touch-icon" sizes="180x180" href="assets/src/ico/apple-icon-180x180.png">
        <link rel="icon" type="image/png" sizes="192x192"  href="assets/src/ico/android-icon-192x192.png">
        <link rel="icon" type="image/png" sizes="32x32" href="assets/src/ico/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="96x96" href="assets/src/ico/favicon-96x96.png">
        <link rel="icon" type="image/png" sizes="16x16" href="assets/src/ico/favicon-16x16.png">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="assets/src/ico/ms-icon-144x144.png">
        <meta name="theme-color" content="#ffffff">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="https://use.fontawesome.com/4d8678441e.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <style>
        nav{
            background-color: #fff;
        }
        nav a{
            color:#333333 !important;
        }
        nav li a:hover{
            color:#BA0913;
            border-bottom: solid 1px #BA0913;
        }
        p{
            text-align: justify !important;
        }
        footer{
            background-color:#333333 !important;
        }
        .socialicon{
            margin: 0px 10px;
        }
        .carousel{
            background: -moz-linear-gradient(45deg, #c126bc 0%, #7a1778 50%, #363796 100%) !important; /* FF3.6-15 */
            background: -webkit-linear-gradient(45deg, #c126bc 0%,#7a1778 50%,#363796 100%) !important; /* Chrome10-25,Safari5.1-6 */
            background: linear-gradient(45deg, #c126bc 0%,#7a1778 50%,#363796 100%) !important; /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
            max-height:200px;
        }
        .carousel-item{
            max-height:200px;
        }
        .carousel .carousel-item>img {
           max-height:200px;
           max-width: 1200px;
        }
        .contacticon{
            color:#7a1778;
            
        }
        .input-field .prefix.active{
            color:#7a1778!important;
        }
        
        .input-field input[type=date]:focus + label,
    .input-field input[type=text]:focus + label,
    .input-field input[type=email]:focus + label,
    .input-field input[type=password]:focus + label {
      color: #7a1778!important;
    }

    .input-field input[type=date]:focus,
    .input-field input[type=text]:focus,
    .input-field input[type=email]:focus,
    .input-field input[type=password]:focus {
      border-bottom: 2px solid #7a1778!important;
      box-shadow: none;
    }
    </style>
</head>
<body>
    <nav>
        <div class="nav-wrapper container">
            <a href="transparencia.php" class="brand-logo">
                    <img src="http://www.tulancingo.gob.mx/wp-content/uploads/2016/09/logopres.png" alt="Presidencia de Tulancingo" class="normal-logo" style="margin:12px;max-height: 40px;">
            </a>
            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a href="transparencia.php">Transparencia</a></li>
                <li><a href="transparencia.php#contacto">Contacto</a></li>
                <?php if(isset($_SESSION["sesion_nombreUsuario"])){ ?><li><a href="login.php">Administrador</a></li><?php } ?>
            </ul>
        </div>
    </nav>
    <div class="carousel carousel-slider">
            <center><a class="carousel-item" href="#one!"><img  src="assets/img/BN01.jpg"></a></center>
            <center><a class="carousel-item" href="#two!"> <img style="max-width:1500px;" src="assets/img/BN02.jpg"></a></center>
            <center><a class="carousel-item" href="#three!"><img style="max-width:1500px;" src="assets/img/BN03.jpg"></a></center>
    </div><br>
    <div class="container">
        <center>
			<?php if(!empty($ERROR)){?>
				<div class="row">
					
					 <div class="col s12 l6 push-l3">
						<div class="card-panel red darken-1">
							<span class="white-text"><strong>ERROR:</strong> <?php echo($ERROR);?></span>
						</div>
					</div>
				</div>
			<?php } ?>
						
            <div class="z-depth-1 grey lighten-4 row" style="width:100%; max-width:400px; display: inline-block; padding: 32px 48px 0px 48px; border: 1px solid #EEE;">
                <form class="col s12" method="post" action="">
                    <div class='row'>
                        <div class='col s12'>
                        </div>
                    </div>                    
                    <div class='row'>
                        <div class='input-field col s12'>
                            <i class="material-icons prefix">account_circle</i>
                            <input required name="nombreUsuario" type='text' id='nombreUsuario' />
                            <label for='user'>Nombre de Usuario</label>
                        </div>
                    </div>
                    <div class='row'>
                        <div class='input-field col s12'>
                            <i class="material-icons prefix">vpn_key</i>
                            <input required type='password' name='passwordUsuario' id='passwordUsuario' />
                            <label for='password'>Contraseña</label>
                        </div>
                    </div>
                    <br />
                    <center>
                        <div class='row'>
                                <button type='submit' name='iniciar' class='col s12 btn btn-large waves-effect indigo'>Iniciar Sesión</button>
                            </div>
                    </center>
                </form>
            </div>
        </center>
    </div>
    <footer class="page-footer">
        <div class="footer-copyright">
            <div class="container" style="font-size:12px">
                ©2017 DERECHOS RESERVADOS | PRESIDENCIA MUNICIPAL DE TULANCINGO
                <div class="grey-text text-lighten-4 right"><a href="#" class="grey-text text-lighten-4"><i class="fa fa-facebook-official"></i></a> <a href="#" class="socialicon grey-text text-lighten-4"><i class="fa fa-youtube"></i></a> <a href="#" class="grey-text text-lighten-4"><i class="fa fa-twitter"></i></a></div>
            </div>
          </div>
    </footer>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>    
    <script>
        $( document ).ready(function(){
            $(".button-collapse").sideNav();
            $('.carousel.carousel-slider').carousel({fullWidth: true});

        })
    </script>
</body>
</html>