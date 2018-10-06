<?php 
include '../controller/c_BasisP.php';

$gejala = $_POST['gejala'];
$penyakit = $_POST['penyakit'];
$ds = $_POST['ds'];

$insert = new BasisP;
$insert->InsertBasis($gejala, $penyakit, $ds);
header('location: ../admin/basisp.php')
?>