<?php  
/**
 * 
 */
class BasisP
{
	
	function TampilSemua()
	{
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "SELECT a.*, g.nama as nama_gejala,p.nama as nama_penyakit from ds_aturan a,ds_gejala g, ds_penyakit p where a.id_penyakit=p.id and a.id_gejala = p.id");

		//$query = mysqli_query($con, "SELECT * from ds_aturan a, ds_penyakit b, ds_gejala c where b.id = a.id_penyakit");

		$i = 0;
		while($d = mysqli_fetch_array($query))
		{
			$data[$i]['id'] = $d['id'];
			$data[$i]['id_penyakit'] = $d['id_penyakit'];
			$data[$i]['id_gejala'] = $d['id_gejala'];
			$data[$i]['ds'] = $d['ds'];
			$data[$i]['nama_penyakit'] = $d['nama_penyakit'];
			$data[$i]['nama_gejala'] = $d['nama_gejala'];
			$i++;
		}
		return $data;
	}

	function HapusBasis($id)
	{
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "DELETE FROM ds_aturan WHERE id = '$id'");
	}
}
?>