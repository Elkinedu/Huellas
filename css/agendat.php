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
        
        

        if(isset($_POST["register"])){
	$nombre=$_POST['nombren'];
    $servicio=$_POST['servicion'];
	$fagenda=$_POST['fagendan'];
	$turno=$_POST['turno'];
    $dueno=$_SESSION["session_username"];
            
            $res=mysql_query("SELECT * FROM agenda WHERE fecha='$fagenda'");
            $numrows=mysql_num_rows($res);
        
                 if($numrows==0){

	               switch($turno)
                   {
                       case "10:00 AM":
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','$turno', '$nombre', '$servicio', '$dueno','1')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','10:40 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','11:20 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','12:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','12:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','01:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','02:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','02:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','03:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','04:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','04:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','05:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            break;
                           
                       case "10:40 AM":
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','10:00 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','$turno', '$nombre', '$servicio', '$dueno','1')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','11:20 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','12:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','12:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','01:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','02:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','02:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','03:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','04:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','04:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','05:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            break;
                           
                      case "11:20 AM":
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','10:00 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','10:40 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','$turno', '$nombre', '$servicio', '$dueno','1')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','12:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','12:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','01:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','02:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','02:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','03:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','04:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','04:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','05:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            break;
                           
                      case "12:00 PM":
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','10:00 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','10:40 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','11:20 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','$turno', '$nombre', '$servicio', '$dueno','1')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','12:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','01:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','02:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','02:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','03:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','04:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','04:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','05:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            break;
                           
                      case "12:40 PM":
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','10:00 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','10:40 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','11:20 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','12:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','$turno', '$nombre', '$servicio', '$dueno','1')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','01:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','02:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','02:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','03:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','04:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','04:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','05:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            break;
                           
                      case "01:20 PM":
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','10:00 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','10:40 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','11:20 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','12:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','12:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','$turno', '$nombre', '$servicio', '$dueno','1')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','02:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','02:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','03:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','04:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','04:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','05:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            break;
                           
                      case "02:00 PM":
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','10:00 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','10:40 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','11:20 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','12:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','12:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','01:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','$turno', '$nombre', '$servicio', '$dueno','1')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','02:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','03:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','04:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','04:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','05:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            break;
                           
                      case "02:40 PM":
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','10:00 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','10:40 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','11:20 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','12:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','12:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','01:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','02:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','$turno', '$nombre', '$servicio', '$dueno','1')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','03:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','04:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','04:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','05:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            break;
                           
                      case "03:20 PM":
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','10:00 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','10:40 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','11:20 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','12:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','12:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','01:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','02:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','02:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','$turno', '$nombre', '$servicio', '$dueno','1')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','04:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','04:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','05:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            break;
                           
                      case "04:00 PM":
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','10:00 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','10:40 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','11:20 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','12:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','12:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','01:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','02:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','02:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','03:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','$turno', '$nombre', '$servicio', '$dueno','1')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','04:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','05:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            break;
                           
                      case "04:40 PM":
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','10:00 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','10:40 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','11:20 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','12:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','12:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','01:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','02:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','02:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','03:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','04:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','$turno', '$nombre', '$servicio', '$dueno','1')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','05:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            break;
                           
                      case "05:20 PM":
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','10:00 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','10:40 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','11:20 AM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','12:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','12:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','01:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','02:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','02:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','03:20 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','04:00 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','04:40 PM', '', '', '','0')";
                            $result=mysql_query($sql);
                            $sql="INSERT INTO agenda (fecha, turno, mascota, servicio, dueno, agendado) VALUES('$fagenda','$turno', '$nombre', '$servicio', '$dueno','1')";
                            $result=mysql_query($sql);
                            break;
                   }
                 }else{
                     	   $sql="UPDATE agenda SET mascota='$nombre', servicio='$servicio', dueno='$dueno', agendado='1' WHERE fecha='$fagenda' AND turno='$turno'";
                           $result=mysql_query($sql);
                 }
                 
            
            header("location:vermascotas.php");
        }
?>

<?php include("includes/header-herramientas.php"); ?>

<form action="agendat.php" method="post">
  <h1><center>Agendar</center></h1><br><br>
         <br>Nombre<input type="text" value="<?php $nombre=$_POST['nombre']; echo $nombre; ?>" name="nombren" readonly required/>
             Servicio<input type="text" value="<?php $servicio=$_POST['servicio']; echo $servicio; ?>" name="servicion" readonly required/>
             Fecha <a href="agenda.php">(Cambiar)</a><input type="text" value="<?php $fagenda=$_POST['fagenda'];  echo $fagenda ?>" name="fagendan" readonly required/>
             Turnos Disponibles<select name="turno">
        
            <option></option>
            <?php    
        
                $res=mysql_query("SELECT turno FROM agenda WHERE fecha='$fagenda' AND agendado='0'");
                $numrows=mysql_num_rows($res);
        
                 if($numrows!=0){
                     while($fila=mysql_fetch_array($res)){;
            ?>  

            <option value="<?php echo $fila[0]?>"><?php echo $fila[0]?></option>

<?php }}else{ ?>
    
            <option value="10:00 AM">10:00 AM</option>
            <option value="10:40 AM">10:40 AM</option>
            <option value="11:20 AM">11:20 AM</option>
            <option value="12:00 PM">12:00 PM</option>
            <option value="12:40 PM">12:40 PM</option>
            <option value="01:20 PM">01:20 PM</option>
            <option value="02:00 PM">02:00 PM</option>
            <option value="02:40 PM">02:40 PM</option>
            <option value="03:20 PM">03:20 PM</option>
            <option value="04:00 PM">04:00 PM</option>  
            <option value="04:40 PM">04:40 PM</option>
            <option value="05:20 PM">05:20 PM</option>
    
<?php } ?>    
    
</select>
         <input type="submit" name="register" id="register" value="Agendar" />
</form>


	

<?php
}
?>