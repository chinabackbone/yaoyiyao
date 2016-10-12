<?php
$tusername = $_POST['username'];
$banji = $_POST['banji'];

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


$sql = "SELECT * from budong_info where tusername='$tusername' and banji = '$banji'";

if ($result = $mydb->query($sql)) {
    $row = $result->fetch_array();
    if ($row[0] != null) {
        //存在
        $user->ok = 0;
    } else {
        try {
            $sql = "insert into budong_info (tusername,banji) values ('$tusername','$banji')";
            if ($mydb->query($sql)) {
                //成功
                $user->ok = 1;
            } else {
                //失败
                $user->ok = 2;
            }

        } catch (mysqli_sql_exception $e) {
            echo json_encode($e);
        }
    }
    $data[] = $user;
    echo json_encode($data);
    $dbh = null;
}
?>
