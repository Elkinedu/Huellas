<?php

include 'conexion.php';

$con=Conectarse();

$x=$_POST['casilla'];

foreach ($x as $value){

 $res=mysql_query("delete from favoritos where titulo='".$value."'",$con);
  
}

 header("location:verfavoritos.php");

?>