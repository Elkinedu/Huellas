<?php

require_once("connection.php");

$fecha= date("d-m-Y");

$par=$_GET['par'];

$sql=mysql_query("SELECT * FROM bajas_abortos WHERE tipo='$par'");

?>

<html lang="es">
	<head>
		<title>PorciWeb</title>
		<link rel="stylesheet" href="css/dom.css">
    </head>
    
    <body>
    
    
<h1>PorciWeb / <?php echo $fecha ?></h1>
<h3>Historial <?php echo $par ?>s</h3>
        
<table border="1">
 <tr>	 
     <td>Codigo</td> 
     <td>Hembra</td> 
     <td>Fecha</td> 
     <td>Comentarios</td>
 </tr>


    
 <?php 
 while($fila=mysql_fetch_array($sql)){
 ?>
 <tr>
     <td><?php echo $fila[0]; ?></td> 	 
     <td><?php echo $fila[1]; ?></td>
     <td><?php echo $fila[2]; ?></td>
     <td><?php echo $fila[4]; ?></td>
 </tr>
 <?php
 }
 ?>
  
</table><br>