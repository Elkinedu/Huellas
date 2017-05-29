<!DOCTYPE html>
<html lang="es">
	<head>
		<title>Huellas y Razas</title>
		<meta chartset="UTF-8">
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
        <link rel="stylesheet" href="css/fontello.css">
		<link rel="stylesheet" href="css/estilos.css">
        <link rel="icon" type="image/png" href="img/mifavicon.png" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script src="includes/peticion.js"></script>
    </head>
    
    <body style="background-image: url( img/fondo.png);">
        <header>
            <div class="contenedor">
                
                <h1><img src="img/logo.png"></h1>
                <h1 id="logo">Huellas y Razas</h1>
                <input type="checkbox" id="menu-bar">
                <label class="icon-menu" for="menu-bar"></label>
                <nav class="menu">
                    <a id="her" href="verclientes.php">Clientes</a>
                    <a id="her" href="veragenda.php">Agenda</a>
                        <select onchange="location= this.value;">
                            <option value="" selected hidden>Inventario</option>
                            <option value="verproveedores.php">Proveedores</option>
                            <option value="verproductos.php">Productos</option>
                            <option value="caja.php">Caja</option>
                        </select>
                    <a id="her" href="logout.php" title="<?php echo $_SESSION['session_username'];?>">Cerrar Sesi&oacute;n</a>
                    
                </nav>
            </div> 
        </header>
    </body>