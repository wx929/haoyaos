<?php
$db = mysqli_connect("127.0.0.1","root","","haoyaoshi");//连接数据库
mysqli_query($db,"set names 'utf8'"); 
mysqli_query($db,"set character set 'utf8'");//处理乱码
$sql = "SELECT gouwuche.*, goods.name, goods.img1,goods.des,goods.now_price FROM gouwuche,goods WHERE gouwuche.uid = goods.uid";
$result = mysqli_query($db, $sql);
$data = mysqli_fetch_all($result, MYSQLI_ASSOC);
echo json_encode($data, true)
?>