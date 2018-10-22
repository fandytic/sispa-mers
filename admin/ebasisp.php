<?php include '_header.php'; 

include "../controller/c_Penyakit.php";
$t = new Penyakit;
$data = $t->TampilSemua();

include "../controller/c_Gejala.php";
$tt = new Gejala;
$data2 = $tt->TampilSemua();

include "../controller/c_BasisP.php";
$ttt = new BasisP;
$ttt->TampilSatuData($_GET['id']);
?>
<!-- ============================================================== -->
<!-- Page wrapper  -->
<!-- ============================================================== -->
<div class="page-wrapper">
	<!-- ============================================================== -->
	<!-- Bread crumb and right sidebar toggle -->
	<!-- ============================================================== -->
	<div class="page-breadcrumb">
		<div class="row align-items-center">
			<div class="col-5">
				<h4 class="page-title">Manajemen Tambah Basis Pengetahuan</h4>
				<div class="d-flex align-items-center">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item" aria-current="page"><a href="basisp.php">Basis Pengetahuan</a></li>
						<li class="breadcrumb-item active" aria-current="page">Tambah Basis Pengetahuan</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
	<!-- ============================================================== -->
	<!-- End Bread crumb and right sidebar toggle -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- Container fluid  -->
	<!-- ============================================================== -->
	<div class="container-fluid">
		<!-- ============================================================== -->
		<!-- Start Page Content -->
		<!-- ============================================================== -->
		<div class="row">
			<!-- Column -->
			<div class="col-lg-8 col-xlg-9 col-md-7">
				<div class="card">
					<div class="card-body">
						<form id="myform" method="post" class="form-horizontal form-material" action="../ProsesA/e_basisp.php">
							<div class="form-group">
								<label class="col-md-12">Nama Penyakit</label>
								<div class="col-md-12">
									<input type="hidden" value="<?php print $_GET['id']; ?>" name="id">
										<select class="form-control form-control-line" name="id_penyakit">
											<option><?php print $ttt->nama_penyakit; ?></option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-12">Nama Gejala</label>
									<div class="col-md-12">
										<select class="form-control form-control-line" name="id_gejala">
											<option><?php print $ttt->nama_gejala; ?></option>
										</select>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-12">Nilai Kepercayaan</label>
									<div class="col-md-12">
										<input id="numb" type="text" value="<?php print $ttt->ds; ?>" class="form-control form-control-line" name="ds" placeholder="contoh input nilai : 0.5">
										<p id="demo" style="color: red;"></p>
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-12">
										<button onclick="myFunction()" class="btn btn-success" type="button">Ubah Data</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<!-- Column -->
			</div>
		</div>
	</div>
	<!-- ============================================================== -->
	<!-- End PAge Content -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- Right sidebar -->
	<!-- ============================================================== -->
	<!-- .right-sidebar -->
	<!-- ============================================================== -->
	<!-- End Right sidebar -->
	<!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Container fluid  -->
<!-- ============================================================== -->
<?php include '_footer.php'; ?>

<script type="text/javascript">
	function myFunction(){
		var x, text;
		// Get the value of the input field with id="numb"
		x = document.getElementById("numb").value;

    // If x is Not a Number or less than one or greater than 10
    if (isNaN(x) || x < 0 || x > 1) {
    	text = "*Format yang diinputkan harus antara 0 - 1";
    } else {
    	text = "Format benar";
		document.forms["myform"].submit();
    }
    document.getElementById("demo").innerHTML = text;
}
</script>