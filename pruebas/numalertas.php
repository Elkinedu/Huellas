

<?php

require_once("includes/connection.php");
$res=mysql_query("SELECT * FROM alarmas WHERE CURDATE()>= DATE_SUB(fproxevento, INTERVAL 5 DAY) AND Eventorealizado='No' AND idproxeven>0");
    
    global $numfilas;
    $numfilas =mysql_num_rows($res);
?>