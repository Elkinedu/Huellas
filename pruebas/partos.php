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
        
        $id=$_GET['casilla'];

    if(isset($_POST["register"])){
                    
	   $idhembra=$_POST['idhembra'];
       $fparto=$_POST['fparto'];
	   $nvivos=$_POST['nvivos'];
	   $nmuertos=$_POST['nmuertos'];
	   $nmomi=$_POST['nmomi'];
       
            
	   $sql="INSERT INTO partos
			(idhembra, fecha, vivos, muertos, momificados) 
			VALUES('$idhembra', '$fparto', '$nvivos', '$nmuertos', '$nmomi')";
            $result=mysql_query($sql);
            
            header("location:alertas.php");
        }
?>

<?php include("includes/header-herramientas.php"); ?>


<form action="partos.php" method="post">
    
   <h1><center>A&ntilde;adir Parto</center></h1><br><br>
  
         <br>Identificador*<input type="number" name="idhembra" value="<?php  echo $id ?>"  required readonly/><br>
         Fecha*<input type="date" name="fparto" required/><br>
         Vivos*<input type="number" name="nvivos" required>
         Muertos<input type="number" name="nmuertos" >
         Momificados<input type="number" name="nmomi" >
         <input type="submit" name="register" id="register" value="A&ntilde;adir" />
</form>


<?php
}
?>