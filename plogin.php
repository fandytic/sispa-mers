<?php
//memanggil file koneksi.php
include "koneksi/koneksi.php";

//membuat variable dengan nilai dari form
$username = $_POST['username'];
$password = $_POST['password']; 
//proses login

//menyesuaikan dengan data di database
$hasil = mysqli_query($con, "select*from admin");
$row = mysqli_fetch_array($hasil);
	if($row['username'] == $username && $row['password'] == $password) {
		session_start(); //memulai fungsi session
		$_SESSION['username'] = $username;
		header('location:admin/profil.php'); //jika berhasil login, maka masuk ke file loginadmin1.php
		}
		else{
			?>
 				<script language="JavaScript">
					alert('Username or Password is invalid');
					document.location='login.php'</script>
	  			<?php
			}
	?>