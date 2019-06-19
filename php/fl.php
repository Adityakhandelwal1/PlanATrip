<?php
$destination = $_GET['destination'];
$servername = "localhost";
$username = "root";
$password = "1234";
$dbname = "trip";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT * FROM flight where place2 = '$destination' ";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "flight_id: " . $row["flight_id"]. " From : " . $row["place1"]. " To :" . $row["place2"]. " Cost " .$row["cost"]. " Class " .$row["class"]. " date : " .$row["date"]. "<br>";
    }
} else {
    echo "0 results";
}

$sql1 = "SELECT * FROM flight where place2 = '$destination' ";
$result1 = $conn->query($sql1);

if ($result1->num_rows > 0) {
    while($row = $result1->fetch_assoc()) {
        echo "train_id: " . $row["train_id"]. " From : " . $row["place1"]. " To :" . $row["place2"]. " Cost " .$row["cost"]. " Class " .$row["class"]. "<br>";
    }
} else {
    echo "0 results";
}



$conn->close();
?>


