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
	$nombre=$_POST['nombren'];
    $servicio=$_POST['servicion'];
	$fagenda=$_POST['fagendan'];
	$turno=$_POST['turno'];
    $dueno=$_SESSION["session_username"];
    $horactual= date("H:i");
    $fechactual=date("Y-m-d");
            
            if($fagenda>$fechactual){
            
            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES ('$fagenda', '$turno', '$nombre', '$servicio', '$dueno', '1')";   
            $result=mysql_query($sql);                 
            
            header("location:vermascotas.php");
            
            }else if($fagenda=$fechactual and $turno>$horactual){
                $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES ('$fagenda', '$turno', '$nombre', '$servicio', '$dueno', '1')";   
                $result=mysql_query($sql);                 
            
            header("location:vermascotas.php");
                
            }else{
                $message="El turno o la fecha seleccionados son incorrectos, Por favor intente de nuevo";
            }
        }
?>

<?php include("includes/header-herramientas.php"); ?>

<form action="agendat.php" method="post">
  <h1><center>Agendar</center></h1><br><br>
         <br>Nombre<input type="text" value="<?php $nombre=$_POST['nombre']; echo $nombre; ?>" name="nombren" readonly required/>
             Servicio<input type="text" value="<?php $servicio=$_POST['servicio']; echo $servicio; ?>" name="servicion" readonly required/>
             Fecha <a href="agenda.php">(Cambiar)</a><input type="text" value="<?php $fagenda=$_POST['fagenda'];  echo $fagenda ?>" name="fagendan" readonly required/>
             Turnos Disponibles<select name="turno" required>
        
            <option></option>
            <?php   
            
                    $cont=0;
                    $hora= date("H:i", strtotime('09:30:00'));
        
                $res=mysql_query("SELECT * FROM agenda WHERE fecha='$fagenda'");
                $numrows=mysql_num_rows($res);
        
                 if($numrows!=0){
                     
                     $hora = date("H:i", strtotime($hora)+1800);
                     
                     while($cont<=15){
                         
                        $res=mysql_query("SELECT * FROM agenda WHERE fecha='$fagenda' AND turno='$hora'");
                        $numrow=mysql_num_rows($res);
                         
                        if($numrow!=0){
                            $hora = date("H:i", strtotime($hora)+1800);
                            $cont++;
                        }else{
                            ?>
                                <option value="<?php echo $hora ?>"><?php echo $hora = date("h:i A", strtotime($hora)); ?></option>
                            <?php
                                $hora = date("H:i", strtotime($hora)+1800);
                                $cont++;
                        }

                }}else{ 

                while($cont<=15){
                    $hora = date("H:i", strtotime($hora)+1800);
                    $cont++; 
            ?>        

            <option value="<?php echo $hora ?>"><?php echo $hora = date("h:i A", strtotime($hora)); ?></option>
    
<?php }} ?>    
    
</select>
    
         <input type="submit" name="register" id="register" value="Agendar" />
    
    <br><div id="mensageerror"><center><?php if (!empty($message)) {echo "<p class=\"error\">" .$message . "</p>";} ?></center></div>
</form>


	

<?php
}
?>