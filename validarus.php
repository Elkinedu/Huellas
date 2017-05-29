<?php
session_start();
$usuario=$_SESSION['session_username'];

if($usuario=="administrador@huellasyrazas.com"){
    header("Location: verclientes.php");
}else{
    header("Location: vermascotas.php");
}

?>