<?php
session_start();
require 'mysqlConnect.php';
require 'update_slots.php';
require "driver.details.php";
if (!$_SESSION['driver_email']) {
  header("location: index.php");
}
else {

?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Smart Parking Web Portal</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="datatable/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="datatable/keyTable.bootstrap.min.css" rel="stylesheet">
    <link href="custom.css" rel="stylesheet">
    <style>


.header {
            background-color: #333;
            color: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .logo {
            font-size: 24px;
            font-weight: bold;
        }
        .nav-menu {
            display: flex;
            gap: 20px;
        }
        .nav-menu a {
            color: white;
            text-decoration: none;
            padding: 8px 16px;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        .nav-menu a:hover {
            background-color: #555;
        }

.area{
  margin-bottom: 15px;
}

.cart-nav ul li {
  margin:3%;
  padding: 3%;
  color: #0000 !important;
}

.Head {
  text-transform: uppercase;
   
   color: 	#009688 !important;
}

.modal-backdrop {
    z-index: 1020 !important;
}

.parking_text {
  color: #2F4F4F !important;
  text-transform: uppercase;
}

.total {
  color: #FF0000 !important;
}
.modal { background: rgba(000, 000, 000, 0.8); min-height:1000000px; }

.fa-circle {
  color: green;
}
    </style>
</head>
<body>
 <header class="header">
        <div class="logo">BK VISSION</div>
        <nav class="nav-menu">
            <a href="driver.details.php">Tài khoản</a>
            <a href="booking-history.php">Xem lịch sử đặt chỗ</a>
            <a href="#payment">Thanh toán</a>
        </nav>
    </header>
    <div >
      <div class="container">
         <div class="col-md-3"></div>
         <div class="col-md-8">
                 <center><h1 class="colors"><a href="home.php" style="text-decoration: none; color:white;">SMART PARKING Portal</a></h1></center>

         </div>
         <div class="col-md-1"></div>
</div>

<div class="row">
   <div class="container">
     
         <div class="cart-nav col-xs-4">
           <ul>
             <li class="list-group-item" id="requests">           
                <div class="thumbnail">              
                      <div class="caption">
                      <center>
                        <h3><?php echo "User: " . $name; ?></h3>
                        <p><?php echo "Mail: " . $email; ?></p>
                        <p><?php echo "SDT: ". $sdt; ?></p>
                        <p><?php echo "Biển số xe : ". $biensoxe; ?></p> 

                        <p><i id="#online" class="fa fa-circle" aria-hidden="true"></i> Online</p>
                        <p><a href="logout.php"><i class="fa fa-power-off" aria-hidden="true"></i> LOGOUT</a></p>
                        </center>
                      </div>
                    </div>                   
             </li> 

             <li class="list-group-item" >
               
                    <select name="street" class="form-control" onchange="filter_park()" id="street">
                      <option value="">Select Street</option>
                      <?php
                          $select_street = "SELECT DISTINCT street FROM `parkings`";
                          $result_street = mysqli_query($con, $select_street);
                          while($street = mysqli_fetch_array($result_street)){
                            ?>
                            <option value="<?=$street['street']?>"><?=$street['street']?></option>
                            <?php
                          }
                      ?>
                    </select>
                  
             </li>

             

             <li class="list-group-item" id="requests"><a><span class="glyphicon glyphicon-envelope"></span> Notifications</a></li>

            
           </ul>
         </div>

         <div class="content col-xs-8">
            <div id = "home">
                
            </div>
         </div>

   </div>
</div>



    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="jquery/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <script>
$("#home").load("parkings/parkings.php");

  function filter_park(){
    var city1 = $("#city").val();
    var street1 = $("#street").val();
 $.post("parkings/parkings.php", {city:city1, street:street1}, function(data){
    $("#home").html(data);
 })

  }

  $("#requests").click(function(){
    $("#home").load("feedback/requests.php");  
  });

  $("#receipt").click(function(){
    $("#home").load("receipt/new.php");  
  });

    </script>
  </body>
</html>
<?php } ?>
