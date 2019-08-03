<?php 
include '../controller/c_Admin.php';

$nama = $_POST['nama'];
$username = $_POST['username'];
$password = $_POST['password'];
$email = $_POST['email'];
$nohp = $_POST['nohp'];
$tingkat = $_POST['tingkat'];

$insert = new Admin;
$insert->TambahDokter($nama,$username,$password,$email,$nohp,$tingkat);
header('location: ../admin/dokter.php')
?>