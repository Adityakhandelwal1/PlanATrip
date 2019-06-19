<?php 

$username = $_POST['user'];
$password = $_POST['pass'];

$username = stripcslashes($username);
$password = stripcslashes($password);

mysql_connect("localhost", "root", "1234");
mysql_select_db("trip");
$result = mysql_query("select * from login where name = '$username' and pass = '$password' ") or die("Failed to query database " .mysql_error());
$row = mysql_fetch_array($result);
if($row['name'] == $username && $row['pass'] == $password){
	$person = $username;
	header('location: mainpage.html');
	}
	else {
		echo "Failed To Login";
		}

?>
