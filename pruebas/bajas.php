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
	   $fbaja=$_POST['fbaja'];
       $comentario=$_POST['comentario'];
        
       $sql="UPDATE alarmas SET eventorealizado='Si' WHERE idhembra=$idhembra AND eventorealizado='No'";
       $result=mysql_query($sql);
        
        $sql="INSERT INTO bajas_abortos(idhembra,fecha,tipo,comentarios) VALUES ('$idhembra','$fbaja','Baja','$comentario')";
        $result=mysql_query($sql);
        
        $sql="DELETE FROM hembras WHERE IDHEMBRA='$idhembra'";
        $result=mysql_query($sql);
            
            header("location:alertas.php");
        }
            
?>

<?php include("includes/header-herramientas.php"); ?>


<form action="bajas.php" method="post">
    
   <h1><center>A&ntilde;adir Baja</center></h1><br><br>
  
         <br>Hembra*<input type="number" name="idhembra" value="<?php  echo $id ?>" readonly required/><br>
         Fecha<input type="date" name="fbaja" required/><br>
         Comentarios<textarea id="test" name="comentario" rows="5" cols="48" value=""></textarea>
         <input type="submit" name="register" id="register" value="A&ntilde;adir" />
</form>


<?php
}
?>