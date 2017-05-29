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

if(!empty($_POST['username'])) {
    $username=$_POST['username'];

    $query =mysql_query("SELECT * FROM usertbl WHERE username='".$username."'");

    $numrows=mysql_num_rows($query);
    if($numrows!=0)

    {
    while($row=mysql_fetch_assoc($query))
    {
    $dbusername=$row['username'];
    }

    if($username == $dbusername)

    {
        
        $psswd = substr( md5(microtime($username)), 1, 8);
        
        mail($username,"Nueva Contraseña",$psswd);
        
        $npsswd=sha1($psswd);
        
        $query =mysql_query("UPDATE usertbl SET password='$npsswd' WHERE  username='$username'");
        
        $visi="hidden";
        
        $message2 =  "Inicia sesión aqui";
        
        $message =  "Hemos enviado la nueva contraseña a tu correo, por favor revisalo.";
        
    }
    } else {

 $message =  "El correo electrónico ingresado no esta registrado intentelo de nuevo.";
    }

} else {
    $message = "Todos los campos son requeridos!";
}
}

?>




    <div class="container mlogin">
            <div id="login">
<form name="loginform" id="loginform" action="" method="POST">
   <h1><center>Recupera tu contraseña</center></h1>
    <p>
        <br><br><br><label for="user_login">Introduce el correo con el que te registraste, para enviarte una nueva contraseña.<br/>
        <br><input type="email" name="username" id="username" class="input" value="" size="20" placeholder="Correo Electronico" required/></label>
    </p>

        <input type="submit" name="login" class="button" value="Enviar" />
    
        <br><div id="mensageerror" ><center><?php if (!empty($message)) {echo "<p class=\"error\">" .$message . "</p>";} ?></center></div>
        <div id="mensage" onclick="window.location = 'login.php'"><center><?php if (!empty($message2)) {echo "<p class=\"error\">" .$message2 . "</p>";} ?></center></div>
    
    
</form>
                

    </div>

    </div><br>
    
    