<?php 
session_start();
if(!isset($_SESSION["session_username"])) {
	header("location:login.php");
} else {
?>
<?php require_once("includes/connection.php"); 
?>

<?php

        if(isset($_POST["register"])){
            $codbarras=$_POST['codbarras'];
	        $codiescon=$_POST['codescon'];
            $nombre=$_POST['nombre'];
	        $casa=$_POST['casa'];
	        $categoria=$_POST['categoria'];
	        $tamano=$_POST['tamano'];
            $preventa=$_POST['preventa'];
            $costo=$_POST['costo'];
            $tipo=$_POST['tipo'];
            $cantidad=$_POST['cantidad'];
            
            if($codiescon==""){
                $codiescon=$codbarras;
            }

	$sql="INSERT INTO productos (codbarras, codescon, nombre, casa, categoria, tamano, precio_venta, costo, tipo, cantidad) VALUES('$codbarras','$codiescon', '$nombre', '$casa', '$categoria', '$tamano', '$preventa', '$costo', '$tipo', '$cantidad')";
            $result=mysql_query($sql);
            
            header("location:verproductos.php");
        }
?>

<?php include("includes/header_herramientas_admin.php"); ?>

<form action="productos.php" method="post">
  <h1><center>Nuevo Producto</center></h1><br><br>
    
         <br><label>¿Tipo de Producto? </label>
         <br>Padre<input type="radio" name="tipo" value="1" onclick='codescon.style="display:none", tamano.style="display:inline", costo.style="display:inline", cantidad.style="display:inline"' required checked />
         Hijo<input type="radio" name="tipo" value="0"onclick='codescon.style="display:inline", tamano.style="display:none", costo.style="display:none", cantidad.style="display:none"' required />
    
            <input type="number" name="codbarras" placeholder="Codigo de Barras*" required />
            <input type="text" list="lista" name="codescon" placeholder="Codigo Producto Padre" style="display:none">
            <datalist id="lista" required>
                
                <?php    
                $res=mysql_query("SELECT codbarras, nombre FROM productos WHERE tipo=1");
                while($fila=mysql_fetch_array($res)){;
            ?>

                <option value="<?php echo $fila[0] ?>"><?php echo $fila[1] ?></option>

            <?php } ?>
    
            </datalist>
                    
         
         <input type="text" name="nombre" placeholder="Nombre*" required />
         <select name="casa" required>
                <option value="" Hidden>Casa</option>
  		        <option value="Finca">Finca</option>
  		        <option value="Purina">Purina</option>
                <option value="Nutristar">Nutristar</option>
  		        <option value="Solla">Solla</option>
                <option value="Nutrion">Nutrion</option>
  		        <option value="Italcol">Italcol</option>
                <option value="Alimentos Polar">Alimentos Polar</option>
  		        <option value="Pedigree">Pedigree</option>
	     </select>
         <select name="categoria" required>
                <option value="" Hidden>Categoria</option>
  		        <option value="Alimento">Alimento</option>
  		        <option value="Veterinaria">Veterinaria</option>
                <option value="Accesorios">Accesorios</option>
  		        <option value="Otros">Otros</option>
	     </select>
         <input type="number" name="tamano" placeholder="Tamaño Kg" step="any" />
         <input type="number" name="preventa" placeholder="Precio de Venta" required/>
         <input type="number" name="costo" placeholder="Costo" />
         <input type="number" name="cantidad" placeholder="Cantidad Inventario" />
         <input type="submit" name="register" id="register" value="A&ntilde;adir" />
</form>	

<?php
}
?>