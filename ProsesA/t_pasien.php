<?php 
include '../controller/c_Pasien.php';

$nama = $_POST['nama'];
$tgl_lahir = $_POST['tgl_lahir'];

$insert = new Pasien;
$insert->Tambah($nama, $tgl_lahir);
header('location: ../dokter/pasien.php')
?>