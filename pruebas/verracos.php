<?php 
session_start();
if(!isset($_SESSION["session_username"])) {
	header("location:login.php");
} else {
?>
<?php require_once("includes/connection.php"); 
        require_once("numalertas.php");
?>

<?php

        if(isset($_POST["register"])){
	$id=$_POST['id'];
	$raza=$_POST['raza'];
	$fllegada=$_POST['fllegada'];
	$fnacimiento=$_POST['fnacimiento'];
	$peso=$_POST['peso'];
	$precio=$_POST['precio'];
    $usuario=$_SESSION["session_username"];

	$sql="INSERT INTO verracos
			(id, raza, fllegada,fnacimiento, peso, precio, usuario) 
			VALUES('$id','$raza', '$fllegada', '$fnacimiento', '$peso', '$precio', '$usuario')";
            $result=mysql_query($sql);
            header("location:mostrarverracos.php");
        }
        
        
?>

<?php include("includes/header-herramientas.php"); ?>

<form action="verracos.php" method="post">
  <h1><center>A&ntilde;adir Verraco</center></h1><br>
         <br>Identificador *<input type="number" name="id" required />
         Raza<select name="raza">
  		        <option value="Duroc">Duroc</option>
  		        <option value="Hamsphire">Hamsphire</option>
  		        <option value="Landrace">Landrace</option>
  		        <option value="LargeWhite">Large White</option>
                <option value="Pietrain">Pietrain</option>
                <option value="Ibericoret">Ibérico Retinto</option>
                <option value="Ibericoentre">Ibérico Entrepelado</option>
	    </select>
         Fecha de Llegada<input type="date" name="fllegada" required/>
         Fecha de Nacimiento<input type="date" name="fnacimiento" required/>
         Peso<input type="number" name="peso" required/>
         Precio<input type="number" name="precio" required/>
         Comentarios<textarea id="test" name="comentario" rows="5" cols="48" value=""></textarea>
         <input type="submit" name="register" id="register" value="A&ntilde;adir" />
</form>

<?php include("includes/footer.php"); ?>
	

<?php
}
?>
