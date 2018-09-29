<?php 
/**
 * 
 */
class Gejala
{
	public $i = 0;

	function TampilSemua(){
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "SELECT * from ds_gejala");
		while($d = mysqli_fetch_array($query))
		{
			$i++;
			echo "<tr>
					<td>".$d['kode']."</td>
                    <td>".$d['nama']."</td>
                    <td></td>
                  </tr>";
		}
	}
}
?>