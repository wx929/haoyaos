<?php

$db = mysqli_connect("127.0.0.1","root","","haoyaoshi");
// if($db){
//   echo 1;
// }
$phone = isset($_REQUEST['phone']) ? $_REQUEST['phone'] : '2222';
$password = isset($_REQUEST['password']) ? $_REQUEST['password'] : '1';
// var_dump($password);
// var_dump($phone);
// echo $password.$phone;
$sql = "INSERT INTO `zhuce` ( `password`, `phone`) VALUES ('$password', '$phone')";
$result = mysqli_query($db, $sql);
$data = array("status"=>"", "msg"=>"", "data"=>"");
if($result)
{
  $data["status"] = "success";
  $data["msg"] = "恭喜你，注册成功！";
}else{
  $data["status"] = "error";
  $data["msg"] = "抱歉，用户名或者手机号码已经被注册了！";
}
echo json_encode($data,true);

?>
