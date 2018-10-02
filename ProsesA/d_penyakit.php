<?php  
include "../controller/c_Penyakit.php";

$hapus = new Penyakit;

$id = $_GET['id'];
if (!empty($id)) {
	$hapus->HapusPenyakit($id);
	header('location: ../admin/penyakit.php');
} else {
	header('location: ../admin/penyakit.php');
}
?>