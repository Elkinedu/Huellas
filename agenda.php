<?php 
session_start();
if(!isset($_SESSION["session_username"])) {
	header("location:login.php");
} else {
?>
<?php require_once("includes/connection.php"); 
?>

<?php include("includes/header-herramientas.php"); ?>

<form action="agendat.php" method="post">
  <h1><center>Agendar</center></h1><br><br>
         <br>Mascota<select name="nombre" autofocus required>
        
            <option selected hidden></option>
            <?php    
        
                $dueno=$_SESSION["session_username"];
        
                $res=mysql_query("SELECT nombre FROM mascotas WHERE dueno='$dueno'");
                while($fila=mysql_fetch_array($res)){;
            ?>  

            <option value="<?php echo $fila[0]?>"><?php echo $fila[0]?></option>

<?php } ?>
    
</select>
             Servicio<select name="servicio">
  		        <option value="Ba&ntilde;o">Ba&ntilde;o</option>
  		        <option value="Peluqueria">Peluqueria</option>
                <option value="Ba&ntilde;o y Peluqueria">Ba&ntilde;o y Peluqueria</option>
                <option value="Veterinaria">Veterinaria</option>
	    </select>
         Fecha<input type="date" onchange = "this.form.submit()" name="fagenda" required/>
</form>
	

<?php
}
?>