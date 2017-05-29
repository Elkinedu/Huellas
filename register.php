<?php require_once("includes/connection.php"); ?>
<?php include("includes/header.php"); ?>


	<?php

if(isset($_POST["register"])){


if(!empty($_POST['full_name']) && !empty($_POST['username']) && !empty($_POST['direccion']) && !empty($_POST['celular']) && !empty($_POST['password1'])) {
	$full_name=$_POST['full_name'];
	$username=$_POST['username'];
    $direccion=$_POST['direccion'];
    $celular=$_POST['celular1'];
    $password=sha1($_POST['password1']);
    $destino= "eknalj@hotmail.com";
    $contenido= "Un nuevo usuario acaba de registrarse";
    $contenidoc= "Gracias por registrarse y confiar en nuestros servicios";
	

		
	$query=mysql_query("SELECT * FROM usertbl WHERE username='".$username."'");
	$numrows=mysql_num_rows($query);
	
	if($numrows==0)
	{
	$sql="INSERT INTO usertbl
			(full_name, username, direccion, ncelular, password, fcreacion, estado ) 
			VALUES('$full_name','$username', '$direccion', '$celular', '$password', CURDATE(), 0)";

	$result=mysql_query($sql);
        
	if($result){
	 $message = "Cuenta Correctamente Creada";
        mail($destino,"Nuevo usuario",$contenido);
        mail($username,"Nuevo usuario",$contenidoc);
        header("location:login.php");
	} else {
	 $message = "Error al ingresar datos de la informacion.";
	}

	} else {
	 $message = "El nombre de usuario ya existe, Por favor intenta con otro.";
	}

} else {
	 $message = "Todos los campos no deben de estar vacios.";
}
}
?>


<?php if (!empty($message)) {echo "<p class=\"error\">" . "Mensaje: ". $message . "</p>";} ?>
	
<div class="container mregister">
			<div id="login">
<form name="registerform" id="registerform" action="register.php" method="post" autocomplete="off">
	<h1><center>Registro</center></h1>
        
		    <br><br><br><input type="text" name="full_name" id="full_name" class="input" placeholder="Nombre Completo" autofocus required/>
		    <input type="email" name="username" id="username" class="input" placeholder="Correo Electronico" required/>
		    <input type="text" name="direccion" id="direccion" class="input" placeholder="Dirección" required/>
		    <input type="tel" name="celular1" pattern="[0-9]{10}" placeholder="Numero Celular" required/>
            <input type="password" name="password1" placeholder="Contrase&ntilde;a" required/>
            <br><div id="mensageerror"><center><?php if (!empty($message)) {echo "<p class=\"error\">" .$message . "</p>";} ?></center></div>
	    	<input type="submit" name="register" id="register" class="button" value="Registrar" />
	    
    <br><div id="mensage" onclick="window.location = 'login.php'">¿Ya tienes una cuenta? Haz click aqui</div>
    
</form>
	
	
	