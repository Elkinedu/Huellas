<?php
/////// CONEXIÓN A LA BASE DE DATOS /////////
$host = 'localhost';
$basededatos = 'PORCIWEB';
$usuario = 'root';
$contraseña = 'DnEt2014';

$conexion = new mysqli($host, $usuario,$contraseña, $basededatos);
if ($conexion -> connect_errno)
{
	die("Fallo la conexion:(".$conexion -> mysqli_connect_errno().")".$conexion-> mysqli_connect_error());
}

//////////////// VALORES INICIALES ///////////////////////

$tabla="";
$query="SELECT * FROM productos ORDER BY codbarras";

///////// LO QUE OCURRE AL TECLEAR SOBRE EL INPUT DE BUSQUEDA ////////////
if(isset($_POST['alumnos']))
{
	$q=$conexion->real_escape_string($_POST['alumnos']);
	$query="SELECT * FROM productos WHERE 
		codbarras LIKE '%".$q."%' OR
		nombre LIKE '%".$q."%' OR
		casa LIKE '%".$q."%' OR
		categoria LIKE '%".$q."%'";
}

$buscarAlumnos=$conexion->query($query);
if ($buscarAlumnos->num_rows > 0)
{
	$tabla.= 
	'<table id="ntab" border="1">
		<tr class="bg-primary">
			<th>EAN</th>
			<th>Nombre</th>
			<th>Casa</th>
			<th>Categoria</th>
            <th>Cantidad</th>
            <th>Precio Venta</th>
		</tr>';

	while($filaAlumnos= $buscarAlumnos->fetch_assoc())
	{
		$tabla.=
		'<tr>
			<td>'.$filaAlumnos['codbarras'].'</td>
			<td>'.$filaAlumnos['nombre'].'</td>
			<td>'.$filaAlumnos['casa'].'</td>
			<td>'.$filaAlumnos['categoria'].'</td>
            <td>'.$filaAlumnos['cantidad'].'</td>
            <td>'.$filaAlumnos['precio_venta'].'</td>
		 </tr>
		';
	}

	$tabla.='</table>';
} else
	{
		$tabla="No se encontraron coincidencias con sus criterios de búsqueda.";
	}


echo $tabla;
?>
