<?php include '_header.php'; 

include "../controller/c_Penyakit.php";
$pt = new Penyakit;
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
                <h4 class="page-title">Manajemen Tingkatan Penyakit</h4>
                <div class="d-flex align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Tingkatan Penyakit</li>
                    </ol>
                </div>
            </div>
            <div class="col-7">
                <div class="text-right upgrade-btn">
                    <a href="tpenyakit.php" class="btn btn-danger text-white"><i class="mdi mdi-plus"></i> Tambah Data</a>
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
                                    <th style="color: white;" width="13%">Kode Penyakit</th>
                                    <th style="color: white;">Nama Tingkatan Penyakit</th>
                                    <th style="color: white;">Keterangan Tingkatan Penyakit</th>
                                    <th style="color: white;">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $data = $pt->TampilSemua();
                                if (!isset($data)) {
                                    ?>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <?php
                                } else {
                                foreach($data as $d){
                                    ?>
                                    <tr>
                                        <td><?php print $d['kode']; ?></td>
                                        <td><?php print $d['nama']; ?></td>
                                        <td><?php print $d['kett']; ?></td>
                                        <td>
                                            <a href="epenyakit.php?id=<?php print $d['id']; ?>" class="btn btn-info btn-simple btn-xs text-white" title="Edit Penyakit"><i class="mdi mdi-lead-pencil"></i></a>

                                            <a onclick="if (! confirm('Apakah anda yakin akan menghapus penyakit dari daftar ?')) { return false; }" href="../ProsesA/d_penyakit.php?id=<?php print $d['id']; ?>" class="btn btn-danger btn-simple btn-xs text-white confirmation" title="Hapus Penyakit"><i class="fa fa-times"></i></a>
                                        </td>
                                    </tr>
                                <?php }} ?>
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