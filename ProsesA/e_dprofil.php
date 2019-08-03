<?php
//memanggil file koneksi.php
include "../koneksi/koneksi.php";

//membuat session berjalan
session_start();

//memanggil session
$username = $_SESSION["username"];

//membuat variable dengan nilai dari form
$nama = $_POST["nama"];
$password = $_POST["password"];
$email = $_POST["email"];
$nohp = $_POST["nohp"];

//session sukses
$sukses = "<div class='alert success'>
<span class='closebtn'>&times;</span>  
<strong>Berhasil!</strong> Data telah diperbarui.
</div>";

//session gagal
$gagal = "<div class='alert warning'>
<span class='closebtn'>&times;</span>  
<strong>Gagal!</strong> Data tidak lengkap, silahkan lengkapi data.
</div>";

//query update database
$sql = "UPDATE admin SET nama = '$nama', password = '$password', email = '$email', nohp = '$nohp' WHERE username = '$username'";

//melakukan eksekusi
if($nama != "" && $password != "" && $email != "" && $nohp != ""){
	mysqli_query($con, $sql);
	$_SESSION["sukses"] = $sukses;
	header('location:../dokter/profil.php');
} else {
	$_SESSION["gagal"] = $gagal;
	header('location:../dokter/profil.php');
}
?>
