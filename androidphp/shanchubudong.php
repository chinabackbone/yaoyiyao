<?php
$dbms = 'mysql';     //数据库类型 Oracle 用ODI,对于开发者来说，使用不同的数据库，只要改这个，不用记住那么多的函数了
$host = 'localhost';//数据库主机名
$user = 'mabokai';      //数据库连接用户名
$pass = 'mabokai';         //对应的密码
$dbName = 'user';   //使用的数据库
$dsn = "$dbms:host=$host;dbname=$dbName";
header("Content-Type:text/html;   charset=utf-8");

class User
{
    public $ok;
}

try {
    $tusername = $_POST['username'];
    $banji = $_POST['banji'];

    $dbh = new PDO($dsn, $user, $pass, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8;"));//初始化一个PDO对象，就是创建了数据库连接对象$dbh
    $dbh->query("SET NAMES utf8");
    $sql = "delete from budong_info where tusername = '$tusername' and banji='$banji'";
    $user = new User();

    if ($dbh->query($sql)) {
        $user->ok = 11;
    } else {
        $user->ok = 10;
    }
    $data[] = $user;
    echo json_encode($data);
    $dbh = null;
} catch (mysqli_sql_exception $e) {
    echo json_encode($e);
}
?>