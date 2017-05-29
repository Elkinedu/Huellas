<?php 
session_start();
if(!isset($_SESSION["session_username"])) {
	header("location:login.php");
} else {

require_once("includes/connection.php"); 
        
$id=$_POST['casilla'];
$prox=$_POST['prox'];
$idhembra=$_POST['idhembra'];
        
	   $sql="UPDATE alarmas SET eventorealizado='Si' WHERE idalarma=$id";
       $result=mysql_query($sql);
       
    switch($prox)
        {
        case 1:
            
            	   $sql="INSERT INTO alarmas
			(fecha, idhembra, estado, idproxeven, proxevento, fproxevento, eventorealizado) 
			VALUES(CURDATE(),'$idhembra', 'Cubierta', '2', 'Diagnostico de Preñez', DATE_ADD(CURDATE(), INTERVAL 21 DAY), 'No')";
            $result=mysql_query($sql);
            header("location:alertas.php");
            break;
            
        case 2:
            
            	   $sql="INSERT INTO alarmas
			(fecha, idhembra, estado, idproxeven, proxevento, fproxevento, eventorealizado) 
			VALUES(CURDATE(),'$idhembra', 'Preñada', '3', 'Vacuna E-Coli y Cambio de Alimento', DATE_ADD(CURDATE(), INTERVAL 39 DAY), 'No')";
            $result=mysql_query($sql);
            header("location:alertas.php");
            break;
            
        case 3:
            
            	   $sql="INSERT INTO alarmas
			(fecha, idhembra, estado, idproxeven, proxevento, fproxevento, eventorealizado) 
			VALUES(CURDATE(),'$idhembra', 'Preñada', '4', 'Vacuna E-Coli', DATE_ADD(CURDATE(), INTERVAL 20 DAY), 'No')";
            $result=mysql_query($sql);
            header("location:descontar.php");
            break;
    
        case 4:
            
            	   $sql="INSERT INTO alarmas
			(fecha, idhembra, estado, idproxeven, proxevento, fproxevento, eventorealizado) 
			VALUES(CURDATE(),'$idhembra', 'Preñada', '5', 'Desparacitación', DATE_ADD(CURDATE(), INTERVAL 4 DAY), 'No')";
            $result=mysql_query($sql);
            header("location:descontar.php");
            break;
            
        case 5:
            
            	   $sql="INSERT INTO alarmas
			(fecha, idhembra, estado, idproxeven, proxevento, fproxevento, eventorealizado) 
			VALUES(CURDATE(),'$idhembra', 'Preñada', '6', 'Cambio de Nave', DATE_ADD(CURDATE(), INTERVAL 6 DAY), 'No')";
            $result=mysql_query($sql);
            header("location:descontar.php");
            break;
            
        case 6:
            
            	   $sql="INSERT INTO alarmas
			(fecha, idhembra, estado, idproxeven, proxevento, fproxevento, eventorealizado) 
			VALUES(CURDATE(),'$idhembra', 'Preñada', '7', 'Parto', DATE_ADD(CURDATE(), INTERVAL 4 DAY), 'No')";
            $result=mysql_query($sql);
            header("location:alertas.php");
            break;
            
        case 7:
            
            	   $sql="INSERT INTO alarmas
			(fecha, idhembra, estado, idproxeven, proxevento, fproxevento, eventorealizado) 
			VALUES(CURDATE(),'$idhembra', 'Lactancia', '8', 'Vacuna Parvovirus y Leptospira', DATE_ADD(CURDATE(), INTERVAL 11 DAY), 'No')";
            $result=mysql_query($sql);
            header("location:partos.php?casilla=$idhembra");
            break;
            
        case 8:
            
            	   $sql="INSERT INTO alarmas
			(fecha, idhembra, estado, idproxeven, proxevento, fproxevento, eventorealizado) 
			VALUES(CURDATE(),'$idhembra', 'Lactancia', '9', 'Destete, Cambio de Nave y Alimento', DATE_ADD(CURDATE(), INTERVAL 10 DAY), 'No')";
            $result=mysql_query($sql);
            header("location:descontar.php");
            break;
            
        case 9:
            
            	   $sql="INSERT INTO alarmas
			(fecha, idhembra, estado, idproxeven, proxevento, fproxevento, eventorealizado) 
			VALUES(CURDATE(),'$idhembra', 'Vacia', '10', 'Celo y Cubrición', DATE_ADD(CURDATE(), INTERVAL 5 DAY), 'No')";
            $result=mysql_query($sql);
            header("location:alertas.php");
            break;
            
        case 10:
            
            header("location:cubricion.php?casilla=$idhembra");
            break;
        }
    
    }
            
       
       
?>