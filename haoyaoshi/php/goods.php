<?php
$db = mysqli_connect("127.0.0.1","root","","haoyaoshi");//连接数据库
mysqli_query($db,"set names 'utf8'"); 
mysqli_query($db,"set character set 'utf8'");//处理乱码
//导入数据库
// $data = file_get_contents("../json/goodlist.json");
// $data = json_decode($data,true);
// for($i=0;$i<count($data);$i++){
// $img = $data[$i]["img"];
// $price = $data[$i]["price"];
// $style = $data[$i]["style"];
// $title = $data[$i]["title"];
// $sql = "INSERT INTO `taobao`(`img`,`price`,`style`,`title`) VALUES ('$img','$price','$style','$title')";
//  mysqli_query($db,$sql);
// }
//处理数据库
// $order =$_REQUEST['order'];
$page = isset($_REQUEST['page']) ? $_REQUEST['page'] : '1';
$num = isset($_REQUEST['num']) ? $_REQUEST['num'] : '10';
$index = ($page -1)*$num;
$a2 =isset($_REQUEST['a2'])?$_REQUEST['a2']:'';
$a5 = isset($_REQUEST['a5'])?$_REQUEST['a5']:0;
$a6 = isset($_REQUEST['a6'])?$_REQUEST['a6']:999999;
$order = isset($_REQUEST['order']) ? $_REQUEST['order'] : '';
$type =isset($_REQUEST['type']) ? $_REQUEST['type'] : 'normal';
if ($type=='normal'){
    $get = "SELECT * FROM goods limit $index,$num ";
    $sql='SELECT * FROM goods ';
}elseif ($type=='paixu') {
    $get = "SELECT * FROM goods ORDER BY now_price $order limit $index,$num";
    $sql = "SELECT * FROM goods ORDER BY now_price $order";
}elseif($type=='search') {
    $get = "SELECT * FROM goods WHERE `name` like '%$a2%' limit $index,$num";
    $sql = "SELECT * FROM goods WHERE `name` like '%$a2%'";
}elseif($type=='qujian') { 
    $get = "SELECT * FROM goods WHERE now_price BETWEEN $a5 AND $a6 limit $index,$num";
    $sql = "SELECT * FROM goods WHERE now_price BETWEEN $a5 AND $a6";
}


//  $get = "SELECT * FROM taobao ORDER BY price $order";
//执行语句


$result = mysqli_query($db,$get);
$result1 = mysqli_query($db,$sql);
//拿到数据
$arr=mysqli_fetch_all($result, MYSQLI_ASSOC);
$data =array(
    'tatol'=>$result1->num_rows,
    'data'=>$arr,
    'page'=>$page,
    'num'=>$num,
);


//转化打印
echo json_encode($data, true);
?>
