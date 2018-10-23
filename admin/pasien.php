<?php include '_header.php'; 

include "../controller/c_Pasien.php";
$p = new Pasien;
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
                <h4 class="page-title">Manajemen Pasien</h4>
                <div class="d-flex align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Pasien</li>
                    </ol>
                </div>
            </div>
            <div class="col-7">
                <div class="text-right upgrade-btn">
                    <a href="tpasien.php" class="btn btn-danger text-white"><i class="mdi mdi-plus"></i> Tambah Pasien</a>
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
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="bootstrap-data-table" class="table table-hover table-bordered">
                                <thead style="background-color: #7f8c8d; color: white;">
                                  <tr>
                                    <th style="color: white;" width="5%">ID</th>
                                    <th style="color: white;">Nama Pasien</th>
                                    <th style="color: white;">Tanggal Lahir</th>
                                    <th style="color: white;">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                $data = $p->TampilSemua();
                                foreach($data as $d){ 
                                    ?>
                                    <tr>
                                        <td><?php print $d['id_pasien']; ?></td>
                                        <td><?php print $d['nama']; ?></td>
                                        <td><?php print $d['tgl_lahir']; ?></td>
                                        <td>
                                            <a href="riwayatrm.php?id_pasien=<?php print $d['id_pasien']; ?>" class="btn btn-info btn-simple btn-xs text-white" title="Lihat Rekam Medis"><i class="mdi mdi-eye"></i></a>

                                            <a href="epasien.php?id_pasien=<?php print $d['id_pasien']; ?>" class="btn btn-info btn-simple btn-xs text-white" title="Edit Data Pasien"><i class="mdi mdi-lead-pencil"></i></a>

                                            <a onclick="if (! confirm('Apakah anda yakin akan menghapus pasien dari daftar ?')) { return false; }" href="../ProsesA/d_pasien.php?id_pasien=<?php print $d['id_pasien']; ?>" class="btn btn-danger btn-simple btn-xs text-white" title="Hapus Pasien"><i class="fa fa-times"></i></a>
                                        </td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </tbody>
                </table>
            </div>
        </div>
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
