<?php
$db = mysqli_connect("127.0.0.1","root","","haoyaoshi");//连接数据库
mysqli_query($db,"set names 'utf8'"); 
mysqli_query($db,"set character set 'utf8'");//处理乱码
//处理数据库
$phone = isset($_REQUEST['phone']) ? $_REQUEST['phone'] : '';
$password = isset($_REQUEST['password']) ? $_REQUEST['password'] : '';
// $arr=mysqli_fetch_all($result, MYSQLI_ASSOC);;
//转化打印
$sql="UPDATE zhuce SET password = '$password' where phone = $phone";
$result =mysqli_query($db,$sql);
$arr=mysqli_fetch_all($result, MYSQLI_ASSOC);
echo json_encode($arr, true);
?>

