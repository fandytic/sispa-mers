<?php  
/**
 * 
 */
class Penyakit
{
	
	function TampilSemua()
	{
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "SELECT * from ds_penyakit");
		$i = 1;
		while($d = mysqli_fetch_array($query))
		{
			$data[$i]['id'] = $d['id'];
			$data[$i]['kode'] = $d['kode'];
			$data[$i]['nama'] = $d['nama'];
			$data[$i]['kett'] = $d['kett'];
			$i++;
		}
		return $data;
	}
}
?>