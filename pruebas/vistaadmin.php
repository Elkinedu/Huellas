<?php 
session_start();
    
if(!isset($_SESSION["session_username"])) {
	header("location:login.php");
} else {
?>

<?php

include 'conexion.php';
    require_once("numalertas.php");

$con=Conectarse();
$usuario=$_SESSION['session_username']; 

$res=mysql_query("select * from usertbl",$con);
    
    echo "Usuario: ".$usuario."<br>";
    echo '<a href="logout.php">Cerrar Sesi&oacute;n</a>';
    
?>

<?php include("includes/header-herramientas.php"); ?>


<!DOCTYPE html>
<html>
<body>

<table border="1">
    
    <caption><h1>Usuarios Registrados</h1></caption>

 <tr>	 
     <th>Nombre Completo</th> 	 
     <th>E-mail</th> 
     <th>Nombre de Usuario</th> 	 
     <th>Contrase&ntilde;a</th>
     <th></th> 
 </tr>

 <?php 
 while($fila=mysql_fetch_array($res)){
 ?>
 <tr>
    <form method="post" action="eliminarusu.php">	 
     <th><?php echo $fila['full_name']; ?></th> 	 
     <th><?php echo $fila['email']; ?></th>
     <th><?php echo $fila['username']; ?></th>
     <th><?php echo $fila['password']; ?></th>
     <th><input type="checkbox" name="casilla[]" value="<?php echo $fila['username']; ?>"></th>
 </tr>
 <?php
 }
 ?>
     
<tr><th></th><th></th><th></th><th></th><th><button type="submit" value="Eliminar">Eliminar</button></th></tr>     
  
</table><br>



</form>

</body>
</html> 

<?php include("includes/footer.php"); ?>

<?php
}
?>