<?php
$username = $_POST['username'];


$mysql_servername = "localhost";
$mysql_username = "mabokai";
$mysql_password = "mabokai";
$mysql_database = "user";

class User
{
    public $ok;
}

$user = new User();
$mydb = new mysqli($mysql_servername, $mysql_username, $mysql_password, $mysql_database);
mysqli_query($mydb, 'set names utf8');

$sql = "SELECT * from user_info where username = '$username'";
if ($result = $mydb->query($sql)) {
    $row = $result->fetch_array();
    if ($row['wenti_1'] == "") {
        //存在
        $user->ok = 555;
    } else {
		$user->ok = 777;
    }
    $data[] = $user;
    echo json_encode($data);
    $dbh = null;
}
?>
