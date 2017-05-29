<?php 
session_start();
if(!isset($_SESSION["session_username"])) {
	header("location:login.php");
} else {
?>
<?php require_once("includes/connection.php"); 
        require_once("numalertas.php");
?>

<?php include("includes/header-herramientas.php"); ?>

<form>
    <h1><center>Informes</center></h1><br><br>
    
        <br>Detalle Hembras<select onchange="location= this.value;">
        
            <option></option>
            <?php    
                $res=mysql_query("SELECT idhembra FROM hembras");
                while($fila=mysql_fetch_array($res)){;
            ?>

            <option value="./generadorpdf.php?ale=<?php echo $fila[0]?>"><?php echo $fila[0]?></option>

<?php } ?>
    
</select>
    
        <br>Estado Hembras<select  onchange="location= this.value;">
            <option></option>
            <option value="./generadorpdf.php?url=1">Vacias</option>
            <option value="./generadorpdf.php?url=2">Cubiertas</option>
            <option value="./generadorpdf.php?url=3">Pre&ntilde;adas</option>
            <option value="./generadorpdf.php?url=4">Lactantes</option>
        </select>
    
        <br>Historial<select onchange="location= this.value;">
            <option></option>
            <option value="./generadorpdf.php?url=5">Granja</option>
            <option value="./generadorpdf.php?url=8">Partos</option>
            <option value="./generadorpdf.php?url=6">Abortos</option>
            <option value="./generadorpdf.php?url=7">Bajas</option>
        </select>
    
        <br>Alertas
        <input type="date" name="fecha" onchange="location='./generadorpdf.php?url='+this.value;"/>
</form>

<?php } ?>