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
    $tipo=$_POST['tipo'];
    $sexo=$_POST['sexo'];
	$raza=$_POST['raza'];
	$fnacimiento=$_POST['fnacimiento'];
	$peso=$_POST['peso'];
    $dueno=$_SESSION["session_username"];
    $foto  = $_FILES['foto']['tmp_name'];
            
            $foto=mysql_real_escape_string(file_get_contents($_FILES["foto"]["tmp_name"]));

	$sql="INSERT INTO mascotas
			(nombre, tipo, sexo, raza,fnacimiento, peso, dueno,foto) 
			VALUES('$nombre','$tipo', '$sexo', '$raza', '$fnacimiento', '$peso', '$dueno', '$foto')";
            $result=mysql_query($sql);
            
            header("location:vermascotas.php");
        }
?>

<?php include("includes/header-herramientas.php"); ?>

<form action="mascotas.php" enctype="multipart/form-data" method="post">
  <h1><center>A&ntilde;adir Mascota</center></h1><br><br>
            <br>Foto<input type="file" name="foto" value="Examinar" accept="image/*"/>
            <input type="text" name="nombre" placeholder="Nombre*" required />
            <select name="tipo" required>
                <option value="" Hidden>Especie</option>
  		        <option value="Perro">Perro</option>
  		        <option value="Gato">Gato</option>
	         </select>
             <select name="sexo" required>
                <option value="" Hidden>Sexo</option>
  		        <option value="Macho">Macho</option>
  		        <option value="Hembra">Hembra</option>
	         </select>
             <select name="raza" required>
                <option value="" Hidden>Raza</option>
  		        <option value="Pastor Alemán">Pastor Alemán</option>
  		        <option value="Golden Retriever">Golden Retriever</option>
  		        <option value="Rotweiler">Rotweiler</option>
  		        <option value="Beagle">Beagle</option>
                <option value="Labrador Retriever">Labrador Retriever</option>
                <option value="Boxer">Boxer</option>
                <option value="Pit Bull">Pit Bull</option>
            </select>
            <input type="text" name="fnacimiento" onfocus="(this.type='date')" placeholder="Fecha de Nacimiento" required/>
            <input type="number" name="peso" placeholder="Peso" required/>
            <input type="submit" name="register" id="register" value="A&ntilde;adir" />
</form>


	

<?php
}
?>
