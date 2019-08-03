<?php include '_header.php';

include "../controller/c_Admin.php";
$g = new Admin;
$g->TampilDataAdmin($_GET['id_admin']);
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
						<h4 class="page-title">Manajemen Ubah Data Dokter</h4>
						<div class="d-flex align-items-center">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item" aria-current="page"><a href="dokter.php">Dokter</a></li>
								<li class="breadcrumb-item active" aria-current="page">Ubah Data Dokter</li>
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
								<form method="post" class="form-horizontal form-material" action="../ProsesA/e_dokter.php">
									<div class="form-group">
										<input type="hidden" value="<?php print $_GET['id_admin'] ?>" name="id_admin" />
										<label class="col-md-12">Nama</label>
										<div class="col-md-12">
											<input type="text" value="<?php print $g->nama; ?>" class="form-control form-control-line" name="nama" required="">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-12">Username</label>
										<div class="col-md-12">
											<input type="text" value="<?php print $g->username; ?>" class="form-control form-control-line" name="username" required="">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-12">Password</label>
										<div class="col-md-12">
											<input type="text" value="<?php print $g->password; ?>" class="form-control form-control-line" name="password" required="">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-12">Email</label>
										<div class="col-md-12">
											<input type="email" value="<?php print $g->email; ?>" class="form-control form-control-line" name="email">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-12">No HP</label>
										<div class="col-md-12">
											<input type="number" value="<?php print $g->nohp; ?>" class="form-control form-control-line" name="nohp">
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