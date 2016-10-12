<?php

$mysql_servername = "localhost";
$mysql_username = "mabokai";
$mysql_password = "mabokai";
$mysql_database = "user";


$tusername = $_POST['tusername'];
$banji = $_POST['banji'];

class User
{
    public $ok;
}

$user = new User();

$mydb = new mysqli($mysql_servername, $mysql_username, $mysql_password, $mysql_database);
mysqli_query($mydb, 'set names utf8');


$sql = "SELECT * from budong_info where tusername = '$tusername' and banji = '$banji'";

if ($result = $mydb->query($sql)) {
    $row = $result->fetch_array();

        //存在
	//echo $row[3];
    $cishu=$row[3]+1;

        try {
            $sql = "update budong_info set cishu = '$cishu' where tusername = '$tusername' and banji = '$banji'";
            if ($mydb->query($sql)) {
                //成功
                $user->ok = 1;
            } else {
               //失败
                $user->ok = 0;
            }
			$data[] = $user;
			echo json_encode($data);
        } catch (mysqli_sql_exception $e) {
            echo json_encode($e);
        }
   
    $dbh = null;
}
?>
