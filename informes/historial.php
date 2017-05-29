<?php 

require_once("connection.php");

$fecha= date("d-m-Y");
        
        $res=mysql_query("SELECT idproxeven, eventorealizado FROM alarmas WHERE eventorealizado='No' AND (idproxeven<4 OR idproxeven>9)");
        $ges=mysql_num_rows($res); 
        $res=mysql_query("SELECT fdescuen,nombre FROM insumos WHERE nombre='GESTACION' AND fdescuen<CURDATE()");
        $n1=mysql_num_rows($res);
        if($n1>0){
            $cant=$ges*2;
            $sql="UPDATE insumos SET CANTIDAD=CANTIDAD - '$cant', FDESCUEN=CURDATE() WHERE NOMBRE='GESTACION'";
            $result=mysql_query($sql);
            header("location:inicio.php");
        }

        $res=mysql_query("SELECT idproxeven, eventorealizado FROM alarmas WHERE eventorealizado='No' AND idproxeven>3 AND idproxeven<10");
        $lac=mysql_num_rows($res); 
        $res=mysql_query("SELECT fdescuen,nombre FROM insumos WHERE nombre='LACTANCIA' AND fdescuen<CURDATE()");
        $n2=mysql_num_rows($res);
        $res=mysql_query("SELECT SUM(vivos) as total FROM partos WHERE CURDATE()<ADDDATE(fecha, INTERVAL 21 DAY)"); 
        $fila=mysql_fetch_array($res);
        $viv=$fila['total'];
        
        if($n2>0){
            $viv=$viv*0.5;
            $cant1=$lac*2+$viv;
            $sql="UPDATE insumos SET CANTIDAD=CANTIDAD - '$cant1', FDESCUEN=CURDATE() WHERE NOMBRE='LACTANCIA'";
            $result=mysql_query($sql);
            header("location:inicio.php");
        }
        
        $res=mysql_query("SELECT * FROM hembras");
        $hem=mysql_num_rows($res);
        
        $res=mysql_query("SELECT * FROM verracos");
        $ver=mysql_num_rows($res);
        
        $res=mysql_query("SELECT * FROM partos");
        $par=mysql_num_rows($res);
        
        $res=mysql_query("SELECT SUM(vivos) as total FROM partos");
        $fila=mysql_fetch_array($res);
        $vivos=$fila['total']+0;
        
        $res=mysql_query("SELECT * FROM alarmas WHERE eventorealizado='No' AND estado='Vacia'");
        $vac=mysql_num_rows($res);
        
        $res=mysql_query("SELECT * FROM alarmas WHERE eventorealizado='No' AND estado='Cubierta'");
        $cub=mysql_num_rows($res);
        
        $res=mysql_query("SELECT * FROM alarmas WHERE eventorealizado='No' AND estado='Prenada'");
        $pre=mysql_num_rows($res);

        $res=mysql_query("SELECT * FROM alarmas WHERE eventorealizado='No' AND estado='Lactancia'");
        $lac=mysql_num_rows($res);
        
        $res=mysql_query("SELECT tipo FROM bajas_abortos WHERE tipo='Aborto'");
        $abo=mysql_num_rows($res);
        
        $res=mysql_query("SELECT tipo FROM bajas_abortos WHERE tipo='Baja'");
        $baj=mysql_num_rows($res);
?>

<html lang="es">
	<head>
		<title>PorciWeb</title>
		<link rel="stylesheet" href="css/dom.css">
    </head>
    
    <body>
    
    
<h1>PorciWeb / <?php echo $fecha ?></h1>
<h3>Historial Granja</h3>

<table border="1">
    
    
 <br><tr>	 
     <td>Descripci&oacute;n</td> 	 
     <td>Cantidad</td>
 </tr>
  
 <tr>	 
     <td>Total Hembras</td> 	 
     <td><?php echo $hem; ?></td>
 </tr>
    
 <tr>	 
     <td>Hembras Vacias</td> 	 
     <td><?php echo $vac; ?></td>
 </tr>
    
 <tr>	 
     <td>Hembras Cubiertas</td> 	 
     <td><?php echo $cub; ?></td>
 </tr>
    
 <tr>	 
     <td>Hembras Pre&ntilde;adas</td> 	 
     <td><?php echo $pre; ?></td>
 </tr>
    
 <tr>	 
     <td>Hembras Lactantes</td> 	 
     <td><?php echo $lac; ?></td>
 </tr>

 <tr>	 
     <td>Total Verracos</td> 	 
     <td><?php echo $ver; ?></td>
 </tr>
    
 <tr>	 
     <td>Partos</td> 	 
     <td><?php echo $par; ?></td>
 </tr>
        
 <tr>	 
     <td>Lechones Nacidos</td> 	 
     <td><?php echo $vivos; ?></td>
 </tr>
    
 <tr>	 
     <td>Abortos</td> 	 
     <td><?php echo $abo; ?></td>
 </tr>
    
 <tr>	 
     <td>Bajas</td> 	 
     <td><?php echo $baj; ?></td>
 </tr>
    
</table>
    
</body>
        
    </html>
        

