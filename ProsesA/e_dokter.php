<?php 
include '../controller/c_Admin.php';
$id_admin = $_POST['id_admin'];
$nama = $_POST['nama'];
$username = $_POST['username'];
$password = $_POST['password'];
$email = $_POST['email'];
$nohp = $_POST['nohp'];

$update = new Admin;
$update->UbahDokter($id_admin, $nama, $username, $password, $email, $nohp);

header('location: ../admin/dokter.php');
?>