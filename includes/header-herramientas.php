<!DOCTYPE html>
<html lang="es">
	<head>
		<title>Huellas y Razas</title>
		<meta chartset="UTF-8">
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
        <link rel="stylesheet" href="css/fontello.css">
		<link rel="stylesheet" href="css/estilos.css">
        <link rel="icon" type="image/png" href="img/mifavicon.png" />
    </head>
    
    <body style="background-image: url( img/fondo.png);">
        <header>
            <div class="contenedor">
                
                <h1><img src="img/logo.png"></h1>
                <h1 id="logo">Huellas y Razas</h1>
                <input type="checkbox" id="menu-bar">
                <label class="icon-menu" for="menu-bar"></label>
                <nav class="menu">
                    <a id="her" href="vermascotas.php">Mis Mascotas</a>
                    <a id="her" href="agenda.php">Agendar</a>
                    <select onchange="location= this.value;">
                            <option value="" selected hidden>Cuenta</option>
                            <option value="perfilcliente.php">Perfil</option>
                            <option value="logout.php">Cerrar Sesi&oacute;n</option>
                    </select>
                    
                </nav>
            </div>
        </header>
    </body>