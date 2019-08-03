<?php 
/**
 * 
 */
class Admin
{

	function TampilDataAdmin($id_admin)
	{
		include '../koneksi/koneksi.php';
		$query = mysqli_query($con, "SELECT * FROM admin where id_admin = '$id_admin'");
		$p = mysqli_fetch_object($query);
		$id_admin = $p->id_admin;
		$username = $p->username;
		$nama = $p->nama;
		$email = $p->email;
		$password = $p->password;
		$nohp = $p->nohp;
	}

	function DokterSemua()
	{
		include '../koneksi/koneksi.php';
		$query = mysqli_query($con, "SELECT * FROM admin where tingkat = 'dokter'");
		$i = 0;
		while($d = mysqli_fetch_array($query))
		{
			$data[$i]['id_admin'] = $d['id_admin'];
			$data[$i]['username'] = $d['username'];
			$data[$i]['nama'] = $d['nama'];
			$data[$i]['password'] = $d['password'];
			$data[$i]['email'] = $d['email'];
			$data[$i]['nohp'] = $d['nohp'];
			$i++;
		}
		return $data;
	}

	function HapusDokter($id_admin)
	{
		include "../koneksi/koneksi.php";
		$query = mysqli_query($con, "DELETE FROM admin WHERE id_admin = '$id_admin'");
	}

	function Login($username, $password)
	{
		include '../koneksi/koneksi.php';
		$query = mysqli_query($con, "SELECT * FROM admin where username='$username' AND password='$password'");		
	}
}
 ?>