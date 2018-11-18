<?php  
include "../controller/c_Rekam.php";
$id_pasien = $_GET['id_pasien'];
$hapus = new Rekam;

$id_riwayat = $_GET['id_riwayat'];
if (!empty($id_riwayat)) {
	$hapus->Hapus($id_riwayat);
	header('location: ../admin/riwayatrm.php?id_pasien='.$id_pasien);
} else {
	header('location: ../admin/riwayatrm.php');
}
?>