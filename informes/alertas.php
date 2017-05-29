<?php 

require_once("connection.php");

$fecha= date("d-m-Y");
$par=$_GET['par'];

    $sql=mysql_query("SELECT * FROM alarmas WHERE fproxevento='$par' AND eventorealizado='No' AND idproxeven>0"); 
?>


<html lang="es">
	<head>
		<title>PorciWeb</title>
		<link rel="stylesheet" href="css/dom.css">
    </head>
    
    <body>
    
    
<h1>PorciWeb / <?php echo $fecha ?></h1>
<h3>Alertas <?php echo $par ?></h3>
        
<table border="1">
 <tr>	 
     <td>Hembra</td> 
     <td>Estado</td> 
     <td>Proximo Evento</td> 	 
     <td>Fecha Proximo Evento</td>
 </tr>


    
 <?php 
 while($fila=mysql_fetch_array($sql)){
 ?>
 <tr>
     <td><?php echo $fila[2]; ?></td> 	 
     <td><?php echo $fila[3]; ?></td>
     <td><?php echo $fila[5]; ?></td>
     <td><?php echo $fila[6]=date('d-m-Y',strtotime($fila[6])); ?></td>
 </tr>
 <?php
 }
 ?>
  
</table><br>
