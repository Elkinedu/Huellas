<?php 
session_start();
if(!isset($_SESSION["session_username"])) {
	header("location:login.php");
} else {
?>
<?php require_once("includes/connection.php");
?>

<?php 
     
$res=mysql_query("select * from agenda");
        
        if(isset($_GET["url"])){
            
            $user=$_GET['url'];
            $sql="UPDATE usertbl SET estado='1' WHERE username='$user'";
            $result=mysql_query($sql);
                           
        }
            
        
include("includes/header_herramientas_admin.php"); 

?>

<table border="1">
    <caption><h1>Agenda<a href="register.php">(+)</a></h1></caption>
 <tr>	 
     <th>Fecha</th> 	 
     <th>Turno</th> 
     <th>Mascota</th> 	 
     <th>Servicio</th>
     <th>Agendado por</th>
 </tr>


    
 <?php 
 while($fila=mysql_fetch_array($res)){
 ?>
 <tr>
     <th><?php echo $fila['fecha']=date('d-m-Y',strtotime($fila['fecha'])); ?></th>
     <th><?php echo $fila['turno']= date("h:i A", strtotime($fila['turno']));; ?></th>
     <th><?php echo $fila['mascota']; ?></th>
     <th><?php echo $fila['servicio']; ?></th>
     <th><?php echo $fila['dueno']; ?></th>
 </tr>
 <?php
 }
 ?>
    
</table>    


<?php } ?>