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
			$data[$i]['nama'] = $d['nama'];
			$data[$i]['kett'] = $d['kett'];
			$i++;
		}
		return $data;
	}

	function InsertPenyakit($nama, $kett){
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "INSERT into ds_penyakit ( nama, kett)
			values('$nama', '$kett')");
	}

	function HapusPenyakit($id)
	{
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "DELETE FROM ds_penyakit WHERE id = '$id'");
	}

	function EditPenyakit($id,$nama,$kett)
	{
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "UPDATE ds_penyakit set nama='$nama',kett='$kett' WHERE id='$id'");
	}

	function TampilSatuData($id)
	{
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "SELECT * FROM ds_penyakit WHERE id = '$id'");
		$p = mysqli_fetch_object($query);
		$this->id = $p->id;
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
error_reporting(0);
?>