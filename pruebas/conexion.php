<html> 
<head> 
   <title>Ejemplo de PHP</title> 
</head> 
<body> 
<?php  
function Conectarse() 
{ 
   //or die();
   if (!($link=mysql_connect("localhost","root","DnEt2014"))) 
   { 
      echo "Error conectando a la base de datos."; 
      exit(); 
   } 
   if (!mysql_select_db("porciweb",$link)) 
   { 
      echo "Error seleccionando la base de datos.<br>".mysql_error(); 
      exit(); 
   } 
   return $link; 
} 

$link=Conectarse();  

mysql_close($link); //cierra la conexion 
?> 
</body> 
</html> 