<?php  
/**
 * 
 */
class BasisP
{
	
	function TampilSemua()
	{
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "SELECT a.*, g.nama as nama_gejala,p.nama as nama_penyakit from ds_aturan a,ds_gejala g, ds_penyakit p where a.id_penyakit=p.id and a.id_gejala = g.id");

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

	function TampilSatuData($id)
	{
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "SELECT a.*, g.nama as nama_gejala,p.nama as nama_penyakit from ds_aturan a,ds_gejala g, ds_penyakit p where a.id_penyakit=p.id and a.id_gejala = g.id and a.id = '$id' ");
		$g = mysqli_fetch_object($query);
		$this->id_penyakit = $g->id_penyakit;
		$this->id_gejala = $g->id_gejala;
		$this->ds = $g->ds;
		$this->nama_penyakit = $g->nama_penyakit;
		$this->nama_gejala = $g->nama_gejala;
	}

	function HapusBasis($id)
	{
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "DELETE FROM ds_aturan WHERE id = '$id'");
	}

	function InsertBasis($id_penyakit, $id_gejala, $ds)
	{
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "INSERT INTO ds_aturan (id_penyakit, id_gejala,ds)
			values('$id_penyakit', '$id_gejala', '$ds')");
	}

	function EditBasis($id,$id_penyakit,$id_gejala,$ds)
	{
		include "../koneksi/koneksi.php";
		$query2 = mysqli_query($con, "UPDATE ds_aturan SET id_penyakit='$id_penyakit', id_gejala='$id_gejala', ds='$ds' WHERE id = '$id'");
		header('location: ../admin/basisp.php');
		
	}

	function Cek($id_penyakit,$id_gejala, $ds)
	{
		include "../koneksi/koneksi.php";

		if ($id_gejala > 0) {
			for ($i=0; $i < $id_gejala; $i++) { 
				if (trim($_POST['id_gejala'][$i] != '') && trim($_POST['ds'][$i] != '')) {
					$query = mysqli_query($con, "SELECT * FROM ds_aturan WHERE id_penyakit = '$id_penyakit' AND id_gejala = '".mysqli_real_escape_string($con,$_POST["id_gejala"][$i])."'");
					if (mysqli_num_rows($query) > 0) {
						
					} else {
						$query2 = mysqli_query($con, "INSERT INTO ds_aturan (id_penyakit, id_gejala,ds)
							values('$id_penyakit', '".mysqli_real_escape_string($con,$_POST["id_gejala"][$i])."', '".mysqli_real_escape_string($con,$_POST["ds"][$i])."')");
					}
				}
			}
		}

/*
		if (mysqli_num_rows($query) > 0) {
			?>
			<script language="JavaScript">
				alert('Maaf Data sudah ada');
			document.location='../admin/tbasisp.php'</script>
			<?php
		} else {
			$query2 = mysqli_query($con, "INSERT INTO ds_aturan (id_penyakit, id_gejala,ds)
				values('$id_penyakit', '$id_gejala', '$ds')");
			header('location: ../admin/basisp.php');
		}*/
	}
}
error_reporting(0);
