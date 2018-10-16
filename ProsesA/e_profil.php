<?php
//memanggil file koneksi.php
include "../koneksi/koneksi.php";

//membuat session berjalan
session_start();

//memanggil session
$username = $_SESSION["username"];

//membuat variable dengan nilai dari form
$nama = $_POST["nama"];
$password = $_POST["password"];

//query update database
$sql = "UPDATE admin SET nama = '$nama', password = '$password' WHERE username = '$username'";

//melakukan eksekusi
if(mysqli_query($con, $sql)){
	header('location:../admin/profil.php');
} else {
header('location:admin/awawawawa.php');
}
?>
