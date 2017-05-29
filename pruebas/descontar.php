<?php 
session_start();
if(!isset($_SESSION["session_username"])) {
	header("location:login.php");
} else {

require_once("includes/connection.php"); 
    require_once("numalertas.php");
    
if(isset($_POST["register"])){
      
    $nom=$_POST['nom'];
	$cant=$_POST['cant'];
    $lot=$_POST['lot'];
     
    	$sql="UPDATE insumos SET CANTIDAD=CANTIDAD - '$cant' WHERE NOMBRE='$nom' AND LOTE='$lot'";
            $result=mysql_query($sql);
    
    header("location:alertas.php");
        
    }

include("includes/header-herramientas.php"); 
  
?>
 

<form method="post" action="descontar.php">
Nombre<br>
<select name="nom">
    
<?php    
    $res=mysql_query("SELECT * FROM insumos WHERE tipo='M'");
    
 while($fila=mysql_fetch_array($res)){
?>

    <option value="<?php echo $fila['NOMBRE']?>"><?php echo $fila['NOMBRE']?></option>

<?php } ?>
    
</select>
Lote<br>
<select name="lot">
    
<?php   
    $res=mysql_query("SELECT * FROM insumos WHERE tipo='M'");
    
 while($fila1=mysql_fetch_array($res)){
?>

    <option value="<?php echo $fila1['LOTE']?>"><?php echo $fila1['LOTE']?></option>

<?php } ?>
    
</select>
    
Dosis<br>
    <input type="number" name="cant" placeholder="Mililitros(ML)" required>    
    <input type="submit" name="register" value="suministrar">
    
</form>


<?php } ?>


