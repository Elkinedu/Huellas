<?php 
session_start();
if(!isset($_SESSION["session_username"])) {
	header("location:login.php");
} else {

require_once("includes/connection.php"); 
        
$id=$_GET['ide'];
        
	   $sql="UPDATE alarmas SET estado='Cubierta', idproxeven=1, proxevento='Revision Celo', fproxevento=DATE_ADD(CURDATE(), INTERVAL 20 DAY)  WHERE idalarma=$id";
       $result=mysql_query($sql);
    
}

header("location:alertas.php");

?>