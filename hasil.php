<?php
include 'controller/c_Riwayat.php';
$cl = new Riwayat;
$cl->Count();

include "controller/c_Diagnosa.php";
$dg = new Diagnosa;
?>
<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Author: Fandy Hidayat, About: Mers-Cov, Category: Expert System">
  	<meta name="author" content="Fandy Hidayat, Fandy TIC">
	<link rel="icon" type="image/png" sizes="16x16" href="assetsA/assets/images/Logo-SP.png">

	<title>Sispa - Sistem Pakar Diagnosa Penyakit MERS-CoV</title>

	<!-- SEO -->
  <meta name="keywords" content="Sispa, Sistem Pakar, Sistem Pakar Diagnosa MERS-CoV, MERS-CoV, Diagnos MERS-CoV, Fandy TIC, Fandy Hidayat, Diagnosa Penyakit, Apa itu Mers-Cov?,Middle East Respiratory Syndrome Corona Virus, Corona Virus">

	<!-- Bootstrap core CSS -->
	<link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom fonts for this template -->
	<link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet">

	<!-- Custom styles for this template -->
	<link href="assets/css/business-casual.min.css" rel="stylesheet">

	<style type="text/css">
	#myBtn {
		display: none;
		position: fixed;
		bottom: 20px;
		right: 30px;
		z-index: 99;
		font-size: 18px;
		border: none;
		outline: none;
		background-color: red;
		color: white;
		cursor: pointer;
		padding: 15px;
		border-radius: 4px;
	}

	#myBtn:hover {
		background-color: #555;
	}
</style>

<script type="text/javascript">        
    function tampilkanwaktu(){         //fungsi ini akan dipanggil di bodyOnLoad dieksekusi tiap 1000ms = 1detik    
    var waktu = new Date();            //membuat object date berdasarkan waktu saat 
    var sh = waktu.getHours() + "";    //memunculkan nilai jam, //tambahan script + "" supaya variable sh bertipe string sehingga bisa dihitung panjangnya : sh.length    //ambil nilai menit
    var sm = waktu.getMinutes() + "";  //memunculkan nilai detik    
    var ss = waktu.getSeconds() + "";  //memunculkan jam:menit:detik dengan menambahkan angka 0 jika angkanya cuma satu digit (0-9)
    document.getElementById("clock").innerHTML = (sh.length==1?"0"+sh:sh) + ":" + (sm.length==1?"0"+sm:sm) + ":" + (ss.length==1?"0"+ss:ss);
}
function googleTranslateElementInit() {
	new google.translate.TranslateElement({pageLanguage: 'id'}, 'google_translate_element');
}
</script>

</head>

