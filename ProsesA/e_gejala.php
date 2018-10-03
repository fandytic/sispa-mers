<?php 
include '../controller/c_Gejala.php';
$id = $_POST['id'];
$kode = $_POST['kode'];
$nama = $_POST['nama'];

$update = new Gejala;
$update->EditGejala($id, $kode, $nama);

header('location: ../admin/gejala.php');
?>