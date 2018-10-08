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

	function InsertPenyakit($kode, $nama, $kett){
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "insert into ds_penyakit (kode, nama, kett)
			values('$kode', '$nama', '$kett')");
	}

	function HapusPenyakit($id)
	{
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "DELETE FROM ds_penyakit WHERE id = '$id'");
	}

	function EditPenyakit($id,$kode,$nama,$kett)
	{
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "UPDATE ds_penyakit set kode='$kode',nama='$nama',kett='$kett' WHERE id='$id'");
	}

	function TampilSatuData($id)
	{
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "SELECT * FROM ds_penyakit WHERE id = '$id'");
		$p = mysqli_fetch_object($query);
		$this->kode = $p->kode;
		$this->nama = $p->nama;
		$this->kett = $p->kett;
	}

	function TampilAngka()
	{
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "SELECT max(id) as nilai FROM ds_penyakit");
		$g = mysqli_fetch_object($query);
		$this->nilai = $g->nilai;
	}

}
?>