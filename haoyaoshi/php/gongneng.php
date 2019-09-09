<?php
$db = mysqli_connect("127.0.0.1","root","","haoyaoshi");//连接数据库
mysqli_query($db,"set names 'utf8'"); 
mysqli_query($db,"set character set 'utf8'");//处理乱码
//处理数据库
$uid = isset($_REQUEST['uid']) ? $_REQUEST['uid'] : '1111';
$total = isset($_REQUEST['total']) ? $_REQUEST['total'] : '3333';
// $arr=mysqli_fetch_all($result, MYSQLI_ASSOC);;
//转化打印
    $sql="UPDATE gouwuche SET total = $total where uid = $uid";
    $arr =mysqli_query($db,$sql);
echo json_encode($arr, true);
?>

