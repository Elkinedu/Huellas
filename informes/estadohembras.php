<?php 

require_once("connection.php");

$fecha= date("d-m-Y");
$par=$_GET['par'];

    $sql=mysql_query("SELECT * FROM hembras JOIN alarmas WHERE alarmas.idhembra=hembras.IDHEMBRA AND alarmas.estado='$par' AND alarmas.Eventorealizado='No'"); 
?>


<html lang="es">
	<head>
		<title>PorciWeb</title>
		<link rel="stylesheet" href="css/dom.css">
    </head>
    
    <body>
    
    
<h1>PorciWeb / <?php echo $fecha ?></h1>
<h3>Hembras <?php echo $par ?>s</h3>
        
<table border="1">
 <tr>	 
     <td>Id</td> 
     <td>Estado</td> 
     <td>Raza</td> 
     <td>Fecha de llegada</td> 	 
     <td>Fecha de nacimiento</td>
     <td>Peso</td>
     <td>Precio</td>
 </tr>


    
 <?php 
 while($fila=mysql_fetch_array($sql)){
 ?>
 <tr>
     <td><?php echo $fila[0]; ?></td> 	 
     <td><?php echo $fila[11]; ?></td>
     <td><?php echo $fila[1]; ?></td>
     <td><?php echo $fila[2]=date('d-m-Y',strtotime($fila[2])); ?></td>
     <td><?php echo $fila[3]=date('d-m-Y',strtotime($fila[3])); ?></td>
     <td><?php echo $fila[4]; ?></td>
     <td><?php echo $fila[5]; ?></td>
 </tr>
 <?php
 }
 ?>
  
</table><br>
