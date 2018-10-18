<?php 
/**
 * 
 */
class Pasien
{
	
	function TampilSemua()
	{
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "SELECT * FROM pasien");
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
}
?>