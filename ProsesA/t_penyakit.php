<?php
include "../controller/c_Penyakit.php";

$kode = $_POST['kode'];
$nama = $_POST['nama'];
$kett = $_POST['kett'];

$insert = new Penyakit;
$insert->InsertPenyakit($kode, $nama, $kett);
header('location: ../admin/penyakit.php')
?>