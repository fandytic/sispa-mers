<?php include '_header.php'; 

include "../controller/c_Penyakit.php";
$t = new Penyakit;
$data = $t->TampilSemua();

include "../controller/c_Gejala.php";
$tt = new Gejala;
$data2 = $tt->TampilSemua();
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
				<h4 class="page-title">Manajemen Tambah Penyakit</h4>
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
						<form class="form-horizontal form-material">
							<div class="form-group">
								<label class="col-md-12">Nama Penyakit</label>
								<div class="col-md-12">
										<select class="form-control form-control-line">
											<?php foreach($data as $d){
												?>
											<option><?php print $d['nama']; ?></option>
										<?php } ?>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-12">Nama Gejala</label>
									<div class="col-md-12">
										<select class="form-control form-control-line">
											<?php foreach($data2 as $dd){
												?>
											<option><?php print $dd['nama']; ?></option>
										<?php } ?>
										</select>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-12">Nialai Kepercayaan</label>
									<div class="col-md-12">
										<input type="text" class="form-control form-control-line">
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-12">
										<button class="btn btn-success">Tambah Data</button>
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