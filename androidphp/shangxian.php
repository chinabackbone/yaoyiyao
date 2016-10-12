<?php
$username = $_POST['username'];
$status = $_POST['status'];


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

        try {
            $sql="update user_info set status = '$status',time=now() where username = '$username'";
            if ($mydb->query($sql)) {
                //成功
                $user->ok = 110;
            } else {
                //失败
                $user->ok = 220;
            }

        } catch (mysqli_sql_exception $e) {
            echo json_encode($e);
        }

    $data[] = $user;
    echo json_encode($data);
    $dbh = null;
?>
