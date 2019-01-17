<?php 
include '../controller/c_Penyakit.php';
$id = $_POST['id'];
$nama = $_POST['nama'];
$kett = $_POST['kett'];

$update = new Penyakit;
$update->EditPenyakit($id, $nama, $kett);

header('location: ../admin/penyakit.php');
?>