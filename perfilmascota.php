<?php 
session_start();
if(!isset($_SESSION["session_username"])) {
	header("location:login.php");
} else {
?>
<?php require_once("includes/connection.php"); 
?>

<?php

        if(isset($_POST["register"])){
	
	       $nombre=$_POST['nombre'];
           $peso=$_POST['peso'];
           $foto  = $_FILES['foto']['tmp_name'];
            
            $foto=mysql_real_escape_string(file_get_contents($_FILES["foto"]["tmp_name"]));

	        $sql="UPDATE mascotas SET peso='$peso', foto='$foto' WHERE nombre='$nombre'";
            $result=mysql_query($sql);
            
            header("location:vermascotas.php");
        }
?>

<?php 
        include("includes/header-herramientas.php");
        $mas=$_GET['mas'];
        $res=mysql_query("select * from mascotas where nombre='$mas'");

?>

<form action="perfilmascota.php" enctype="multipart/form-data" method="post">
    
<h1><center>Perfil <?php echo $mas ?></center></h1>    
 <?php 
 while($fila=mysql_fetch_array($res)){
 ?>
         <br><br><br><center><img width="100px" height="100px" border="1" src="data:image/png;base64,<?php echo base64_encode($fila['foto']); ?>" alt="titulo foto" /></center>
         <input type="file" name="foto" value="Examinar" accept="image/*"/>
         <br>Nombre *<input type="text" name="nombre" value="<?php echo $fila['nombre']; ?>" readonly />
         Tipo<input type="text" name="tipo" value="<?php echo $fila['tipo']; ?>" readonly/>
         Sexo<input type="text" name="sexo" value="<?php echo $fila['sexo']; ?>" readonly/>
         Raza<input type="text" name="raza" value="<?php echo $fila['raza']; ?>" readonly/>
         Peso<input type="text" name="peso" value="<?php echo $fila['peso']; ?>" />
         Fecha de Nacimiento<input type="text" name="fnaci" value="<?php echo $fila['fnacimiento']; ?>" readonly/>
         <br><center><?php if (!empty($message)) {echo "<p class=\"error\">" .$message . "</p>";} ?></center>
         <input type="submit" name="register" id="register" value="Actualizar" />
         
<?php
 }
 ?>
</form>


	

<?php
}
?>