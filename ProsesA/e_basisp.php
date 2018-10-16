<?php 
include '../controller/c_BasisP.php';
$id = $_POST['id'];
$ds = $_POST['ds'];

$update = new BasisP;
$update->EditBasis($id,$ds);

header('location: ../admin/basisp.php');
?>