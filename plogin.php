<?php
//memanggil file koneksi.php
include "koneksi/koneksi.php";

session_start(); //memulai fungsi session

//membuat variable dengan nilai dari form
$username = $_POST['username'];
$password = $_POST['password'];

$error = "Periksa kembali username dan password anda";
//proses login

// menyeleksi data user dengan username dan password yang sesuai
$login = mysqli_query($con, "select * from admin where username='$username' and password='$password'");
// menghitung jumlah data yang ditemukan
$cek = mysqli_num_rows($login);

// cek apakah username dan password di temukan pada database
if ($cek > 0) {
	$data = mysqli_fetch_assoc($login);

	// cek jika user login sebagai admin
	if ($data['tingkat']=="admin") {
		$_SESSION['username'] = $username;
		$_SESSION['tingkat'] = "admin";
		header('location:admin/dokter.php'); //jika berhasil login, maka masuk ke file yang dituju
	} elseif ($data['tingkat']=="dokter") {
		$_SESSION['username'] = $username;
		$_SESSION['tingkat'] = "dokter";
		$_SESSION['id_admin'] = $data['id_admin'];
		header('location:dokter/pasien.php'); //jika berhasil login, maka masuk ke file yang dituju
	} else {
		$_SESSION["error"] = $error;
		header("location: login.php");
	}
} else {
	$_SESSION["error"] = $error;
	header("location: login.php");
}
?>