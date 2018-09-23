<?php
//memanggil file koneksi.php
include "koneksi.php";

//membuat variable dengan nilai dari form
$user = $_POST['username'];
$pass = $_POST['password']; 
//proses login

//menyesuaikan dengan data di database
$hasil = mysqli_query($con, "select * from admin");
$row = mysqli_fetch_array($hasil);
	if($row['username'] == $user AND $row['password'] == $pass) {
		session_start(); //memulai fungsi session
		$_SESSION['username'] = $user;
		header('location:admin/profil.php'); //jika berhasil login, maka masuk ke file beranda.php
		}
		else{
			?>
 				<script language="JavaScript">
					alert('Name or Password is invalid');
					document.location='login.php'</script>
	  			<?php
			}
	?>