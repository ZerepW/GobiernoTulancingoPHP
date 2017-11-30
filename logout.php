<!DOCTYPE html>
<?php
session_start();
if(!isset($_SESSION["sesion_nombreUsuario"])) {
	header("location: login.php");
} else {
	session_destroy();
	header("location: login.php");
}
?>