<?php 
include '../controller/c_BasisP.php';

$id = $_POST['id'];
$id_penyakit = $_POST['id_penyakit'];
$id_gejala = $_POST['id_gejala'];
$ds = $_POST['ds'];

$update = new BasisP;
$update->EditBasis($id,$id_penyakit,$id_gejala,$ds);
/*header('location: ../admin/basisp.php');*/
?>