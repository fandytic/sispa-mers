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
}
 ?>