<?php

include 'conexion.php';

$con=Conectarse();

$x=$_POST['casilla'];

foreach ($x as $value){

 $res=mysql_query("delete from usertbl where username='".$value."'",$con);
  
}

 header("location:vistaadmin.php");

?>