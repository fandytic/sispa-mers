<?php 
include '../controller/c_Gejala.php';

$hapus = new Gejala;

$id = $_GET['id'];
if (!empty($id)) {
	$hapus->HapusGejala($id);
	header('location: ../admin/gejala.php');
} else {
	header('location: ../admin/gejala.php');
}
?>