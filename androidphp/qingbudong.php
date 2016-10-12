<?php

$mysql_servername = "localhost";
$mysql_username = "mabokai";
$mysql_password = "mabokai";
$mysql_database = "user";


$tusername = $_POST['tusername'];
$banji = $_POST['banji'];


$mydb = new mysqli($mysql_servername, $mysql_username, $mysql_password, $mysql_database);
mysqli_query($mydb, 'set names utf8');


        try {
            $sql = "update budong_info set cishu = 0 where tusername = '$tusername' and banji = '$banji'";
            $mydb->query($sql);
              
        } catch (mysqli_sql_exception $e) {
            echo json_encode($e);
        }
   
    $dbh = null;

?>
