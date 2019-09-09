<?php
$db = mysqli_connect("127.0.0.1","root","","haoyaoshi");//连接数据库
mysqli_query($db,"set names 'utf8'"); 
mysqli_query($db,"set character set 'utf8'");//处理乱码
//处理数据库
$id = isset($_REQUEST['id']) ? $_REQUEST['id'] : '';
// $sql = 'SELECT * FROM  taobao';

 
 $sql = "SELECT * FROM goods where `uid` like $id";
 
//执行语句
$result =mysqli_query($db,$sql);
//拿到数据
$arr=mysqli_fetch_all($result, MYSQLI_ASSOC);
//转化打印
echo json_encode($arr, true);
?>
