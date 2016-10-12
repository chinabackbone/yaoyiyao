<?php
$username = $_POST['username'];
$title = $_POST['tl'];
//$content = $_POST['ct'];

$xti = $_POST['xtitle'];
$xco = $_POST['xcontent'];

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
//            $sql = "insert into biji_info (username,title,content) values ('$username','$title','$content')";
            $sql="update tongzhi_info set title = '$xti',content='$xco' where username = '$username' and title = '$title'";
            if ($mydb->query($sql)) {
                //成功
                $user->ok = 11;
            } else {
                //失败
                $user->ok = 22;
            }

        } catch (mysqli_sql_exception $e) {
            echo json_encode($e);
        }

    $data[] = $user;
    echo json_encode($data);
    $dbh = null;
?>
