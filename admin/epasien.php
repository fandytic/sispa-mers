<?php include '_header.php';

include "../controller/c_Pasien.php";
$p = new Pasien;
$p->TampilSatuData($_GET['id_pasien']);
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
						<h4 class="page-title">Manajemen Ubah Data Pasien</h4>
						<div class="d-flex align-items-center">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item" aria-current="page"><a href="pasien.php">Pasien</a></li>
								<li class="breadcrumb-item active" aria-current="page">Ubah Data Pasien</li>
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
								<form method="post" class="form-horizontal form-material" action="../ProsesA/e_pasien.php">
									<div class="form-group">
										<input type="hidden" value="<?php print $_GET['id_pasien'] ?>" name="id_pasien" />
										<label class="col-md-12">Nama Pasien</label>
										<div class="col-md-12">
											<input type="text" value="<?php print $p->nama; ?>" class="form-control form-control-line" name="nama" required>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-12">Tanggal Lahir</label>
										<div class="col-md-12">
											<input type="date" class="form-control form-control-line" value="<?php print $p->tgl_lahir; ?>" name="tgl_lahir" required>
											<!-- <p style="color: red">*Format Bulan/Tanggal/Tahun</p> -->
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