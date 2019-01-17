<?php 
include '../controller/c_Gejala.php';

$nama = $_POST['nama'];

$insert = new Gejala;
$insert->InsertGejala($nama);
header('location: ../admin/gejala.php')
?>