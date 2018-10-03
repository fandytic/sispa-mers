<?php 
include '../controller/c_Penyakit.php';
$id = $_POST['id'];
$kode = $_POST['kode'];
$nama = $_POST['nama'];
$kett = $_POST['kett'];

$update = new Penyakit;
$update->EditPenyakit($id, $kode, $nama, $kett);

header('location: ../admin/penyakit.php');
?>