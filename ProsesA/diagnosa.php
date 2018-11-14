<?php
include "../koneksi/koneksi.php";

if(isset($_POST['gejala'])){
	if(count($_POST['gejala'])<2){
		echo "Pilih minimal 2 gejala";
	}else{
		$sql = "SELECT GROUP_CONCAT(b.kode), a.ds
		FROM ds_aturan a
		JOIN ds_penyakit b ON a.id_penyakit=b.id
		WHERE a.id_gejala IN(".implode(',',$_POST['gejala']).") 
		GROUP BY a.id_gejala";
		$result= mysqli_query($con, $sql);
		$gejala= array();
		while($row=$result->fetch_row()){
			$gejala[]=$row;
		}

		//--- menentukan environement
		$sql="SELECT GROUP_CONCAT(kode) FROM ds_penyakit";
		$result= mysqli_query($con,$sql);
		$row=$result->fetch_row();
		$fod=$row[0];

		//-- masukkan kode perhitungannya di sini
		//--- menentukan nilai densitas
		$densitas_baru=array();
		while(!empty($gejala)){
			$densitas1[0]=array_shift($gejala);
			$densitas1[1]=array($fod,1-$densitas1[0][1]);
			$densitas2=array();
			if(empty($densitas_baru)){
				$densitas2[0]=array_shift($gejala);
			}else{
				foreach($densitas_baru as $k=>$r){
					if($k!="&theta;"){
						$densitas2[]=array($k,$r);
					}
				}
			}
			$theta=1;
			foreach($densitas2 as $d) $theta-=$d[1];
			$densitas2[]=array($fod,$theta);
			$m=count($densitas2);
			$densitas_baru=array();
			for($y=0;$y<$m;$y++){
				for($x=0;$x<2;$x++){
					if(!($y==$m-1 && $x==1)){
						$v=explode(',',$densitas1[$x][0]);
						$w=explode(',',$densitas2[$y][0]);
						sort($v);
						sort($w);
						$vw=array_intersect($v,$w);
						if(empty($vw)){
							$k="&theta;";
						}else{
							$k=implode(',',$vw);
						}
						if(!isset($densitas_baru[$k])){
							$densitas_baru[$k]=$densitas1[$x][1]*$densitas2[$y][1];
						}else{
							$densitas_baru[$k]+=$densitas1[$x][1]*$densitas2[$y][1];
						}
					}
				}
			}
			foreach($densitas_baru as $k=>$d){
				if($k!="&theta;"){
					$densitas_baru[$k]=$d/(1-(isset($densitas_baru["&theta;"])?$densitas_baru["&theta;"]:0));
				}
			}
			//menampilkan array perhitungan
			print_r($densitas_baru);
		}

		//--- perangkingan
		unset($densitas_baru["&theta;"]);
		arsort($densitas_baru);
		//menampilkan array perhitungan
		print_r($densitas_baru);

		//--- menampilkan hasil akhir
		$codes=array_keys($densitas_baru);
		$sql="SELECT GROUP_CONCAT(nama) 
		FROM ds_penyakit 
		WHERE kode IN('{$codes[0]}')";
		$result=mysqli_query($con,$sql);
		$row=$result->fetch_row();
		echo "Terdeteksi penyakit <b>{$row[0]}</b> dengan derajat kepercayaan ".round($densitas_baru[$codes[0]]*100,2)."% <br><br>";

		//--- menampilkan keterangan dari penyakit
		$queries = "SELECT kett FROM ds_penyakit WHERE nama = '$row[0]'";
		$result = mysqli_query($con,$queries);
		$value = mysqli_fetch_object($result);
		echo "Keterangan :<br>".$value->kett."<br><br>";

		//--- menampilkan gejala yang dipilih
		echo "Gejala yang dipilih :<br>";
		foreach ($_POST['gejala'] as $item) {
			$query = "SELECT nama FROM ds_gejala WHERE id = '$item'";
			$result = mysqli_query($con,$query);
			$value = mysqli_fetch_object($result);
			$i++;
			print $i;
			echo ". ".$value->nama."<br>";
		}
	}
}
?>