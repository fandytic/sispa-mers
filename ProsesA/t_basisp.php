<?php 
include '../controller/c_BasisP.php';


$id_penyakit = $_POST['id_penyakit'];
$id_gejala = $_POST['id_gejala'];
$ds = $_POST['ds'];

$insert = new BasisP;
$insert->InsertBasis($id_penyakit, $id_gejala, $ds);
header('location: ../admin/basisp.php')
?>