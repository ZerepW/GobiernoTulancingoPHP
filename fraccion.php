<?PHP 
	session_start();
	include 'Conexion.php';
	if(isset($_SESSION["sesion_nombreUsuario"])){
		conectar();
		//NOMBRE DE USUARIO
		$queryUsuario =mysql_query("SELECT * FROM usuario WHERE nombreUsuario='".$_SESSION["sesion_nombreUsuario"]."'");
		$numrows=mysql_num_rows($queryUsuario);
		if($numrows==1){
			while ( $row=mysql_fetch_assoc($queryUsuario)) {
				$nombreUsuario = $row["nombreUsuario"];
			}
			
		}
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ejemplo Tabla</title>
    
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
		
						<?php // SELECCIONAR TABLA
						
							
							$sql ="SELECT * FROM tabla WHERE idTabla = '".$_GET['idTabla']."'";
							$tablas=mysql_query ($sql) or die(mysql_error());
							while ( $row=mysql_fetch_assoc($tablas)) {
								$idTabla = $row["idTabla"];
								$idFraccion = $row["idFraccion"];
								$actualizacion = $row["actualizacion"];
								$enlaceWeb = $row["enlaceWeb"];
								$enlaceDescarga = $row["enlaceDescarga"];
								
								$sql ="SELECT * FROM fraccion WHERE idFraccion = '".$idFraccion."'";
								$fracciones=mysql_query ($sql) or die(mysql_error());
								while ( $row=mysql_fetch_assoc($fracciones)) {
									$articulo = $row["articulo"];
									if($articulo==71){
										$articulo=70;
									}
									$fraccion = $row["fraccion"];
									$indice = $row["indice"];
									$descripcion = $row["descripcion"];
						?>
        <h4>Articulo <?php echo $articulo;?></h4>
		<sup><i>Ultima Actualización: <?php echo $actualizacion;?></i></sup><br>
        <b>Tabla <?php echo $indice;?> </b>- <?php echo $descripcion;?> <br><hr><br>
        <iframe style="width:100%; height: 500px;" src="<?php echo $enlaceWeb.'?widget=true&amp;headers=false&amp;chrome=false';?>"></iframe>
        <br>
        <a href="<?php echo $enlaceDescarga;?>" class="indigo lighten-1 waves-effect waves-light btn">Descargar <i class="material-icons right">file_download</i></a>
							<?php } } ?>
        <hr><br>

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