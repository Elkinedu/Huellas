<?php 
session_start();
if(!isset($_SESSION["session_username"])) {
	header("location:login.php");
} else {
?>
<?php require_once("includes/connection.php"); 
?>

<?php

       /* if(isset($_POST["register"])){
	
	       $nombre=$_POST['nombre'];
           $peso=$_POST['peso'];
           $foto  = $_FILES['foto']['tmp_name'];
            
            $foto=mysql_real_escape_string(file_get_contents($_FILES["foto"]["tmp_name"]));

	        $sql="UPDATE mascotas SET peso='$peso', foto='$foto' WHERE nombre='$nombre'";
            $result=mysql_query($sql);
            
            header("location:vermascotas.php");
        } */
?>

<?php 
        include("includes/header_herramientas_admin.php");
        $usu=$_GET['usu'];
        $res=mysql_query("select * from usertbl where full_name='$usu'");

?>

<form action="" method="post">
    
<h1><center>Perfil - <?php echo $usu ?></center></h1>    
 <?php 
 while($fila=mysql_fetch_array($res)){
 ?>
         <br><br><br>Nombre *<input type="text" name="nombre" value="<?php echo $fila['full_name']; ?>" readonly />
         Email<input type="email" name="mail" value="<?php echo $fila['username']; ?>" readonly/>
         Dirección<input type="text" name="direccion" value="<?php echo $fila['direccion']; ?>" readonly/>
         Numero Celular<input type="text" name="celular" value="<?php echo $fila['ncelular']; ?>" readonly/>
         Fecha de Registro<input type="text" name="fregistro" value="<?php echo $fila['fcreacion']; ?>" />
         Estado<input type="text" name="estado" value="<?php echo $fila['estado']; ?>" readonly/>
         <br><center><?php if (!empty($message)) {echo "<p class=\"error\">" .$message . "</p>";} ?></center>
         <input type="submit" name="register" id="register" value="Actualizar" />
         
<?php
 }
 ?>
</form>


	

<?php
}
?>