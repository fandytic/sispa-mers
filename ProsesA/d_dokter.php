<?php 
include '../controller/c_Admin.php';

$hapus = new Admin;

$id_admin = $_GET['id_admin'];
if (!empty($id_admin)) {
	$hapus->HapusDokter($id_admin);
	header('location: ../admin/dokter.php');
} else {
	header('location: ../admin/dokter.php');
}
?>