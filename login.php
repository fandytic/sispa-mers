<?php
session_start();
include "koneksi/koneksi.php";

if(!isset($_SESSION['username'])){

} else {
	if ($_SESSION["tingkat"] == "dokter") {
		$username = $_SESSION["username"];
		$id_admin = $_SESSION['id_admin'];
		header('location:dokter/pasien.php');
	}
	if ($_SESSION['tingkat'] == "admin") {
		$username = $_SESSION["username"];
		header('location:admin/dokter.php');
	}
}
require_once('koneksi/koneksi.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login Sistem Pakar</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="assetsL/images/icons/favicon.png"/>
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assetsL/vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assetsL/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assetsL/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assetsL/vendor/animate/animate.css">
	<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="assetsL/vendor/css-hamburgers/hamburgers.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assetsL/vendor/animsition/css/animsition.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assetsL/vendor/select2/select2.min.css">
	<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="assetsL/vendor/daterangepicker/daterangepicker.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assetsL/css/util.css">
	<link rel="stylesheet" type="text/css" href="assetsL/css/main.css">
	<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(assetsL/images/bg-02.jpg);">
					<span class="login100-form-title-1">
						Admin Login
					</span>
				</div>

				<form method="post" class="login100-form validate-form" action="plogin.php">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">Username</span>
						<input class="input100" type="text" name="username" placeholder="Enter username">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="password" placeholder="Enter password">
						<span class="focus-input100"></span>
					</div>
					
					<div class="flex-sb-m w-full p-b-30">
						<?php  
						if (isset($_SESSION["error"])) {
							$error = $_SESSION["error"];
							echo "<p style='color: red'>$error</p>";
						}
						?>
						<div class="contact100-form-checkbox">
							
						</div>
					</div>

					<div class="flex-sb-m w-full p-b-30">
						<div class="contact100-form-checkbox">
							
						</div>

						<div>
							<a href="index.php" class="txt1">
								Kembali ke website
							</a>
						</div>
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit">
							Login
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<!--===============================================================================================-->
	<script src="assetsL/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="assetsL/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="assetsL/vendor/bootstrap/js/popper.js"></script>
	<script src="assetsL/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="assetsL/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="assetsL/vendor/daterangepicker/moment.min.js"></script>
	<script src="assetsL/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="assetsL/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="assetsL/js/main.js"></script>

</body>
</html>
<?php unset($_SESSION["error"]); ?>