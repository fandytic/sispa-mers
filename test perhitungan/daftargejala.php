<?php include "koneksi.php";?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<form method="post" action="ambilnilai.php">
		<?php
		//-- menampilkan daftar gejala
		$sql="SELECT * FROM ds_gejala";
		$result=$db->query($sql);
		while($row=$result->fetch_object()){
			echo "<input type='checkbox' name='gejala[]' value='{$row->id}'> {$row->kode} {$row->nama}<br>";
		}
		?>
		<input type="submit" value="proses">
	</form>
</body>
</html>