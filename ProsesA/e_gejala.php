<?php 
include '../controller/c_Gejala.php';
$id = $_POST['id'];
$nama = $_POST['nama'];

$update = new Gejala;
$update->EditGejala($id, $nama);

header('location: ../admin/gejala.php');
?>