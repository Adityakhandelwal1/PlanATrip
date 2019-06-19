<?php
$conn = mysqli_connect("localhost", "root", "1234","trip");

if ($conn === false){
			die("ERROR: couldn't connect" .mysqli_connect_error());
			}
$email = mysqli_real_escape_string($conn, $_REQUEST['email']);
$phone = mysqli_real_escape_string($conn, $_REQUEST['phone']);
$message = mysqli_real_escape_string($conn, $_REQUEST['message']);

$sql = "INSERT INTO info (email, phone, message) VALUES ('$email', '$phone','$message')";
if(mysqli_query($conn,$sql)){
				echo "Done";
				}
				else{
					echo "ERROR: couldn't execute $sql." . mysqli_connect_error;}

mysqli_close($conn);
?>
