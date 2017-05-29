<?php 
session_start();
if(!isset($_SESSION["session_username"])) {
	header("location:login.php");
} else {
?>
<?php require_once("includes/connection.php"); 
?>

<?php

        if(isset($_POST["registerc"])){
	$nombre=$_POST['nombreu'];
    $direccion=$_POST['direccion'];
	$celular=$_POST['celular'];
	$mail=$_POST['mail'];
    $pass=$_POST['npass'];
    $npass=sha1($_POST['npass']);
    $cnpass=sha1($_POST['cnpass']);
    $usu=$_SESSION['session_username'];
            
        if($pass=="") {       
            $sql="UPDATE usertbl SET full_name='$nombre', direccion='$direccion', ncelular='$celular' WHERE username='$usu'";
			$result=mysql_query($sql);
            $message= "Tu perfil se actualizo correctamente.";
            //header("location:perfilcliente.php");
	        
        }else if($npass==$cnpass){
            $sql="UPDATE usertbl SET full_name='$nombre', direccion='$direccion', ncelular='$celular', password='$npass' WHERE username='$usu'";
			$result=mysql_query($sql);
            $message= "Tu perfil se actualizo correctamente.";
            //header("location:perfilcliente.php");
            
        }else{
            $message= "La confirmación de la contraseña no coincide.";
        }
    }
?>

<?php 
        include("includes/header-herramientas.php"); 
        $usu=$_SESSION["session_username"];
        $res2=mysql_query("select * from usertbl where username='$usu'");

?>

<form name="pcliente" action="perfilcliente.php" method="post">
    
<h1><center>Mi Perfil</center></h1><br><br>    
 <?php 
 while($filac=mysql_fetch_array($res2)){
 ?>
  
         <br>Nombre *<input type="text" name="nombreu" value="<?php echo $filac['full_name']; ?>" autocomplete="off" required />
         Dirección<input type="text" name="direccion" value="<?php echo $filac['direccion']; ?>" />
         Número Celular<input type="number" name="celular" value="<?php echo $filac['ncelular']; ?>"/>
         Email<input type="email" name="mail" value="<?php echo $filac['username']; ?>" readonly/>
         Nueva Contraseña<input type="password" name="npass" />
         Confirma tu nueva contraseña<input type="password" name="cnpass" />
         <br><center><?php if (!empty($message)) {echo "<p class=\"error\">" .$message . "</p>";} ?></center>
         <input type="submit" name="registerc" id="register" value="Actualizar" />
         
<?php
 }
 ?>
</form>


	

<?php
}
?>