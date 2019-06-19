<?php
$username = $_POST['username1'];
$password = $_POST['passwordd'];
$repeat = $_POST['repeat'];
$conn = mysqli_connect("localhost", "root", "1234","trip");

$sql = "Insert into login (name , pass ) values ( '$username' , '$password')";
if (mysqli_query($conn, $sql)) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
?>
