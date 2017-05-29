<?php 
session_start();
if(!isset($_SESSION["session_username"])) {
	header("location:login.php");
} else {
?>
<?php require_once("includes/connection.php");
        require_once("numalertas.php");
?>


<?php
        
        error_reporting(0);

        if(isset($_POST["register"])){
	$id=$_POST['id'];
    $tipo=$_POST['tipo'];
	$nombre=$_POST['nombre'];
    $nombre=strtoupper($nombre);
    $cant=$_POST['cant'];
    $lote=$_POST['lote'];
    $lote=strtoupper($lote);
    $fven=$_POST['fven'];       
            
    $sql=mysql_query("SELECT * FROM insumos WHERE id='$id' AND nombre='$nombre' AND lote='$lote'");    
    $numrows=mysql_num_rows($sql);
            
        if($numrows>0){
                  $sql1="UPDATE insumos SET CANTIDAD=CANTIDAD + '$cant' WHERE ID='$id' AND NOMBRE='$nombre' AND LOTE='$lote'";
                $result=mysql_query($sql1);              
        }else{
        	$sql="INSERT INTO insumos
			(id, tipo, nombre, cantidad, lote, fvencimiento) 
			VALUES('$id','$tipo','$nombre','$cant','$lote','$fven')";
            $result=mysql_query($sql);
            }
    }        
        
?>

<?php include("includes/header-herramientas.php"); ?>

<form action="insumos.php" method="post">
  <h1><center>A&ntilde;adir Insumo</center></h1><br>
         <br><br>Medicamento<input type="radio" name="tipo" value="M" onclick="lote.disabled = false, fven.disabled = false, cant.placeholder='Mililitros(ML)'" required checked/>
         Alimento<input type="radio" name="tipo" value="A" onclick="lote.disabled = true, fven.disabled = true, cant.placeholder='Kilogramos(KG)'" required /><br>
         <br>Identificador *<input type="number" name="id" required />
         Nombre<input type="text" name="nombre" required/>
         Cantidad<input type="number" name="cant" placeholder="Mililitros(ML)" required/>
         Lote<input type="text" name="lote" value="0" required/>
         Fecha de Vencimiento<input type="date" name="fven" value="0" required/>
         <input type="submit" name="register" id="register" value="A&ntilde;adir" />
    
</form>

<?php include("includes/footer.php"); ?>
	

<?php
}
?>
