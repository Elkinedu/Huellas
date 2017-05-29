<?php 
session_start();
if(!isset($_SESSION["session_username"])) {
	header("location:login.php");
} else {
?>

<?php             
        
include("includes/header_herramientas_admin.php"); 

?>

            <div id="buscar">
                <h1>Productos<a href="productos.php">(+)</a></h1><a href="repinventario.php"><img src="img/Excel.ico" width="30" height="30" align="right"></a>
                
                    <br><br><br><input type="text" name="busqueda" id="busqueda" placeholder="Buscar...">
            
                <nav id="tabla_resultado"></nav>
                
            </div>    
        
            

<?php }
?>
