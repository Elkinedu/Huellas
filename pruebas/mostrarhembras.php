<?php 
session_start();
    
if(!isset($_SESSION["session_username"])) {
	header("location:login.php");
} else {
?>

<?php

require_once("includes/connection.php");
    require_once("numalertas.php");
    
$usuario=$_SESSION['session_username']; 
    
$filtro=$_GET['filtro']; 
    
if($filtro=="Todas" or !isset($_GET['filtro'])){
    $res=mysql_query("SELECT hembras.IDHEMBRA,alarmas.estado FROM hembras JOIN alarmas WHERE hembras.IDHEMBRA=alarmas.idhembra AND alarmas.Eventorealizado='No' ORDER BY hembras.IDHEMBRA asc");
}else{
    $res=mysql_query("SELECT hembras.IDHEMBRA,alarmas.estado FROM hembras JOIN alarmas WHERE hembras.IDHEMBRA=alarmas.idhembra AND alarmas.Eventorealizado='No' AND alarmas.estado='$filtro' ORDER BY hembras.IDHEMBRA asc");
    }
    
?>


<?php include("includes/header-herramientas.php"); ?>


<table border="1">
    <caption><h1>Hembras<a href="hembras.php">(+)</a></h1></caption>
 <tr style="height:40px;">	 
     <th>Identificador</th> 	 
     <th>Estado
            <select onchange="location= this.value;">
                <option></option>
                <option value="mostrarhembras.php?filtro=Todas">Todas</option>
                <option value="mostrarhembras.php?filtro=Vacia">Vacias</option>
                <option value="mostrarhembras.php?filtro=Cubierta">Cubiertas</option>
                <option value="mostrarhembras.php?filtro=Prenada">Pre&ntilde;adas</option>
                <option value="mostrarhembras.php?filtro=Lactancia">Lactantes</option>
            </select>
     </th> 
     <th>A&ntilde;adir Cubrici&oacute;n</th>
     <th>A&ntilde;adir Aborto</th>
     <th>A&ntilde;adir     Baja</th>
 </tr>


    
 <?php 
 while($fila=mysql_fetch_array($res)){
 ?>
 <tr>
     <form method="get" action="cubricion.php">
     <th><a href="detallehembra.php?casilla=<?php echo $fila['IDHEMBRA']; ?>"><?php echo $fila['IDHEMBRA']; ?></a></th> 	 
     <th><?php echo $fila['estado']; ?></th>
<?php
     $rest=mysql_query("SELECT * FROM alarmas WHERE idhembra='".$fila['IDHEMBRA']."' AND idproxeven>0");
    $nfilas1 =mysql_num_rows($rest);
     
     if ($nfilas1==0){
?>
     <th><center><button type="submit" name="casilla" value="<?php echo $fila['IDHEMBRA']; ?>">A&ntilde;adir</button></center></th>
    <?php
     }else{
     ?>
         <th></th>
     <?php
        }
     ?>
         
     </form>
     
     <?php
        $rest1=mysql_query("SELECT * FROM alarmas WHERE idhembra='".$fila['IDHEMBRA']."' AND estado='Prenada' AND eventorealizado='No'");
        $nfilas2 =mysql_num_rows($rest1);
     
        if ($nfilas2>0){
        ?>

    <form method="get" action="abortos.php">
        <th><center><button type="submit" name="casilla" value="<?php echo $fila['IDHEMBRA']; ?>">A&ntilde;adir</button></center></th>
    </form>
     
     <?php
        }else{
     ?>
         <th></th>
     <?php
        }
     ?>
     
     <form method="get" action="bajas.php">
             <th><center><button type="submit" name="casilla" value="<?php echo $fila['IDHEMBRA']; ?>">A&ntilde;adir</button></center></th>
    </form>
     
</tr>     
    
 <?php
 }
 ?>

</table><br>






<?php include("includes/footer.php"); ?>

<?php
}
?>