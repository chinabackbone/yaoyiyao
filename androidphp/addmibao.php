<?php
$username = $_POST['username'];
$wenti_1 = $_POST['wenti_1'];
$wenti_2 = $_POST['wenti_2'];
$wenti_3 = $_POST['wenti_3'];

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

        try {
            $sql = "update user_info set wenti_1 = '$wenti_1',wenti_2 = '$wenti_2',wenti_3 = '$wenti_3',daan_1 = '$daan_1',daan_2 = '$daan_2',daan_3 = '$daan_3' where username = '$username'";
            if ($mydb->query($sql)) {
                //成功
                $user->ok = 1;
            } else {
                //失败
                $user->ok = 0;
            }

        } catch (mysqli_sql_exception $e) {
            echo json_encode($e);
        }
 
    $data[] = $user;
    echo json_encode($data);
    $dbh = null;
?>
