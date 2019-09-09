<?php
$db = mysqli_connect("127.0.0.1","root","","haoyaoshi");//连接数据库
mysqli_query($db,"set names 'utf8'"); 
mysqli_query($db,"set character set 'utf8'");//处理乱码
//处理数据库
$phone = isset($_REQUEST['phone']) ? $_REQUEST['phone'] : '1111';
$password = isset($_REQUEST['password']) ? $_REQUEST['password'] : '11';

//转化打印
$sql = "SELECT * FROM  guanliyuan WHERE phone = '$phone'";
$result = mysqli_query($db,$sql);
// var_dump($result);
$data = array("status" => "", "msg" => "", "data" => "");
if(mysqli_num_rows($result) == "0")
{
  $data["status"] = "error";
  $data["msg"] = "登录失败：该用户不存在";
}else{
  /* 检查密码是否正确 */
  $arr=mysqli_fetch_array($result);
//   var_dump($arr);
  if($arr["password"] != $password)
  {
    $data["status"] = "error";
    $data["msg"] = "登录失败：密码不正确！";
  }else{
    $data["status"] = "success";
    $data["msg"] = "恭喜你，登录成功！";
  }
}

echo json_encode($data, true);
?>
