<?php 
session_start();
if(!isset($_SESSION["session_username"])) {
	header("location:login.php");
} else {
?>

<?php

require_once("includes/connection.php");
$usuario=$_SESSION['session_username']; 
$filtro=$_GET['filtro']; 
    
$fecha= date("d-m-Y");
    
    
if($filtro=="Todas" or !isset($_GET['filtro'])){
    $res=mysql_query("SELECT * FROM alarmas WHERE CURDATE()>= DATE_SUB(fproxevento, INTERVAL 5 DAY) AND Eventorealizado='No' AND idproxeven>0"); 
    }else{
            $res=mysql_query("SELECT * FROM alarmas WHERE CURDATE()>= DATE_SUB(fproxevento, INTERVAL 5 DAY) AND Eventorealizado='No' AND idproxeven='$filtro'");
     }
    
    global $numfilas;
    $numfilas =mysql_num_rows($res);
?>


<?php include("includes/header-herramientas.php"); ?>



<table border="1">
    <caption><h1>Alertas / <?php echo $fecha ?></h1></caption>  
    
 <tr>	
     <th>Identificador</th> 	 
     <th>Estado</th>
     <th>Proximo Evento
            <select onchange="location= this.value;">
                <option></option>
                <option value="alertas.php?filtro=Todas">Todos</option>
                <option value="alertas.php?filtro=1">Revisi&oacute;n Celo</option>
                <option value="alertas.php?filtro=2">Diagnostico de Pre&ntilde;ez</option>
                <option value="alertas.php?filtro=3">Vacuna E-Coli y Cambio de Alimento</option>
                <option value="alertas.php?filtro=4">Vacuna E-Coli</option>
                <option value="alertas.php?filtro=5">Desparacitaci&oacute;n</option>
                <option value="alertas.php?filtro=6">Cambio de Nave</option>
                <option value="alertas.php?filtro=7">Parto</option>
                <option value="alertas.php?filtro=8">Vacuna Parvovirus y Leptospira</option>
                <option value="alertas.php?filtro=9">Destete, Cambio de Nave y Alimento</option>
                <option value="alertas.php?filtro=10">Celo y Cubrici&oacute;n</option>
            </select>
     </th>
     <th>Fecha Proximo Evento</th>
     <th colspan="2">¿Evento Realizado?</th>
 </tr>
    
 <?php 
 while($fila=mysql_fetch_array($res)){
 ?>
 <tr>
     <form method="post" action="validarevento.php">
     <th><?php echo $fila['idhembra']; ?></th> 	 
     <th><?php echo $fila['estado']; ?></th>
     <th><?php echo $fila['proxevento']; ?></th>
     <th><?php echo $fila['fproxevento']=date('d-m-Y',strtotime($fila['fproxevento'])); ?></th>
     <th><center><input type="hidden" name="prox" value="<?php echo $fila['idproxeven']; ?>">
         <input type="hidden" name="idhembra" value="<?php echo $fila['idhembra']; ?>">
         <button type="submit" name="casilla" value="<?php echo $fila['idalarma']; ?>">SI</button></center></th> 

         </form>
    
    
     <?php 
        if ($fila['idproxeven']==1 or $fila['idproxeven']==2){    
     ?>
         
     <th><center><button name="no" value="n" onclick="location.href='validarno.php?ide=<?php echo $fila['idalarma']; ?>'">NO</button></center></th>
       
    
 <?php
    }
 ?>
         
         
     </tr>
   
    
    

 <?php
    }
 ?>
    
  
</table><br>

 


<?php
       }
?>