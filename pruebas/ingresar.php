<?php 
   include("conexion.php"); 
   $link=Conectarse(); 
   $nombre=$_POST['nombre'];  
   $apellido=$_POST['apellidos']; 
   $correo=$_POST['correo'];
   $contrasena=$_POST['contrasena'];

   mysql_query("insert into usuarios (nombre,apellido,correo,clave) values ('$nombre','$apellido','$correo','$contrasena')",$link);
    
   header("location:intopage.php");
?> 