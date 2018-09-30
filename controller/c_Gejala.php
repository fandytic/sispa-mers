<?php 
/**
 * 
 */
class Gejala
{

	function TampilSemua()
	{
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "SELECT * from ds_gejala");
		$i = 0;
		while($d = mysqli_fetch_array($query))
		{
			$data[$i]['id'] = $d['id'];
			$data[$i]['kode'] = $d['kode'];
			$data[$i]['nama'] = $d['nama'];
			$i++;
		}
		return $data;
	}

	function InsertGejala($kode, $nama){
		include "../koneksi/koneksi.php";
		mysqli_query($con, "insert into ds_gejala (kode, nama)
			values('$kode', '$nama')");
	}
}
?>