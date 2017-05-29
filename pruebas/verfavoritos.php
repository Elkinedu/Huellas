<?php 
session_start();
    
if(!isset($_SESSION["session_username"])) {
	header("location:login.php");
} else {
?>

<?php

require_once("includes/connection.php");
$usuario=$_SESSION['session_username']; 

$res=mysql_query("select * from hembras");
    
    echo "Usuario: ".$usuario."<br>";
    echo '<a href="logout.php">Cerrar Sesi&oacute;n</a>';
    
?>

<?php include("includes/header-herramientas.php"); ?>




<table border="1">
    <caption><h1>Hembras</h1></caption>
 <tr>	 
     <th>Identificador</th> 	 
     <th>Raza</th> 
     <th>Fecha de llegada</th> 	 
     <th>Fecha de nacimiento</th>
     <th>Peso</th>
     <th>Precio</th>
 </tr>


 <?php 
 while($fila=mysql_fetch_array($res)){
 ?>
 <tr>
     <th><?php echo $fila['ID']; ?></th> 	 
     <th><?php echo $fila['RAZA']; ?></th>
     <th><?php echo $fila['FLLEGADA']; ?></th>
     <th><?php echo $fila['FNACIMIENTO']; ?></th>
     <th><?php echo $fila['PESO']; ?></th>
     <th><?php echo $fila['PRECIO']; ?></th>
 </tr>
 <?php
 }
 ?>
    
  
</table><br>



<?php include("includes/footer.php"); ?>

<?php
}
?>