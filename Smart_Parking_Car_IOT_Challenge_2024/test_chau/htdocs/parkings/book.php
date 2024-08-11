<?php
session_start();
require '../mysqlConnect.php';
require '../update_slots.php';

if ($_POST) {
    $slots_cost = $_POST['slots_cost'];
    $slot_id = $_POST['slot_id'];
    $slot_hours = $_POST['slot_hours'];
    $customer = $_SESSION['driver_email'];

    // Kiểm tra nếu người dùng có yêu cầu chưa được duyệt
    $check_cust = "SELECT * FROM `requests` WHERE `customer`='$customer' AND `status`='requested'";
    $result_cust = mysqli_query($con, $check_cust);

    if (mysqli_num_rows($result_cust) > 0) {
        echo '<div class="alert alert-warning" role="alert"><span class="glyphicon glyphicon-warning-sign"></span> ALERT!! It seems you have a pending request that has not been approved yet. Be patient, your parking request will be approved soon!! <span class="glyphicon glyphicon-warning-sign"></span> </div>';
    } else {
        // Kiểm tra số slot còn lại
        $check_avail = "SELECT `slot`, `remaining_slots` FROM `parkings` WHERE `id`='$slot_id' AND `remaining_slots` IS NOT NULL";
        $result_avail = mysqli_query($con, $check_avail);

        if ($result_avail) {
            if (mysqli_num_rows($result_avail) > 0) {
                while ($avail = mysqli_fetch_array($result_avail)) {
                    $remaining_slots = $avail['remaining_slots'];
                }

                // Kiểm tra và cập nhật số slot
                if ($remaining_slots >= 1) {
                    // Giảm 1 slot vì  đặt 1 slot
                    $now_slots = $remaining_slots - 1;
                    $update = "UPDATE `parkings` SET `remaining_slots`='$now_slots' WHERE `id`='$slot_id'";

                
                    $biensoxe_query = "SELECT `biensoxe` FROM `users` WHERE `email` = '$customer'";
                    $biensoxe_result = mysqli_query($con, $biensoxe_query);

             
                    if ($biensoxe_result && mysqli_num_rows($biensoxe_result) > 0) {
                    $biensoxe_row = mysqli_fetch_assoc($biensoxe_result);
                    $biensoxe = $biensoxe_row['biensoxe'];
    
                  
                    $book = "INSERT INTO `requests` (`id`, `parkings_id`, `slots`, `hours`, `cost`, `customer`, `status`, `biensoxe`) 
                      VALUES (NULL, '$slot_id', '1', '$slot_hours', '$slots_cost', '$customer', 'accepted', '$biensoxe')";

                    if (mysqli_query($con, $book) && mysqli_query($con, $update)) {
                        echo "You have successfully reserved this space.";
                    } else {
                        echo "Failed to reserve this parking space. Please try again. Error: " . mysqli_error($con);
                    }
                } else {
                    echo "ERROR!! Number of slots exceeds the remaining slots.";
                    $book = "INSERT INTO `requests` (`id`, `parkings_id`, `slots`, `hours`, `cost`, `customer`, `status`, `biensoxe`) 
                      VALUES (NULL, '$slot_id', '1', '$slot_hours', '$slots_cost', '$customer', 'rejected', '$biensoxe')";
                }
            } else {
                echo "Run out of slot.";
                $book = "INSERT INTO `requests` (`id`, `parkings_id`, `slots`, `hours`, `cost`, `customer`, `status`, `biensoxe`) 
                      VALUES (NULL, '$slot_id', '1', '$slot_hours', '$slots_cost', '$customer', 'rejected', '$biensoxe')";
            }
        } else {
            echo "ERROR!! Query to check availability failed. Error: " . mysqli_error($con);
        }
    }
}
}
?>
