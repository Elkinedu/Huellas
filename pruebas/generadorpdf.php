<?php 

$url=$_GET['url'];
$id=$_GET['ale'];

       require_once("lib/dompdf/dompdf_config.inc.php"); 

$dompdf= new DOMPDF();

if(!isset($_GET['ale'])){

    switch($url)
        {
        case 1:
            $dompdf->load_html(file_get_contents('http://localhost/porciweb/informes/estadohembras.php?par=Vacia'));
            break;

        case 2:
            $dompdf->load_html(file_get_contents('http://localhost/porciweb/informes/estadohembras.php?par=Cubierta'));
            break;

        case 3:
            $dompdf->load_html(file_get_contents('http://localhost/porciweb/informes/estadohembras.php?par=Prenada'));
            break;

        case 4:
            $dompdf->load_html(file_get_contents('http://localhost/porciweb/informes/estadohembras.php?par=lactancia'));
            break;

        case 5:
            $dompdf->load_html(file_get_contents('http://localhost/porciweb/informes/historial.php'));
            break;
            
        case 6:
            $dompdf->load_html(file_get_contents('http://localhost/porciweb/informes/eventos.php?par=Aborto'));
            break;
            
        case 7:
            $dompdf->load_html(file_get_contents('http://localhost/porciweb/informes/eventos.php?par=Baja'));
            break;
            
        case 8:
            $dompdf->load_html(file_get_contents('http://localhost/porciweb/informes/partos.php'));
            break;
            
        case $url>100:
            $dompdf->load_html(file_get_contents('http://localhost/porciweb/informes/alertas.php?par='.$url));
            break;
        }
}else{
        $dompdf->load_html(file_get_contents('http://localhost/porciweb/informes/detallehembra.php?par='.$id));
}
        
$dompdf->render();
$dompdf->stream("Informe_Hembras.pdf");

?>