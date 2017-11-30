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
	if(isset($_POST["guardar"])){
		if(isset($_POST["enlaceWEB"]) && isset($_POST["enlaceDescarga"]) && isset($_POST["idTabla"])){
			$enlaceWEB = $_POST["enlaceWEB"];
			$enlaceDescarga = $_POST["enlaceDescarga"];
			$idTabla = $_POST["idTabla"];
			$hoy = date("Y-m-d H:i:s");
			$pagina= "location:administracion.php";
			$queryUpdate =mysql_query("UPDATE tabla SET actualizacion = '".$hoy."', enlaceWEB = '".$enlaceWEB."', enlaceDescarga = '".$enlaceDescarga."' WHERE idTabla = ".$idTabla."") or die(mysql_error());
			header($pagina);
			
		}
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Administración - Portal</title>
    
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
        td, th{
            border-radius:0px;
        }

        input[type=date]:focus + label,
    input[type=text]:focus + label,
    input[type=email]:focus + label,
    input[type=password]:focus + label {
      color: #7a1778!important;
    }

    input[type=date]:focus,
    input[type=text]:focus,
    input[type=email]:focus,
    input[type=password]:focus {
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
                <?php if(isset($_SESSION["sesion_nombreUsuario"])){ ?><li><a href="logout.php">Salir</a></li><?php } ?>
            </ul>
        </div>
    </nav>
    <div class="carousel carousel-slider">
            <center><a class="carousel-item" href="#one!"><img  src="assets/img/BN01.jpg"></a></center>
            <center><a class="carousel-item" href="#two!"> <img style="max-width:1500px;" src="assets/img/BN02.jpg"></a></center>
            <center><a class="carousel-item" href="#three!"><img style="max-width:1500px;" src="assets/img/BN03.jpg"></a></center>
    </div><br>
    <div class="container">
        <h4>Bienvenido Usuario</h4><hr>

        <table class="striped responsive-table">
                <thead class="purple lighten-1 white-text" >
                    <tr>
                        <th>Artículo</th>
                        <th>Fracción</th>
                        <th>Tabla</th>
                        <th>Ult. Actualización</th>
                        <th>Enlace WEB</th>
                        <th>Enlace Descarga</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
					<?php // SELECCIONAR EQUIPO CPE
					$sql ="SELECT * FROM fraccion ORDER BY articulo ASC";
					$fracciones=mysql_query ($sql) or die(mysql_error());
					while ( $row=mysql_fetch_assoc($fracciones)) {
						$idFraccion = $row["idFraccion"];
						$articulo = $row["articulo"];
						$indice = $row["indice"];
						if($articulo == 71){
							$articulo = 70;
						}
						$fraccion = $row["fraccion"];
						$descripcion = $row["descripcion"];
						$sql ="SELECT * FROM tabla WHERE idFraccion = '".$idFraccion."'";
						$tablas=mysql_query ($sql) or die(mysql_error());
						while ( $row=mysql_fetch_assoc($tablas)) {
							$idTabla = $row["idTabla"];
							$actualizacion = $row["actualizacion"];
							$enlaceWeb = $row["enlaceWeb"];
							$enlaceDescarga = $row["enlaceDescarga"];
						?>
                    <tr><form method="POST" action="">
                        <td><?php echo $articulo?></td>
                        <td><?php echo $fraccion?></td>
                        <td><?php echo $indice?></td>
                        <td><?php echo $actualizacion?></td>
						<input type="hidden" name="idTabla" value="<?php echo $idTabla;?>">
                        <td><input type="text" name="enlaceWEB" required value="<?php echo $enlaceWeb?>"></td>
                        <td><input type="text" name="enlaceDescarga" required value="<?php echo $enlaceDescarga?>"></td>
                        <td><a href="#modal<?php echo $idTabla?>" class="modal-trigger purple lighten-1 waves-effect waves-light btn"><i class="material-icons">remove_red_eye</i></a><br><br><button name="guardar" class="purple lighten-1 waves-effect waves-light btn"><i class="material-icons">save</i></button></td>
					</form></tr>
					<div id="modal<?php echo $idTabla?>" class="modal">
						<div class="modal-content">
							<h4>Art. <?php echo $articulo?></h4>
							<h6><b>Fracción <?php echo $fraccion?> - Tabla <?php echo $indice?></b></h6>
							<p>Ultima Actualización: <?php echo $actualizacion?></p>
							<p><?php echo $descripcion?></p><br>
							<a href="fraccion.php?idTabla=<?php echo $idTabla?>" class="purple lighten-1 waves-effect waves-light btn">Ver Tabla <i class="material-icons right">find_in_page</i></a>
							<a href="<?php echo $enlaceDescarga?>" class="indigo lighten-1 waves-effect waves-light btn">Descargar <i class="material-icons right">file_download</i></a>
							
						</div>
						<div class="modal-footer">
							<a href="#!" class="modal-action modal-close waves-effect waves-purple btn-flat">Cerrar</a>
						</div>
					</div>
					<?php } } ?>
                </tbody>
            </table><br>
        <br><hr><br>
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
            $('.modal').modal();

        })
    </script>
</body>
</html>