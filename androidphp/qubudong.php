<?php

$mysql_servername = "localhost";
$mysql_username = "mabokai";
$mysql_password = "mabokai";
$mysql_database = "user";


$tusername = $_POST['username'];
$banji = $_POST['banji'];

class User
{
    public $ok;
}

$user = new User();

$mydb = new mysqli($mysql_servername, $mysql_username, $mysql_password, $mysql_database);
mysqli_query($mydb, 'set names utf8');

 try {
	$sql = "SELECT * from budong_info where tusername = '$tusername' and banji = '$banji'";

	if ($result = $mydb->query($sql)) {
		$row = $result->fetch_array();

		$cishu=$row[3];
		$user->ok = $cishu;
		
		$data[] = $user;
		echo json_encode($data);
	}
} catch (mysqli_sql_exception $e) {
    echo json_encode($e);
}
?>
