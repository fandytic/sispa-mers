<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="icon" type="image/png" sizes="16x16" href="assetsA/assets/images/Logo-SP.png">

	<title>Sispa - Sistem Pakar Diagnosa Penyakit MERS-CoV</title>

	<!-- Bootstrap core CSS -->
	<link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom fonts for this template -->
	<link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet">

	<!-- Custom styles for this template -->
	<link href="assets/css/business-casual.min.css" rel="stylesheet">

</head>

<body>

	<h1 class="site-heading text-center text-white d-none d-lg-block">
		<span class="site-heading-upper text-primary mb-3">Diagnosa Penyakit MERS-CoV</span>
		<span class="site-heading-lower">Sistem Pakar</span>
	</h1>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
		<div class="container">
			<a class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none" href="#">Start Bootstrap</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item px-lg-4">
						<a class="nav-link text-uppercase text-expanded" href="index.php">Home
							<span class="sr-only">(current)</span>
						</a>
					</li>
					<li class="nav-item active px-lg-4">
						<a class="nav-link text-uppercase text-expanded" href="diagnosa.php">Diagnosa Penyakit</a>
					</li>
					<li class="nav-item px-lg-4">
						<a class="nav-link text-uppercase text-expanded" href="panduan.php">Panduan</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<section class="page-section about-heading">
		<div class="container">
			<img class="img-fluid rounded about-heading-img mb-3 mb-lg-0" src="assets/img/about.jpg" alt="">
			<div class="about-heading-content">
				<div class="row">
					<div class="col-xl-9 col-lg-10 mx-auto">
						<div class="bg-faded rounded p-5">
							<h2 class="section-heading mb-4">
								<span class="section-heading-upper">Strong Coffee, Strong Roots</span>
								<span class="section-heading-lower">Hasil Diagnosa Penyakit</span>
							</h2>
							<p style="text-align: justify;">
								<?php
								include "koneksi/koneksi.php";

								if(isset($_POST['gejala'])){
									if(count($_POST['gejala'])<2){
										?>
										<script language="JavaScript">
											alert('Pilih minimal 2 gejala');
										document.location='diagnosa.php'</script>
										<?php
										/*echo "Pilih minimal 2 gejala";*/
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
											/*print_r($densitas_baru);*/
										}

										//--- perangkingan
										unset($densitas_baru["&theta;"]);
										arsort($densitas_baru);
										//menampilkan array perhitungan
										/*print_r($densitas_baru);*/

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

										$gejala = "";

										//--- menampilkan gejala yang dipilih
										echo "Gejala yang dipilih :<br>";
										foreach ($_POST['gejala'] as $item) {
											$query = "SELECT nama FROM ds_gejala WHERE id = '$item'";
											$result = mysqli_query($con,$query);
											$value = mysqli_fetch_object($result);
											$i++;
											echo $i.". ".$value->nama."<br>";
											//-- insert gejala
											$gejala .= $i.". ".$value->nama."<br>";
										}
										//-- insert penyakit
										$penyakit = $row[0];
										//--insert nilai
										$nilai = $densitas_baru[$codes[0]];
										//-- insert persentase
										$persentase = round($densitas_baru[$codes[0]]*100,2)."%";
										//-- insert tanggal sekarang


										//--- memasukkan hasil diagnosa ke database
										$input = mysqli_query($con,"INSERT INTO diagnosa (gejala, penyakit, nilai, persentase) values('$gejala', '$penyakit', '$nilai', '$persentase')");
									}
								} ?>
							</p>


						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<footer class="footer text-faded text-center py-5">
		<div class="container">
			<p class="m-0 small">Copyright &copy; <a href="login.php">Sispa</a> 2018</p>
		</div>
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
