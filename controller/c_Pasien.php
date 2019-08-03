<?php 
/**
 * 
 */
class Pasien
{
	
	function TampilSemua($id_admin)
	{
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "SELECT * FROM pasien WHERE id_admin='$id_admin'");
		$i = 0;
		while($d = mysqli_fetch_array($query))
		{
			$data[$i]['id_pasien'] = $d['id_pasien'];
			$data[$i]['nama'] = $d['nama'];
			$data[$i]['tgl_lahir'] = $d['tgl_lahir'];
			$i++;
		}
		return $data;
	}

	function Tambah($nama, $tgl_lahir, $id_admin)
	{
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "INSERT INTO pasien (nama, tgl_lahir, id_admin)
			values('$nama', '$tgl_lahir', '$id_admin')");
	}

	function Hapus($id_pasien)
	{
		include "../koneksi/koneksi.php";
		$query - mysqli_query($con,"DELETE FROM pasien WHERE id_pasien = '$id_pasien'");
	}

	function Edit($id_pasien, $nama, $tgl_lahir)
	{
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con,"UPDATE pasien set nama = '$nama', tgl_lahir = '$tgl_lahir' WHERE id_pasien = '$id_pasien'");
	}

	function TampilSatuData($id_pasien)
	{
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "SELECT * FROM pasien WHERE id_pasien = '$id_pasien'");
		$g = mysqli_fetch_object($query);
		$this->nama = $g->nama;
		$this->tgl_lahir = $g->tgl_lahir;
	}
}
error_reporting(0);
?>