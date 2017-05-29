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
	   $faborto=$_POST['faborto'];
       $comentario=$_POST['comentario'];
        
       $sql="UPDATE alarmas SET eventorealizado='Si' WHERE idhembra=$idhembra AND eventorealizado='No'";
       $result=mysql_query($sql);
                    

        
       $nfecha= date("Y-m-d", strtotime("$faborto + 25 day"));
            
	   $sql="INSERT INTO alarmas
			(fecha, idhembra, estado, idproxeven, proxevento, fproxevento, eventorealizado) 
			VALUES('$faborto','$idhembra', 'Vacia', '10', 'Celo y Cubrición', '$nfecha','No')";
            $result=mysql_query($sql);
        
        $sql="INSERT INTO bajas_abortos(idhembra,fecha,tipo,comentarios) VALUES ('$idhembra','$faborto','Aborto','$comentario')";
        $result=mysql_query($sql);
            
            header("location:alertas.php");
        }
            
?>

<?php include("includes/header-herramientas.php"); ?>


<form action="abortos.php" method="post">
    
   <h1><center>A&ntilde;adir Aborto</center></h1><br><br>
  
         <br>Hembra*<input type="number" name="idhembra" value="<?php  echo $id ?>" readonly required/><br> 
         Comentarios<textarea id="test" name="comentario" rows="5" cols="48" value=""></textarea>
         Fecha<input type="date" name="faborto" required/><br>
         <input type="submit" name="register" id="register" value="A&ntilde;adir" />
</form>


<?php
}
?>