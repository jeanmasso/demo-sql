<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>SQL Demo</title>
<body>
<?php
$servername = "10.16.1.188:32768";
$username = "root";
$password = "root";
$dbname = "cinema";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM `film`";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "<br> id: ". $row["id"]. " - Name: ". $row["titre"]. " " . $row["date"] . $row["note"] . "<br>";
  }
} else {
  echo "0 results";
}

$conn->close();
?>

</body>
</html>