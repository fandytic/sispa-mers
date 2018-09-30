<?php 
include '../controller/c_Gejala.php';

$kode = $_POST['kode'];
$nama = $_POST['nama'];

$insert = new Gejala;
$insert->InsertGejala($kode, $nama);
header('location: ../admin/gejala.php')
?>