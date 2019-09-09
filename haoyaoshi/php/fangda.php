<?php
$db = mysqli_connect("127.0.0.1","root","","haoyaoshi");//连接数据库
mysqli_query($db,"set names 'utf8'"); 
mysqli_query($db,"set character set 'utf8'");//处理乱码
//导入
// $data = file_get_contents("../json/xiangqing.json");
// $data = json_decode($data,true);
// for($i=0;$i<count($data);$i++){
// $img1 = $data[$i]["img1"];
// $img2 = $data[$i]["img2"];
// $img3 = $data[$i]["img3"];
// $img4 = $data[$i]["img4"];
// $sql = "INSERT INTO `xiangqing`(`img1`,`img2`,`img3`,`img4`,`id`) VALUES ('$img1','$img2','$img3','$img4',null)";
//  mysqli_query($db,$sql);
// }
$id = isset($_REQUEST['id']) ? $_REQUEST['id'] : '';
$sql = "SELECT * FROM  xiangqing where `id` like '$id'";
 
//执行语句
$result =mysqli_query($db,$sql);
//拿到数据
$arr=mysqli_fetch_all($result, MYSQLI_ASSOC);
//转化打印
echo json_encode($arr, true);
?>
