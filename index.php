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
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>SQL Demo</title>
  <link href="favicon.ico">
  <link rel="stylesheet" href="/vendor/twbs/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="/vendor/components/font-awesome/css/fontawesome-all.css">
  <link rel="stylesheet" href="/lib/styles/style.css">
<body class="body">
<div class="container">

  <table class="table">
    <thead class="thead-dark">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Titre</th>
      <th scope="col">Année</th>
      <th scope="col">Réalisateur</th>
      <th scope="col">Genre</th>
      <th scope="col">Note</th>
    </tr>
    </thead>
    <tbody>
    <?php
    $sql = "SELECT * FROM `film` ORDER BY `date`";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
      // output data of each row
      while($row = $result->fetch_assoc()) {
        ?>
        <tr>
          <th scope="row"><?php echo $row["id"];?></th>
          <td><?php echo $row["titre"];?></td>
          <td><?php echo $row["date"];?></td>
          <td><?php echo $row["realisateur"];?></td>
          <td><?php echo $row["genre"];?></td>
          <td><?php echo $row["note"];?></td>
        </tr>
        <?php
      }
    } else {
      echo "0 results";
    }
    ?>
    </tbody>
  </table>


  <div class="container-card">
    <?php
    $sql = "SELECT * FROM `film` WHERE `titre` = 'HOLD-UP'";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
      // output data of each row
      while($row = $result->fetch_assoc()) {
        ?>
        <div class="card col-3">
          <div class="content-img">
            <img class="card-img-top" src="<?php echo $row["image"];?>" alt="Card image cap">
          </div>
          <div class="card-body">
            <h4 class="card-title"><?php echo $row["titre"];?></h4>
            <p class="card-text"><?php echo $row["description"];?></p>
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">Date de sortie: <?php echo $row["date"];?></li>
            <li class="list-group-item">Réalisateur: <?php echo $row["realisateur"];?></li>
            <li class="list-group-item">Genre: <?php echo $row["genre"];?></li>
            <li class="list-group-item">Note: <?php echo $row["note"];?></li>
          </ul>
        </div>
        <?php
      }
    } else {
      echo "0 results";
    }
    ?>
  </div>

</div>
<?php
$conn->close();
?>

<script src="/vendor/components/jquery/jquery.js"></script>
<script src="/vendor/twbs/bootstrap/dist/js/bootstrap.js"></script>
<script src="/lib/scripts/script.js"></script>
<script>
    $(document).ready(function () {
        console.log($('.card-text').length);
    });
</script>

</body>
</html>
