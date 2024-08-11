<?php session_start();
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

    <title>smart-parking</title>
    <link rel="icon" href="assets/img/ny.jpg" />

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

  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="header black-bg">

            <!--logo start-->
            <a href="index.php" class="logo"><b>Smart-parking</b></a>
            <!--logo end-->
               <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <li><a class="logout" href="attendant_login.php" style="background-color:#ffd777;">Logout</a></li>
            	</ul>
            </div>

        </header>
      <!--header end-->

      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
                    
                  <li class="mt">
                  <a><h5  style="text-transform:uppercase;"> <?=isset($fname) ." ".isset($lname); ?></h5></a>
                      <a href="attendant_portal.php">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->

      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
    <section class="wrapper">
        <div class="row">
            <div class="col-md-12">
                <div class="content-panel">
                    <h2  style="text-align: center;" ><strong>View All Slots</h2>

                    <?php
                    // Truy vấn số lượng slot theo từng trạng thái
                    $query_empty = "SELECT COUNT(*) as count FROM `thong_tin_diem_do` WHERE `status` = '0'";
                    $query_not_empty = "SELECT COUNT(*) as count FROM `thong_tin_diem_do` WHERE `status` = '1'";
                 

                    $result_empty = mysqli_query($con, $query_empty);
                    $result_not_empty = mysqli_query($con, $query_not_empty);
                   

                    $count_empty = mysqli_fetch_assoc($result_empty)['count'];
                    $count_not_empty = mysqli_fetch_assoc($result_not_empty)['count'];
                    
                    ?>

                    
                    <ul  style="text-align: center;">
                        <li>Available slots: <?php echo $count_empty; ?></li>
                        <li>Not Available slots: <?php echo $count_not_empty; ?></li>
                        
                    </ul>

                    <table class="table table-bordered">
                        <!-- <thead>
                            <tr>
                                <th>parkinglot_id</th>
                               
                                <th>status</th>
                                <th>biensoxe</th>
                            </tr>
                        </thead> -->
                        <tbody>
                            
                           


                                
        <h2 class="phead" style="text-align: center;"><strong>Thông tin bãi đỗ xe</h2>
        <?php 
            $sql = "SELECT * FROM `thong_tin_diem_do` WHERE fire > 50;";
            $result = mysqli_query($con, $sql);
            $count = mysqli_num_rows($result);
            
            if ($count > 0) {
                // path
                $myAudioFile = "Tieng-coi-canh-bao.mp3";
                echo '<audio src="'.$myAudioFile.'" autoplay></audio>';
            }
        ?>
        <th>
        <div class="strt"> 
        <table class="gridtable">
            <div class = "center"> 
            <tr  style="text-align: center;"> Node Sensor </tr>
            <tr>
                <?php 
                    $sql = "SELECT * FROM thong_tin_diem_do WHERE id = '1'";
                    $result = mysqli_query($con, $sql);
                    $count = mysqli_num_rows($result);
                    if ($count > 0) {
                        $data = mysqli_fetch_assoc($result);
                        $name = $data['name'];
                        $fireStatus = $data['fire'];
                        $fireColor = $fireStatus == 0 ? "Green" : "Red";
                        $fireText = $fireStatus == 0 ? "Bình thường" : "Cháy";
                        $statusColor = $data['status'] == 0 ? "Green" : "Red";
                    
                        echo "<td style=\"background: $statusColor; color: White;\"><center><h3>$name</h3><center><img src=\"src/".($data['status'] == 0 ? "no_car.png" : "car.png")."\" /></td>";
                        echo "<td style=\"background: $fireColor; color: White;\"><center><h3>Trạng thái: $fireText</h3><center></td>";
                    } else {
                        echo "Không có dữ liệu.";
                    }
                ?>
            </tr>
            <tr>
                <?php 
                    $sql = "SELECT * FROM thong_tin_diem_do WHERE id = '2'";
                    $result = mysqli_query($con, $sql);
                    $count = mysqli_num_rows($result);
                    $name = $data['name'];
                    if ($count > 0) {
                        $data = mysqli_fetch_assoc($result);
                        $fireStatus = $data['fire'];
                        $fireColor = $fireStatus == 0 ? "Green" : "Red";
                        $fireText = $fireStatus == 0 ? "Bình thường" : "Cháy";
                        $statusColor = $data['status'] == 0 ? "Green" : "Red";
                    
                        echo "<td style=\"background: $statusColor; color: White;\"><center><h3>$name</h3><center><img src=\"src/".($data['status'] == 0 ? "no_car.png" : "car.png")."\" /></td>";
                        echo "<td style=\"background: $fireColor; color: White;\"><center><h3>Trạng thái: $fireText</h3><center></td>";
                    } else {
                        echo "Không có dữ liệu.";
                    }
                ?>
            </tr>
            <tr>
                <?php 
                    $sql = "SELECT * FROM thong_tin_diem_do WHERE id = '3'";
                    $result = mysqli_query($con, $sql);
                    $count = mysqli_num_rows($result);
                    $name = $data['name'];
                    if ($count > 0) {
                        $data = mysqli_fetch_assoc($result);
                        $fireStatus = $data['fire'];
                        $fireColor = $fireStatus == 0 ? "Green" : "Red";
                        $fireText = $fireStatus == 0 ? "Bình thường" : "Cháy";
                        $statusColor = $data['status'] == 0 ? "Green" : "Red";
                    
                        echo "<td style=\"background: $statusColor; color: White;\"><center><h3>$name</h3><center><img src=\"src/".($data['status'] == 0 ? "no_car.png" : "car.png")."\" /></td>";
                        echo "<td style=\"background: $fireColor; color: White;\"><center><h3>Trạng thái: $fireText</h3><center></td>";
                    } else {
                        echo "Không có dữ liệu.";
                    }
                ?>
            </tr>
            
            </div>
        </table>
        </div>
        </th>
        <th>
        <div class="strt"> 
        <table class="gridtable">
            
        <tr> Camera ngoài trời</tr>
            <tr>
                <?php 
                    $sql = "SELECT * FROM thong_tin_diem_do WHERE id = '4'";
                    $result = mysqli_query($con, $sql);
                    $count = mysqli_num_rows($result);
                    $name = $data['name'];
                    if ($count > 0) {
                        $data = mysqli_fetch_assoc($result);
                        $fireStatus = $data['fire'];
                        $fireColor = $fireStatus == 0 ? "Green" : "Red";
                        $fireText = $fireStatus == 0 ? "Bình thường" : "Cháy";
                        $statusColor = $data['status'] == 0 ? "Green" : "Red";
                    
                        echo "<td style=\"background: $statusColor; color: White;\"><center><h3>$name</h3><center><img src=\"src/".($data['status'] == 0 ? "no_car.png" : "car.png")."\" /></td>";
                        echo "<td style=\"background: $fireColor; color: White;\"><center><h3>Trạng thái: $fireText</h3><center></td>";
                    } else {
                        echo "Không có dữ liệu.";
                    }
                ?>
            </tr>
            <tr>
                <?php 
                    $sql = "SELECT * FROM thong_tin_diem_do WHERE id = '5'";
                    $result = mysqli_query($con, $sql);
                    $count = mysqli_num_rows($result);
                    $name = $data['name'];
                    if ($count > 0) {
                        $data = mysqli_fetch_assoc($result);
                        $fireStatus = $data['fire'];
                        $fireColor = $fireStatus == 0 ? "Green" : "Red";
                        $fireText = $fireStatus == 0 ? "Bình thường" : "Cháy";
                        $statusColor = $data['status'] == 0 ? "Green" : "Red";
                    
                        echo "<td style=\"background: $statusColor; color: White;\"><center><h3>$name</h3><center><img src=\"src/".($data['status'] == 0 ? "no_car.png" : "car.png")."\" /></td>";
                        echo "<td style=\"background: $fireColor; color: White;\"><center><h3>Trạng thái: $fireText</h3><center></td>";
                    } else {
                        echo "Không có dữ liệu.";
                    }
                ?>
            </tr>
            <tr>
                <?php 
                    $sql = "SELECT * FROM thong_tin_diem_do WHERE id = '6'";
                    $result = mysqli_query($con, $sql);
                    $count = mysqli_num_rows($result);
                    $name = $data['name'];
                    if ($count > 0) {
                        $data = mysqli_fetch_assoc($result);
                        $fireStatus = $data['fire'];
                        $fireColor = $fireStatus == 0 ? "Green" : "Red";
                        $fireText = $fireStatus == 0 ? "Bình thường" : "Cháy";
                        $statusColor = $data['status'] == 0 ? "Green" : "Red";
                    
                        echo "<td style=\"background: $statusColor; color: White;\"><center><h3>$name</h3><center><img src=\"src/".($data['status'] == 0 ? "no_car.png" : "car.png")."\" /></td>";
                        echo "<td style=\"background: $fireColor; color: White;\"><center><h3>Trạng thái: $fireText</h3><center></td>";
                    } else {
                        echo "Không có dữ liệu.";
                    }
                ?>
            </tr>
            <tr>
                <?php 
                    $sql = "SELECT * FROM thong_tin_diem_do WHERE id = '7'";
                    $result = mysqli_query($con, $sql);
                    $count = mysqli_num_rows($result);
                    $name = $data['name'];
                    if ($count > 0) {
                        $data = mysqli_fetch_assoc($result);
                        $fireStatus = $data['fire'];
                        $fireColor = $fireStatus == 0 ? "Green" : "Red";
                        $fireText = $fireStatus == 0 ? "Bình thường" : "Cháy";
                        $statusColor = $data['status'] == 0 ? "Green" : "Red";
                    
                        echo "<td style=\"background: $statusColor; color: White;\"><center><h3>$name</h3><center><img src=\"src/".($data['status'] == 0 ? "no_car.png" : "car.png")."\" /></td>";
                        echo "<td style=\"background: $fireColor; color: White;\"><center><h3>Trạng thái: $fireText</h3><center></td>";
                    } else {
                        echo "Không có dữ liệu.";
                    }
                ?>
            </tr>

        </table>
        </div>
                </th>
        </div>
        <p class="status" style="text-align: center;"><strong>Xanh -> Đang trống, Đỏ -> Đã có xe</p>

                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
</section>



    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>

    <!--script for this page-->

  <script>
      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script>

  </body>
</html>
