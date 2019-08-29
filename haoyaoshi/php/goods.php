<?php
$db = mysqli_connect("127.0.0.1","root","","haoyaoshi");//连接数据库
mysqli_query($db,"set names 'utf8'"); 
mysqli_query($db,"set character set 'utf8'");//处理乱码
//导入数据库
$data = file_get_contents("../json/goods.json");
$data = json_decode($data,true);
for($i=0;$i<count($data);$i++){
$img1 = $data[$i]["img1"];
$name = $data[$i]["name"];
$black = $data[$i]["black"];
$store = $data[$i]["store"];
$des = $data[$i]["des"];
$now_price = $data[$i]["now_price"];
$old_price = $data[$i]["old_price"];
$img2 = $data[$i]["img2"];
$sql = "INSERT INTO `goods`(`img1`,`name`,`black`,`store`,`des`,`now_price`,`old_price`,`img2`) 
VALUES ('$img1','$name','$black','$store','$des','$now_price','$old_price','$img2')";
 mysqli_query($db,$sql);
}
//处理数据库
// $order =$_REQUEST['order'];
// $page = isset($_REQUEST['page']) ? $_REQUEST['page'] : '1';
// $num = isset($_REQUEST['num']) ? $_REQUEST['num'] : '10';
// $index = ($page -1)*$num;
// // var_dump($num);
// $get = "SELECT * FROM taobao limit $index,$num ";
// $sql='SELECT * FROM taobao ';

// //  $get = "SELECT * FROM taobao ORDER BY price $order";
// //执行语句


// $result = mysqli_query($db,$get);
// $result1 = mysqli_query($db,$sql);
// //拿到数据
// $arr=mysqli_fetch_all($result, MYSQLI_ASSOC);
// $data =array(
//      'tatol'=>$result1->num_rows,
//     'data'=>$arr,
//     'page'=>$page,
//     'num'=>$num,
// );

//转化打印
echo json_encode($data, true);
?>
