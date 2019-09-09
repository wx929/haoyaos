<?php
$db = mysqli_connect("127.0.0.1","root","","haoyaoshi");//连接数据库
mysqli_query($db,"set names 'utf8'"); 
mysqli_query($db,"set character set 'utf8'");//处理乱码
//处理数据库
$uid = isset($_REQUEST['uid']) ? $_REQUEST['uid'] : '1111';
// $arr=mysqli_fetch_all($result, MYSQLI_ASSOC);;
//转化打印
$del="delete from gouwuche where uid = $uid";
$arr =mysqli_query($db,$del);
echo json_encode($arr, true);
?>

