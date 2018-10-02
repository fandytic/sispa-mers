<?php  
include "../controller/c_BasisP.php";

$hapus = new BasisP;

$id = $_GET['id'];
if (!empty($id)) {
	$hapus->HapusBasis($id);
	header('location: ../admin/basisp.php');
} else {
	header('location: ../admin/basisp.php');
}
?>