<?php
//memanggil file koneksi.php
include "koneksi/koneksi.php";

session_start(); //memulai fungsi session

//membuat variable dengan nilai dari form
$username = $_POST['username'];
$password = $_POST['password'];

$error = "Periksa kembali username dan password anda";
//proses login

//menyesuaikan dengan data di database
$hasil = mysqli_query($con, "select * from admin");
$row = mysqli_fetch_array($hasil);
if($row['username'] == $username && $row['password'] == $password) {
	$_SESSION['username'] = $username;
	header('location:admin/pasien.php'); //jika berhasil login, maka masuk ke file yang dituju
} else {
	$_SESSION["error"] = $error;
	header("location: login.php");
}
?>