<?php 
include '../controller/c_Pasien.php';

$id_pasien = $_POST['id_pasien'];
$nama = $_POST['nama'];
$tgl_lahir = $_POST['tgl_lahir'];

$update = new Pasien;
$update->Edit($id_pasien, $nama,$tgl_lahir);

header('location: ../dokter/pasien.php');
?>