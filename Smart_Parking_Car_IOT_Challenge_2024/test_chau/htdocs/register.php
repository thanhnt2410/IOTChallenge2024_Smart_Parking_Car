<?php
session_start();
require 'mysqlConnect.php';
?>
<?php
if(isset($_POST['register'])){
  	$name=mysqli_real_escape_string($con,$_POST['name']);
	$email=mysqli_real_escape_string($con,$_POST['email']);
	$password=mysqli_real_escape_string($con,$_POST['password']);
    $password_confirm=mysqli_real_escape_string($con,$_POST['password_confirm']);
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
	$password_confirm= password_hash($_POST['password_confirm'], PASSWORD_DEFAULT);
	$sdt=mysqli_real_escape_string($con,$_POST['sdt']);
	$biensoxe=mysqli_real_escape_string($con,$_POST['biensoxe']);

	echo ("hello");
	if(!filter_var($email,FILTER_VALIDATE_EMAIL)){
		echo"<script>alert('your email is not valid!')</script>";
      echo"<script>window.open('index.php','_self')</script>";
		exit();
	}

	$sel_email="select * from users where email='$email'";
	$run_email=mysqli_query($con,$sel_email);
	$check_email=mysqli_num_rows($run_email);

	if($check_email==1){
		echo"<script>alert('This email is already registered,try another one!')</script>";
      echo"<script>window.open('index.php','_self')</script>";
		exit();
	}
	else{
		$_SESSION['driver_email']=$email;
		$insert="INSERT INTO `users` (`id`, `name`, `email`, `password`,`password_confirm`) VALUES (NULL, '$name', '$email', '$password', '$password_confirm')";
		$run_insert=mysqli_query($con,$insert);
		if($run_insert){
			echo"<script>alert('registration successful,welcome!')</script>";
	        echo"<script>window.open('home.php','_self')</script>";
		}
	}

	$sel_biensoxe="select * from users where biensoxe='$biensoxe'";
	$run_biensoxe=mysqli_query($con,$sel_biensoxe);
	$check_biensoxe=mysqli_num_rows($run_biensoxe);

	if($check_biensoxe==1){
		echo"<script>alert('This license plates is already registered!')</script>";
        echo"<script>window.open('index.php','_self')</script>";
		exit();
	}
	else{
		$_SESSION['driver_biensoxe']=$biensoxe;
		$insert="INSERT INTO `users` (`id`, `name`, `email`, `password`,`password_confirm`, `sdt`, `biensoxe`) VALUES (NULL, '$name', '$email', '$password', '$password_confirm', '$sdt', '$biensoxe')";
		$run_insert=mysqli_query($con,$insert);
		if($run_insert){
			echo"<script>alert('registration successful,welcome!')</script>";
      		echo"<script>window.open('home.php','_self')</script>";
		}
	}
}
?>
