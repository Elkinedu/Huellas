<?php 
session_start();
    
if(!isset($_SESSION["session_username"])) {
	header("location:login.php");
} else {
?>

<?php

require_once("includes/connection.php");
$usuario=$_SESSION['session_username']; 

$res=mysql_query("select * from mascotas where dueno='$usuario'");
    
?>

<?php include("includes/header-herramientas.php"); ?>




<table border="1">
<tr>
    <th colspan="3"><h1>Mascotas <a href="mascotas.php">(+)</a></h1></th>
</tr>
 <tr>	    
     <th>Nombre</th> 
     <th>Foto</th>
     <th>Perfil</th>
 </tr>


    
 <?php 
 while($fila=mysql_fetch_array($res)){
 ?>
 <tr>
     <th><?php echo $fila['nombre']; ?></th>
     <th><img width="50px" height="50px" border="1" src="data:image/png;base64,<?php echo base64_encode($fila['foto']); ?>" alt="titulo foto" /></th>
     <th><a href="perfilmascota.php?mas=<?php echo $fila['nombre']; ?>">Ver</a></th>
     
 </tr>
 <?php
 }
 ?>
  
</table><br>



<?php
}
?>