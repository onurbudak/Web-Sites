
<?php

class TableRows extends RecursiveIteratorIterator { 
    function __construct($it) { 
        parent::__construct($it, self::LEAVES_ONLY); 
    }

    function current() {
        return "<td style='width:150px;border:1px solid black;'>" . parent::current(). "</td>";
    }

    function beginChildren() { 
        echo "<tr>"; 
    } 

    function endChildren() { 
        echo "</tr>" . "\n";
    } 
} 

	

function b(){
	
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "webveritabani47";


try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
	session_start();
	}
catch(Exception $e)
	{
		die("Beklenmeyen bir hata oluÅŸtu:" .$e->getMEssage());
	}
$conn=null;

global $conn;
	
$d=date('l');
//echo $d;
$h=date('H');
//echo $h;


try{
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
 $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $stmt = $conn->prepare("SELECT * FROM user WHERE user_statu='admin'"); 
    $stmt->execute();
	 // set the resulting array to associative
    $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
		$i = 0;
    foreach(new TableRows(new RecursiveArrayIterator($stmt->fetchAll())) as $k=>$v) { 
		
			return $v;
			echo "<br>";


    }
}
catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
}
$conn = null;
}


function a(){
	
	$servername = "localhost";
$username = "root";
$password = "";
$dbname = "webveritabani47";


try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
	}
catch(Exception $e)
	{
		die("Beklenmeyen bir hata oluÅŸtu:" .$e->getMEssage());
	}
$conn=null;

global $conn;
try{
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
 $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $stmt = $conn->prepare("SELECT * FROM user WHERE user_statu='admin'"); 
    $stmt->execute();
	 // set the resulting array to associative
    $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
		$i = 0;
    foreach(new TableRows(new RecursiveArrayIterator($stmt->fetchAll())) as $k=>$v) { 
		
		return $v;
			echo "<br>";


    }
}
catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
}
$conn = null;
}

$user=b();
$pass=a();

//return $user;
//return $pass;
//echo  $user;
//echo "<br>";
//echo  $pass;

//$user = "onur";
//$pass = "123";


echo "</table>";



?>