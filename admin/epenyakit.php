<?php include '_header.php';

include "../controller/c_Penyakit.php";
$p = new Penyakit;
$p->TampilSatuData($_GET['id']);
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
						<h4 class="page-title">Manajemen Ubah Penyakit</h4>
						<div class="d-flex align-items-center">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item" aria-current="page"><a href="penyakit.php">Penyakit</a></li>
								<li class="breadcrumb-item active" aria-current="page">Ubah Penyakit</li>
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
								<form method="post" class="form-horizontal form-material" action="../ProsesA/e_penyakit.php">
									<div class="form-group">
										<input type="hidden" value="<?php print $_GET['id'] ?>" name="id" />
										<label class="col-md-12">Kode Penyakit</label>
										<div class="col-md-12">
											<input type="text" value="<?php print $p->kode; ?>" class="form-control form-control-line" name="kode" readonly="true">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-12">Nama Penyakit</label>
										<div class="col-md-12">
											<input type="text" class="form-control form-control-line" value="<?php print $p->nama; ?>" name="nama" required>
										</div>
									</div>
									<div class="form-group">
										<label for="example-email" class="col-md-12">Keterangan Penyakit</label>
										<div class="col-md-12">
											<input type="text" class="form-control form-control-line" value="<?php print $p->kett; ?>" name="kett">
										</div>
									</div>

									<div class="form-group">
										<div class="col-sm-12">
											<button class="btn btn-success" type="submit">Ubah Data</button>
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