<?php
$username = $_POST['username'];
$daan_1 = $_POST['daan_1'];
$daan_2 = $_POST['daan_2'];
$daan_3 = $_POST['daan_3'];

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

$sql = "SELECT * from user_info where username = '$username' and daan_1 = '$daan_1' and daan_2 = '$daan_2' and daan_3 = '$daan_3' ";
if ($result = $mydb->query($sql)) {
    $row = $result->fetch_array();
    if ($row[0] != null) {
        //存在
        $user->ok = 1;
    } else {
		 $user->ok = 0;
    }
    $data[] = $user;
    echo json_encode($data);
    $dbh = null;
}
?>
