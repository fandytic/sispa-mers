<?php  
include "../controller/c_Rekam.php";

$hapus = new Rekam;

$id_riwayat = $_GET['id_riwayat'];
if (!empty($id_riwayat)) {
	$hapus->Hapus($id_riwayat);
	header('location: ../admin/pasien.php');
} else {
	header('location: ../admin/riwayatrm.php');
}
?>