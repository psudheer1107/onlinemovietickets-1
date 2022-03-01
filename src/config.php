<?php
    $host = "mysql-db";
    $user = "root";                     
    $pass = "hahadude";                                  
    $db = "movietheatredb";
    $port = 3306;
     $con = mysqli_connect($host, $user, $pass, $db, $port)or die(mysql_error());
?>
