<?php 
session_start();
if(!isset($_SESSION["session_username"])) {
	header("location:login.php");
} else {
?>
<?php require_once("includes/connection.php");
?>

<?php 

        if(isset($_POST["cant"])){
            
          $codbarras=$_POST['cod'];
            $cantidad=$_POST['cant']*-1;
            
        $res=mysql_query("SELECT codbarras, codescon, nombre, precio_venta FROM productos WHERE codbarras=$codbarras"); 
            
            $numrows=mysql_num_rows($res);
        
            if($numrows!=0){
                $fila=mysql_fetch_array($res);
                $cod=$fila['codbarras'];
                $codesco=$fila['codescon'];
                $descrip=$fila['nombre'];
                $vuni=$fila['precio_venta'];
                $ventat=$vuni*$cantidad;

	        $sql="INSERT INTO movimientos
			(numero, tipo, cod, codes, descripcion, cant, valoruni, valorventa, estado) 
			VALUES(1, 'FV', '$cod', '$codesco', '$descrip', '$cantidad', '$vuni', '$ventat', 0)";
            $result=mysql_query($sql);    
            
            header("location:caja.php");
            
            }else{
                $message="El codigo de barras ingresado no existe por favor intente nuevamente";
            }
            
        }       
        
include("includes/header_herramientas_admin.php"); 

?>

<div id="caj">         

<table id="ntab">
    
    
<form id="caja" action="caja.php" method="post">
    <h1>Caja</h1><br><br>
 <tr>
     <td><input type="number" name="cod" placeholder="Codigo de Barras"/><input type="number" name="cant" onchange="this.form.submit()" placeholder="Cantidad"/></td> 
 </tr>   
    
 <tr>
     <th>EAN</th>
     <th>PRODUCTO</th>  	 
     <th>CANTIDAD</th>
     <th>VALOR UNITARIO</th>
     <th>VALOR TOTAL</th>
 </tr>
    
<?php    $rest=mysql_query("select * from movimientos where numero=1");
    
 while($fila=mysql_fetch_array($rest)){
 ?>
 <tr>
     <td><?php echo $fila['cod']; ?></td>
     <td><?php echo $fila['descripcion']; ?></td>
     <td><?php echo $fila['cant']*-1; ?></td>
     <td><?php echo $fila['valoruni']; ?></td>
     <td><?php echo $fila['valorventa']*-1; ?></td>
     
 </tr>
 <?php
     $sub=$fila['valorventa'];
     @$total=$total+$sub;
 }
 ?>
    <tr>
        <th colspan="4">TOTAL</th>
        <td colspan="4"><?php echo @$total*-1; ?></td>
    </tr>
    
    
    </table> 
    
        <br><div id="mensageerror"><center><?php if (!empty($message)) {echo "<p class=\"error\">" .$message . "</p>";} ?></center></div>
    
        <input type="submit" name="register" value="Facturar"/>
    
        </form>
    
    </div>


<?php } ?>