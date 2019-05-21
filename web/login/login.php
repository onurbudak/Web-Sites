<?php
include("admin.php");

//ob_start();

$username = $_POST['kullanici'];
$password = $_POST['sifre'];

$query = $conn->query("SELECT * FROM user where user_adi='{$username}' and user_password='{$password}' and user_statu = 'admin' ", PDO::FETCH_ASSOC);
if ( $query->rowCount() ){
	$_SESSION["login"] = true;
	//$_SESSION["kullanici"] = $user;
	//session_start();
	header("Location:adminpanel.php");
}else {
	header("Refresh: 2; url=login.html");
	echo "Kullancı Adı veya Şifre Yanlış.<br>";
echo "Tekrar deneyiniz.";
}

/*
if(($_POST["kullanici"]==$user) and ($_POST["sifre"]==$pass)){
$_SESSION["login"] = "true";
$_SESSION["kullanici"] = $user;
$_SESSION["sifre"] = $pass;
	
header("Location:adminpanel.php");

}else{
echo "Kullancı Adı veya Şifre Yanlış.<br>";
echo "Tekrar deneyiniz.";
header("Refresh: 2; url=login.html");
}


ob_end_flush();
*/

?>