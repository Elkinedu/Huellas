<?php 
session_start();
if(!isset($_SESSION["session_username"])) {
	header("location:login.php");
} else {
?>
<?php require_once("includes/connection.php");
?>

<?php 
     
$res=mysql_query("select * from usertbl");
        
        if(isset($_GET["url"])){
            
            $user=$_GET['url'];
            $sql="UPDATE usertbl SET estado='1' WHERE username='$user'";
            $result=mysql_query($sql);
                           
        }
            
        
include("includes/header_herramientas_admin.php"); 

?>

<table border="1">
    <caption><h1>Usuarios <a href="register.php">(+)</a></h1></caption>
 <tr>	 
     <th>Nombre</th>
     <th>Telefono</th>
     <th>Estado</th>
 </tr>


    
 <?php 
 while($fila=mysql_fetch_array($res)){
 ?>
 <tr>
     <th><a href="perfilusuarios.php?usu=<?php echo $fila['full_name']; ?>" ><?php echo $fila['full_name']; ?> </a></th>
     <th><?php echo $fila['ncelular']; ?></th> 
     <th><div name="register" onclick="location='./verclientes.php?url=<?php echo $fila['username']; ?>';"><?php echo $fila['estado']; ?></div></th>
 </tr>
 <?php
 }
 ?>
    
</table>    


<?php } ?>