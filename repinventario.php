<?php
//Exportar datos de php a Excel
header("Content-Type: application/vnd.ms-excel");
header("Expires: 0");
header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
header("content-disposition: attachment;filename=Reportes.xls");
?>
<HTML LANG="es">
<TITLE>::. Exportacion de Datos .::</TITLE>
</head>
<body>
<?php
$NombreBD = "porciweb";
$Servidor = "localhost";
$Usuario = "root";
$Password ="DnEt2014";
$IdConexion = mysql_connect($Servidor, $Usuario, $Password);
mysql_select_db($NombreBD, $IdConexion);
$sql = "SELECT codbarras, codescon, nombre, casa, categoria, precio_venta, costo, cantidad FROM productos";
$result=mysql_query($sql,$IdConexion);

?>

<TABLE BORDER=1 align="center" CELLPADDING=1 CELLSPACING=1>
<TR>
<TD>EAN</TD>
<TD>COD PADRE</TD>
<TD>DESCRIPCION</TD>
<TD>CASA</TD>
<TD>CATEGORIA</TD>
<TD>PRECIO VENTA</TD>
<TD>COSTO</TD>
<TD>EXISTENCIAS</TD>

</TR>
<?php
while($row = mysql_fetch_array($result)) {
printf("<tr>
<td>&nbsp;%s</td>
<td>&nbsp;%s&nbsp;</td>
<td>&nbsp;%s</td>
<td>&nbsp;%s</td>
<td>&nbsp;%s</td>
<td>&nbsp;%s&nbsp;</td>
<td>&nbsp;%s</td>
<td>&nbsp;%s</td>
</tr>", $row["codbarras"],$row["codescon"],$row["nombre"],$row["casa"],$row["categoria"],$row["precio_venta"],$row["costo"],$row["cantidad"]);
}
mysql_free_result($result);
mysql_close($IdConexion); //Cierras la Conexión
?>
</table>
</body>
</html>