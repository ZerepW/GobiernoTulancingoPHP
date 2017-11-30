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
    <title>Transparencia</title>

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
            <center><a class="carousel-item" href="#one!"><img  src="assets/img/BN02.jpg"></a></center>
            <center><a class="carousel-item" href="#two!"> <img style="max-width:1500px;" src="assets/img/BN01.jpg"></a></center>
            <center><a class="carousel-item" href="#three!"><img style="max-width:1500px;" src="assets/img/BN03.jpg"></a></center>
    </div><br>
    <div class="container">
            <div class="row">
                <div class="col s12 m6">
                    <div class="card">
                        <div class="card-image">
                            <img src="assets/img/IMGL01.jpg" style="width:100%;">
                            <span class="card-title"><b>Artículo 69</b></span>
                        </div>
                        <div class="card-content">
                            <b>Obligaciones en Materia de Transparencia Comunes de la Ley de Transparencia y Acceso a la Información Pública para el Estado de Hidalgo</b><br><br>                          
                            <p>Los Sujetos Obligados deberán poner a disposición del publico y mantener actualizada, en sus respectivos medios electrónicos, de acuerdo con sus facultades, atribuciones, funciones u objeto social, según corresponda, la información por lo menos, de los temas, documentos y politicas que a continuación se señalan.</p>
                        </div>
                        <div class="card-action">
                            <a href="fraccionescomunes.php" style="color:#BA0913">Ver más</a>
                        </div>
                    </div>
                </div>
                <div class="col s12 m6">
                    <div class="card">
                        <div class="card-image">
                            <img src="assets/img/IMGL02.jpg"  style="width:100%;  ">
                            <span class="card-title"><b>Artículo 70</b></span>
                        </div>
                        <div class="card-content">
                            <b>Obligaciones en Materia de Transparencia Específicas de la Ley de Transparencia y Acceso a la Información Pública para el Estado de Hidalgo</b><br><br>                       
                            <p> Además de lo señalado en el artículo anterior de la presente Ley, los sujetos obligados del Poder Ejecutivo Estatal y Municipales, deberán poner a disposición del público y actualizar la información de esta tabla.<br><br><br></p>
                        </div>
                        <div class="card-action">
                            <a href="fraccionesespecificas.php" style="color:#BA0913">Ver más</a>
                        </div>
                    </div>
                </div>
            </div> 
            <hr>
            <div id="contacto">
                <center><h3>Contacto</h3></center>
                <div id="map" style="height:400px; width:100%; background-color:#333; border-radius:15px">
                </div>
                <div class="row">
                    <div class="col s4" style="font-size:12px">
                        <center>
                            <h2><i class="material-icons medium contacticon">location_on</i></h2>
                            Boulevard Nuevo San Nicolás, S/N<br>
                            43640 Tulancingo, Hgo
                        </center>
                    </div>
                    <div class="col s4" style="font-size:12px">
                            <center>
                                <h2><i class="material-icons medium contacticon">perm_phone_msg</i></h2>
                                Tel: 01 775 755 8450<br>
                                Correo: transparencia@tulancingo.gob.mx
                            </center>
                    </div>
                    <div class="col s4" style="font-size:12px">
                            <center>
                                <h2><i class="material-icons medium contacticon">access_time</i></h2>
                                Horarios de Atención : 8:30 AM– 16:00 PM<br>
                                Lunes a Viernes
                            </center>
                    </div>
                </div>
                <br>
            </div>
    </div>
    <footer class="page-footer">
        <div class="footer-copyright">
            <div class="container" style="font-size:12px">
                ©2017 DERECHOS RESERVADOS | PRESIDENCIA MUNICIPAL DE TULANCINGO
                <div class="grey-text text-lighten-4 right"><a href="#" class="grey-text text-lighten-4"><i class="fa fa-facebook-official"></i></a> <a href="#" class="socialicon grey-text text-lighten-4"><i class="fa fa-youtube"></i></a> <a href="#" class="grey-text text-lighten-4"><i class="fa fa-twitter"></i></a></div>
            </div>
          </div>
    </footer>
    <script>
      function initMap() {
        var presidencia = {lat: 20.107492, lng: -98.382192};
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 16,
            center: presidencia,
            mapTypeId: 'satellite'
        });
        var marker = new google.maps.Marker({
          position: presidencia,
          map: map
        });
      }
    </script>
    
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDDO2DalHzpdyQGQ3eVTUCs8EDF0q6NUzk&callback=initMap">
    </script>
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