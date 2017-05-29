<?php 
session_start();
if(!isset($_SESSION["session_username"])) {
	header("location:login.php");
} else {
?>
<?php require_once("includes/connection.php");
?>

<?php 
     
$res=mysql_query("select * from proveedores");            
        
include("includes/header_herramientas_admin.php"); 

?>

<table border="1">
    <caption><h1>Proveedores<a href="proveedores.php">(+)</a></h1></caption>
 <tr>	
     <th>Nit</th>
     <th>Nombre</th>  	 
     <th>Telefono</th>
 </tr>


    
 <?php 
 while($fila=mysql_fetch_array($res)){
 ?>
 <tr>
     <th><?php echo $fila['nit']; ?></th> 	 
     <th><?php echo $fila['nombre']; ?></th>
     <th><?php echo $fila['numfijo']; ?></th>
 </tr>
 <?php
 }
 ?>
    
</table>    


<?php } ?>