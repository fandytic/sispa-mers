<?php 
include "../controller/c_Admin.php";

$username = $_POST['username'];
$password = $_POST['password'];

$login = new Admin;

$login->Login($username,$password);
$row = mysqli_fetch_array($login);
if($row['username'] == $username && $row['password'] == $password) {
		session_start(); //memulai fungsi session
		$_SESSION['username'] = $username;
	header("location: ../admin/profil.php");
} else {
	header("location: ../login.php");
}
?>