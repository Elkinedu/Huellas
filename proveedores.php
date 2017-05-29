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
    $nit=$_POST['nit'];
	$nombre=$_POST['nompro'];
    $direccion=$_POST['direccion'];
	$fijo=$_POST['fijo'];
	$celular=$_POST['celular'];
	$mail=$_POST['mail'];
    $nomven=$_POST['nomven'];
    $numven=$_POST['numven'];

	$sql="INSERT INTO proveedores
			(nit, nombre, direccion, numfijo,numcelular, mail, nom_vendedor, num_vendedor) 
			VALUES('$nit','$nombre', '$direccion', '$fijo', '$celular', '$mail', '$nomven', '$numven')";
            $result=mysql_query($sql);
            
            header("location:verproveedores.php");
        }
?>

<?php include("includes/header_herramientas_admin.php"); ?>

<form action="proveedores.php" method="post">
  <h1><center>Proveedores</center></h1><br><br>
         <br>   <input type="number" name="nit" placeholder="NIT*"autofocus required />
         <input type="text" name="nompro" placeholder="Nombre*" required />
         <input type="text" name="direccion" placeholder="Dirección"/>
         <input type="tel" pattern="[0-9]{7}" name="fijo" placeholder="Número Fijo" />
         <input type="tel" pattern="[0-9]{10}" name="celular" placeholder="Número Celular"/>
         <input type="email" name="mail" placeholder="Email" />
         <input type="text" name="nomven" placeholder="Nombre Vendedor" />
         <input type="tel" pattern="[0-9]{10}" name="numven" placeholder="Numero telefonico del vendedor" />
         <input type="submit" name="register" id="register" value="A&ntilde;adir" />
</form>


	

<?php
}
?>