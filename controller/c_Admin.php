<?php 
/**
 * 
 */
class Admin
{

	function TampilDataAdmin($id_admin)
	{
		include '../koneksi/koneksi.php';
		$query = mysqli_query($con, "SELECT * FROM admin where id_admin = 
			'$id_admin'");
		$p = mysqli_fetch_object($query);
		$id_admin = $p->id_admin;
		$username = $p->username;
		$nama = $p->nama;
		$email = $p->email;
		$password = $p->password;
		$nohp = $p->nohp;
		$posisi = $p->posisi;
	}

	function Login($username, $password)
	{
		include '../koneksi/koneksi.php';
		$query = mysqli_query($con, "SELECT * FROM admin where username='$username' AND password='$password'");		
	}
}
 ?>