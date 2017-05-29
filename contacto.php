<?php
session_start();
?>

<?php require_once("includes/connection.php"); ?>
<?php include("includes/header.php"); ?>

<?php

    if(isset($_POST["enviar"])){
	
            $nombre=$_POST['nombre'];
            $email=$_POST['mail'];
	        $cel=$_POST['cel'];
	        $comentario=$_POST['comentario'];
            $emaild="eknalj@hotmail.com";
            $contenido= $nombre. " quiere informacion acerca de: ".$comentario.". Le puedes enviar información al siguiente correo ".$email." ó al numero celular ".$cel;             
            mail($emaild,"Contacto",$contenido);
        
        $message="Su mensage fu enviado satisfactoriamente, le contactaremos prontamente.";
        
    }

?>



    <div class="container mlogin">
            <div id="login">
<form name="loginform" id="loginform" action="" method="POST">
   <h1><center>Cont&#225;ctanos</center></h1>
    
        <br><br><br><input type="text" name="nombre" id="username" class="input" size="20" placeholder="Nombre" required/>
        <input type="email" name="mail" id="password" class="input" size="20" placeholder="Correo Electronico" required/>
        <input type="tel" name="cel" id="password" pattern="[0-9]{10}" class="input" size="20" placeholder="Telefono Celular" required/>
        <textarea id="test" name="comentario" rows="5" cols="47" placeholder="   Comentario"></textarea>
    
        <br><div id="mensageerror"><center><?php if (!empty($message)) {echo "<p class=\"error\">" .$message . "</p>";} ?></center></div>
 
        <input type="submit" name="enviar" class="button" value="Enviar" />
  
</form>

    </div>

