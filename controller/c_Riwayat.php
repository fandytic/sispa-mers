<?php 
/**
 * 
 */
class Riwayat
{
	
	function TampilSemua()
	{
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "SELECT * from diagnosa");
		$i = 0;
		while($d = mysqli_fetch_array($query))
		{
			$data[$i]['id_diagnosa'] = $d['id_diagnosa'];
			$data[$i]['tanggal'] = $d['tanggal'];
			$data[$i]['gejala'] = $d['gejala'];
			$data[$i]['penyakit'] = $d['penyakit'];
			$data[$i]['nilai'] = $d['nilai'];
			$data[$i]['persentase'] = $d['persentase'];
			$i++;
		}
		return $data;
	}

	function Hapus($id_diagnosa)
	{
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "DELETE FROM diagnosa WHERE id_diagnosa = '$id_diagnosa'");
	}

	function Count(){
		include 'koneksi/koneksi.php';
		$query = mysqli_query($con, "SELECT COUNT(*) as jum FROM diagnosa");
		$hasil = mysqli_fetch_object($query);
		$this->jum = $hasil->jum;
	}
}
error_reporting(0);
 ?>