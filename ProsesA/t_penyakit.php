<?php
include "../controller/c_Penyakit.php";

$nama = $_POST['nama'];
$kett = $_POST['kett'];

$insert = new Penyakit;
$insert->InsertPenyakit($nama, $kett);
header('location: ../admin/penyakit.php')
?>