<body onload="tampilkanwaktu();setInterval('tampilkanwaktu()', 1000);">

	<button onclick="topFunction()" id="myBtn" title="Go to top"><a href="#" id="clock" style="color: white"></a></button>

	<h1 class="site-heading text-center d-none d-lg-block">
		<span class="site-heading-upper text-primary mb-3">Diagnosa Penyakit MERS-CoV</span>
		<span class="site-heading-lower">Sistem Pakar</span>
	</h1>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
		<div class="container">
			<a class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none" href="index.php">Sistem Pakar</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item px-lg-4"></li>
					<li class="nav-item px-lg-4"></li>
					<li class="nav-item px-lg-4"></li>
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
			<div id="google_translate_element"></div>
		</div>
	</nav>

	<section class="page-section about-heading">
		<div class="container">
			<img class="img-fluid rounded about-heading-img mb-3 mb-lg-0" src="assets/img/hasil.jpg" alt="">
			<div class="about-heading-content">
				<div class="row">
					<div class="col-xl-9 col-lg-10 mx-auto">
						<div class="bg-faded rounded p-5">
							<h2 class="section-heading mb-4">
								<!-- <span class="section-heading-upper">Strong Coffee, Strong Roots</span> -->
								<span class="section-heading-lower">Hasil Diagnosa Penyakit</span>
							</h2>
							<p style="text-align: justify;">
							<!-- <img src='assets/img/dokter.png' width='50%' style='float: right; margin-top: -30px;'> -->
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
										$sql = "SELECT GROUP_CONCAT(b.id), a.ds
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
										$sql="SELECT GROUP_CONCAT(id) FROM ds_penyakit";
										$result= mysqli_query($con,$sql);
										$row=$result->fetch_row();
										$fod=$row[0];

										//--- menentukan nilai densitas
										$densitas_baru=array(); 		 						// 1
										while(!empty($gejala)){  								// 2
											$densitas1[0]=array_shift($gejala); 				// 3
											$densitas1[1]=array($fod,1-$densitas1[0][1]); 		// 4
											$densitas2=array(); 								// 5
											if(empty($densitas_baru)){ 							// 6
												$densitas2[0]=array_shift($gejala);				// 7
											}else{
												foreach($densitas_baru as $k=>$r){				// 8
													if($k!="&theta;"){							// 9
														$densitas2[]=array($k,$r);				// 10
													}
												}
											}
											$theta=1;											// 11
											foreach($densitas2 as $d) $theta-=$d[1];			// 12 & 13
											$densitas2[]=array($fod,$theta);					// 14
											$m=count($densitas2);								// 15
											$densitas_baru=array();								// 16
											// for($y=0;$y<$m;$y++){							// 17
											// 	for($x=0;$x<2;$x++){							// 18
											// 		if(!($y==$m-1 && $x==1)){					// 19
											// 			$v=explode(',',$densitas1[$x][0]);		// 20
											// 			$w=explode(',',$densitas2[$y][0]);		// 21
											// 			sort($v);								// 22
											// 			sort($w);								// 23
											// 			$vw=array_intersect($v,$w);				// 24
											// 			if(empty($vw)){							// 25
											// 				$k="&theta;";						// 26
											// 			}else{
											// 				$k=implode(',',$vw);				// 27
											// 			}
											// 			if(!isset($densitas_baru[$k])){			// 28
											// 				$densitas_baru[$k]=$densitas1[$x][1]*$densitas2[$y][1]; // 29
											// 			}else{
											// 				$densitas_baru[$k]+=$densitas1[$x][1]*$densitas2[$y][1]; // 30
											// 			}
											// 		}
											// 	}
											// }
											$densitas_baru = $dg->perkaliantabel($m,$densitas1,$densitas2,$densitas_baru);
											foreach($densitas_baru as $k=>$d){					// 31
												if($k!="&theta;"){								// 32
													$densitas_baru[$k]=$d/(1-(isset($densitas_baru["&theta;"])?$densitas_baru["&theta;"]:0));	//33
												}
											}
											//menampilkan array perhitungan
											/*print_r($densitas_baru);*/
										}

										//--- perangkingan
										unset($densitas_baru["&theta;"]);						// 34
										arsort($densitas_baru);
										//menampilkan array perhitungan
										/*print_r($densitas_baru);*/

										//--- menampilkan hasil akhir
										$codes=array_keys($densitas_baru);
										$sql="SELECT GROUP_CONCAT(nama) 
										FROM ds_penyakit 
										WHERE id IN('{$codes[0]}')";
										$result=mysqli_query($con,$sql);
										$row=$result->fetch_row();
										if (round($densitas_baru[$codes[0]]*100,2) < 90) {
											echo "Selamat anda tidak Terdeteksi Penyakit <br><br>";
											?> 
											<img src='assets/img/dokter.png' width='50%' style='float: right; margin-top: -100px;'>
											<?php 
										} else {
											echo "Terdeteksi penyakit <b style='color:red'>{$row[0]}</b> dengan derajat kepercayaan <b>".round($densitas_baru[$codes[0]]*100,2)."%</b> <br><br>";
											?> 
											<img src='assets/img/dokter2.png' width='50%' style='float: right; margin-top: -50px;'>
											<?php
										}
										

										//--- menampilkan keterangan dari penyakit
										$queries = "SELECT kett FROM ds_penyakit WHERE nama = '$row[0]'";
										$result = mysqli_query($con,$queries);
										$value = mysqli_fetch_object($result);
										if (round($densitas_baru[$codes[0]]*100,2) < 90) {
											# code...
										} else {
											echo "Keterangan :<br>".$value->kett."<br><br>";
										}

										$gejala = "";

										//--- menampilkan gejala yang dipilih
										echo "Gejala yang dipilih :<br>";
										$i=0;
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
										$tanggal = date("d-m-Y")."<br>".date("h:i:s A");

										//--- memasukkan hasil diagnosa ke database
										$input = mysqli_query($con,"INSERT INTO diagnosa (tanggal, gejala, penyakit, nilai, persentase) values('$tanggal', '$gejala', '$penyakit', '$nilai', '$persentase')");
										if (count($_POST['gejala']) < 5) {
											if (round($densitas_baru[$codes[0]]*100,2) < 90) {
												echo "<br><br><br>";
											}
										}
										
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
			<p style="color: white;">Jumlah riwayat diagnosa saat ini : <?php echo $cl->jum; ?> | Copyright &copy; Sispa 2018</p>
		</div>
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
	<script type="text/javascript">
    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function() {scrollFunction()};

    function scrollFunction() {
    	if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    		document.getElementById("myBtn").style.display = "block";
    	} else {
    		document.getElementById("myBtn").style.display = "none";
    	}
    }

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
	document.body.scrollTop = 0;
	document.documentElement.scrollTop = 0;
}
</script>

</body>

</html>
