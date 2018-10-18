<?php  
include "../controller/c_Riwayat.php";

$hapus = new Riwayat;

$id_diagnosa = $_GET['id_diagnosa'];
if (!empty($id_diagnosa)) {
	$hapus->Hapus($id_diagnosa);
	header('location: ../admin/riwayatd.php');
} else {
	header('location: ../admin/riwayatd.php');
}
?>