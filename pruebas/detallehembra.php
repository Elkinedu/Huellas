<?php 
session_start();
    
if(!isset($_SESSION["session_username"])) {
	header("location:login.php");
} else {
?>

<?php

require_once("includes/connection.php");
    require_once("numalertas.php");
    
$usuario=$_SESSION['session_username']; 
    $id=$_GET['casilla'];
    

        $res=mysql_query("SELECT * FROM hembras JOIN alarmas WHERE alarmas.IDHEMBRA=$id AND hembras.IDHEMBRA=$id AND alarmas.Eventorealizado='No' ORDER BY hembras.IDHEMBRA asc");
    
        $res1=mysql_query("SELECT tipo,idhembra FROM bajas_abortos WHERE tipo='Aborto' AND idhembra='$id'");
        $abo=mysql_num_rows($res1);
        
        $res1=mysql_query("SELECT idhembra FROM partos WHERE idhembra='$id'");
        $par=mysql_num_rows($res1);
    
        $res1=mysql_query("SELECT proxevento, fproxevento, idproxeven FROM alarmas WHERE idhembra='$id' AND eventorealizado='No'");
        while($fila1=mysql_fetch_array($res1)){
            $eve=$fila1[0];
            $feve=$fila1[1];
            $ideve=$fila1[2];
        }
    
?>


<?php include("includes/header-herramientas.php"); ?>


<table border="1">
    <caption><h1>Detalle Hembra</h1></caption>
    
 <?php 
 while($fila=mysql_fetch_array($res)){
 ?>
  
 <tr>	 
     <th>Descripcion</th> 	 
     <th>Valor</th>
 </tr>
    
 <tr>	 
     <td>Identificador</td> 	 
     <td><?php echo $fila[0]; ?></td>
 </tr>
    
 <tr>	 
     <td>Estado</td> 	 
     <td><?php echo $fila[11]; ?></td>
 </tr>
    
 <tr>	 
     <td>Proximo Evento</td> 	 
     <td><?php echo $eve; ?></td>
 </tr>
            
 <tr>	 
     <td>Fecha Proximo Evento</td> 
     <?php
     if($ideve>0){
     ?> 
     <td><?php echo $feve; ?></td>
     <?php
     }else{
     ?>
     <td>Añadir manualmente</td>
     <?php } ?>
 </tr>
    
    
 <tr> 	 
     <td>Partos</td> 	 
     <td><?php echo $par ?></td>
 </tr>
    
 <tr> 	 
     <td>Abortos</td> 	 
     <td><?php echo $abo ?></td>
 </tr> 
    
 <tr>	 
     <td>Raza</td> 	 
     <td><?php echo $fila[1]; ?></td>
 </tr>
    
 <tr>	 
     <td>Fecha de Llegada</td> 	 
     <td><?php echo $fila[2]; ?></td>
 </tr>
    
 <tr>	 
     <td>Fecha de Nacimiento</td> 	 
     <td><?php echo $fila[3]; ?></td>
 </tr>  
    
 <tr>	 
     <td>Peso</td> 	 
     <td><?php echo $fila[4]; ?></td>
 </tr>
    
 <tr>	 
     <td>Precio de Compra</td> 	 
     <td><?php echo $fila[5]; ?></td>
 </tr>
    
     <tr>	 
     <td>Comentarios</td> 	 
     <td><?php echo $fila[6]; ?></td>
 </tr>
    
</table>
    
    
<?php
}
?>   

<?php
}
?>