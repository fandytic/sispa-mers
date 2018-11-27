<?php 
include '../controller/c_BasisP.php';

$id_penyakit = $_POST['id_penyakit'];
$id_gejala = count($_POST['id_gejala']);
$ds = count($_POST['ds']);

$insert = new BasisP;
$insert->Cek($id_penyakit, $id_gejala, $ds);
?>