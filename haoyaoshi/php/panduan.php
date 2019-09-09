<?php
$db = mysqli_connect("127.0.0.1","root","","haoyaoshi");//连接数据库
mysqli_query($db,"set names 'utf8'"); 
mysqli_query($db,"set character set 'utf8'");//处理乱码
//处理数据库
$uid = isset($_REQUEST['uid']) ? $_REQUEST['uid'] : '1111';
$total = isset($_REQUEST['total']) ? $_REQUEST['total'] : '3333';
$phone = isset($_REQUEST['phone']) ? $_REQUEST['phone'] : '2222';;
$res = "SELECT * FROM  gouwuche where uid=$uid";
$result =mysqli_query($db,$res);
// $arr=mysqli_fetch_all($result, MYSQLI_ASSOC);
$row =mysqli_num_rows($result);
//转化打印
if($row==0){
    $sql = "INSERT INTO `gouwuche`(`uid`,`phone`,`total`) VALUES ('$uid','$phone','$total')";
    $arr =mysqli_query($db,$sql);
}elseif($row==1){
    $data =mysqli_fetch_all($result, MYSQLI_ASSOC);
    $number =$data[0]['total']+$total; 
    $sql="UPDATE gouwuche SET total = $number where uid = $uid";
    $arr =mysqli_query($db,$sql);
}
echo json_encode($arr, true);
?>

