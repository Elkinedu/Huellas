<?php
session_start();
?>

<?php require_once("includes/connection.php"); ?>
<?php include("includes/header.php"); ?>

<?php

if(isset($_SESSION["session_username"])){
// echo "Session is set"; // for testing purposes
header("Location: intropage.php");
}

if(isset($_POST["login"])){

if(!empty($_POST['username']) && !empty($_POST['password'])) {
    $username=$_POST['username'];
    $password=sha1($_POST['password']);
    $estado=1;

    $query =mysql_query("SELECT * FROM usertbl WHERE username='".$username."' AND password='".$password."' AND estado='".$estado."'");

    $numrows=mysql_num_rows($query);
    if($numrows!=0)

    {
    while($row=mysql_fetch_assoc($query))
    {
    $dbusername=$row['username'];
    $dbpassword=$row['password'];
    }

    if($username == $dbusername && $password == $dbpassword)

    {


    $_SESSION['session_username']=$username;

    /* Redirect browser */
    header("Location: validarus.php");
    }
    } else {

 $message =  "  Nombre de usuario &oacute; contrase&ntilde;a invalida.";
    }

} else {
    $message = "Todos los campos son requeridos!";
}
}
?>




    <div class="container mlogin">
            <div id="login">
<form name="loginform" id="loginform" action="" method="POST">
   <h1><center>Iniciar sesi&#243;n</center></h1>
    
        <br><br><br><input type="email" name="username" id="username" class="input" value="" size="20" placeholder="Nombre De Usuario y/o Correo" autofocus required/>
        <input type="password" name="password" id="password" class="input" value="" size="20" placeholder="Contrase&ntilde;a" required/>
    
    <br><div id="mensageerror"><center><?php if (!empty($message)) {echo "<p class=\"error\">" .$message . "</p>";} ?></center></div>
    
        <input type="submit" name="login" class="button" value="Entrar" />
    
        <br><div id="mensage" onclick="window.location = 'register.php'">¿No estas registrado? Haz click aqui</div>
        <br><div id="mensage" onclick="window.location = 'recuperarpassword.php'">¿Olvidaste tu contraseña?</div>
</form>

    </div>

    </div><br>
    
    
	
	
	
	