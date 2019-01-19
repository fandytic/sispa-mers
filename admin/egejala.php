<?php include '_header.php';

include "../controller/c_Gejala.php";
$g = new Gejala;
$g->TampilSatuData($_GET['id']);
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
						<h4 class="page-title">Manajemen Ubah Gejala</h4>
						<div class="d-flex align-items-center">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item" aria-current="page"><a href="gejala.php">Gejala</a></li>
								<li class="breadcrumb-item active" aria-current="page">Ubah Gejala</li>
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
								<form method="post" class="form-horizontal form-material" action="../ProsesA/e_gejala.php">
									<div class="form-group">
										<input type="hidden" value="<?php print $_GET['id'] ?>" name="id" />
										<label class="col-md-12">Kode Gejala</label>
										<div class="col-md-12">
											<input type="text" value="<?php print "G".$g->id; ?>" placeholder="" class="form-control form-control-line" name="kode" readonly="true">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-12">Nama Gejala</label>
										<div class="col-md-12">
											<input type="text" value="<?php print $g->nama; ?>" class="form-control form-control-line" name="nama" required>
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