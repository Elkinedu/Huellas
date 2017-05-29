<?php

require_once("connection.php");

$fecha= date("d-m-Y");

$sql=mysql_query("SELECT * FROM partos");

?>

<html lang="es">
	<head>
		<title>PorciWeb</title>
		<link rel="stylesheet" href="css/dom.css">
    </head>
    
    <body>
    
    
<h1>PorciWeb / <?php echo $fecha ?></h1>
<h3>Historial Partos</h3>
        
<table border="1">
 <tr>	 
     <td>Codigo</td> 
     <td>Hembra</td> 
     <td>Fecha</td> 
     <td>Vivos</td>
     <td>Muertos</td>
     <td>Momificados</td>
 </tr>


    
 <?php 
 while($fila=mysql_fetch_array($sql)){
 ?>
 <tr>
     <td><?php echo $fila[0]; ?></td> 	 
     <td><?php echo $fila[1]; ?></td>
     <td><?php echo $fila[2]; ?></td>
     <td><?php echo $fila[4]; ?></td>
     <td><?php echo $fila[5]; ?></td>
     <td><?php echo $fila[6]; ?></td>
 </tr>
 <?php
 }
 ?>
  
</table><br>