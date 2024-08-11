<?php
session_start();
require 'mysqlConnect.php';
require 'attendant_details.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>Attendant</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div id="login-page">
    <div class="container">
        <form class="form-login" action="attendant_login.php" method="post">
            <h2 class="form-login-heading">sign in now</h2>
            <div class="login-wrap">
                <input type="text" name="username" class="form-control" placeholder="Username" autofocus>
                <br>
                <input type="password" name="password" class="form-control" placeholder="Password">
                <br><br>
                <button class="btn btn-theme btn-block" name="attendant_login" type="submit"><i class="fa fa-lock"></i> SIGN IN</button>
            </div>
        </form>
    </div>
</div>

<!-- js placed at the end of the document so the pages load faster -->
<script src="assets/js/jquery.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<!--BACKSTRETCH-->
<script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script>
<script>
    $.backstretch("assets/img/Smp.jpg", {speed: 500});
</script>

<?php
if (isset($_POST['attendant_login'])) {
    $username = mysqli_real_escape_string($con, $_POST['username']);
    $password = mysqli_real_escape_string($con, $_POST['password']);

    $stmt = $con->prepare("SELECT * FROM attendant WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();

        if (password_verify($password, $row["password"])) {
            $_SESSION['username'] = $username;
            $query_parkings_id = "SELECT parkings_id FROM attendant WHERE username = '$username'";
            $result_parkings_id = mysqli_query($con, $query_parkings_id);
            if ($result_parkings_id) {
                $row = mysqli_fetch_assoc($result_parkings_id);
                $parkings_id = $row['parkings_id'];

                echo "<script>
                        alert('You are now logged in as attendant of parking id = $parkings_id');
                        setTimeout(function() {
                            window.location.href = 'attendant_portal.php';
                        }, 5000);
                      </script>";
                echo "<script>window.open('attendant_portal.php', '_self')</script>";
            } else {
                echo "Error retrieving parking ID.";
            }
        } else {
          $_SESSION['username'] = $username;
          $query_parkings_id = "SELECT parkings_id FROM attendant WHERE username = '$username'";
          $result_parkings_id = mysqli_query($con, $query_parkings_id);
          if ($result_parkings_id) {
              $row = mysqli_fetch_assoc($result_parkings_id);
              $parkings_id = $row['parkings_id'];

              echo "<script>
                        alert('You are now logged in as attendant of parking id = $parkings_id');
                        setTimeout(function() {
                            window.location.href = 'attendant_portal.php';
                        }, 5000);
                      </script>";
              echo "<script>window.open('attendant_portal.php', '_self')</script>";
        }
    } 
  }
}
?>
</body>
</html>
