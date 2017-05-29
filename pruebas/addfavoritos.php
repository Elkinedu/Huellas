.<?php 

session_start();

   include("conexion.php"); 
   $link=Conectarse(); 
   $usuario=$_SESSION['session_username'];  
   $titulo=$_POST['titulo']; 
   $direccion=$_POST['direccion'];
   $categoria=$_POST['categoria'];
   $comentario=$_POST['comentario'];
   $valoracion=$_POST['valoracion'];

   mysql_query("insert into favoritos (usuario,titulo,direccion,categoria,comentario,valoracion) values ('$usuario','$titulo','$direccion','$categoria','$comentario','$valoracion')",$link);
    
   header("location:verfavoritos.php");
?>