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
        
        $id=$_GET['casilla'];

    if(isset($_POST["register"])){
                    
	   $idhembra=$_POST['idhembra'];
	   $fcubri=$_POST['fcubri'];
        
       $nfecha= date("Y-m-d", strtotime("$fcubri + 20 day"));
        
        
       $sql="UPDATE alarmas SET eventorealizado='Si' WHERE idhembra=$idhembra";
       $result=mysql_query($sql);
            
	   $sql="INSERT INTO alarmas
			(fecha, idhembra, estado, idproxeven, proxevento, fproxevento, eventorealizado) 
			VALUES('$fcubri','$idhembra', 'Cubierta', '1', 'Revisión Celo', '$nfecha','No')";
            $result=mysql_query($sql);
            
            header("location:mostrarhembras.php");
        }
            
?>

<?php include("includes/header-herramientas.php"); ?>


<form action="cubricion.php" method="post">
    
   <h1><center>A&ntilde;adir Cubrici&oacute;n</center></h1><br><br>
  
         <br>Hembra*<input type="number" name="idhembra" value="<?php  echo $id ?>" readonly required/><br>
         Fecha<input type="date" name="fcubri" required/><br>
         <input type="submit" name="register" id="register" value="A&ntilde;adir" />
</form>


<?php
}
?>

