<?php 
include '../controller/c_Pasien.php';

$id_admin = $_POST['id_admin'];
$nama = $_POST['nama'];
$tgl_lahir = $_POST['tgl_lahir'];

$insert = new Pasien;
$insert->Tambah($nama, $tgl_lahir, $id_admin);
header('location: ../dokter/pasien.php')
?>