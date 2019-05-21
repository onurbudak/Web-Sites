<?php
include("admin.php");
//session_start();
if(!isset($_SESSION["login"])){
echo "Bu sayfayı görüntüleme yetkiniz yoktur.";
}else{
	
echo "<a href=dersler.php>Dersler</a> <br>";	
echo "<a href=dersler.php>Sınavlar</a> <br>";
echo "<a href=dersler.php>Etkinlikler</a> <br>";
echo "<a href=dersler.php>KayanYazi</a> <br>";

echo "<a href=dersler.php>Ekle</a> <br>";
echo "<a href=dersler.php>Sil</a> <br>";	
echo "<a href=dersler.php>Çıkış Yap</a>";
}
?>

<!--<DOCTYPE HTML>
<html>

<head>

<link rel="stylesheet" type="text/css" href="admin.css">
<script src="yeni.js"></script>

</head>

<body>

<div class="admin">


<div> <h3>Admin Paneline Hoşgeldiniz.</h3></div> 
		<div class="genel">	
			<div class="menü">	
				<ul>
				
				<li><a href="dersler.php">Dersler</a></li>
				<li><a href="dersler.php">Sınavlar</a></li>
				<li><a href="dersler.php">Etkinlikler</a></li>
				<li><a href="dersler.php">Kayan Yazı</a></li>
				
				<li><a href="insert.php">Ekle</a></li>
				<li><a href="delete.php">Sil</a></li>
				<li><a href="logout.php">Çık</a></li>
				
				
		
				</ul>
			</div>
		
		    <div class="icerik">
		
	
			</div>
			
		</div>
</div>

</body>

</html>-->
