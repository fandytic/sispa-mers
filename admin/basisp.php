<?php include '_header.php'; 

include "../controller/c_BasisP.php";
$bsp = new BasisP;
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
                    <h4 class="page-title">Manajemen Basis Pengetahuan</h4>
                    <div class="d-flex align-items-center">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Basis Pengetahuan</li>
                        </ol>
                    </div>
                </div>
                <div class="col-7">
                    <div class="text-right upgrade-btn">
                        <a href="tbasisp.php" class="btn btn-danger text-white"><i class="mdi mdi-plus"></i> Tambah Data</a>
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
                                        <th style="color: white;">Nama Penyakit</th>
                                        <th style="color: white;">Nama Gejala</th>
                                        <th style="color: white;" width="15%">Nilai Kepercayaan</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                $data = $bsp->TampilSemua();
                                foreach($data as $d){
                                    ?>
                                  <tr>
                                    <td><?php print $d['nama_penyakit']; ?></td>
                                    <td><?php print $d['nama_gejala']; ?></td>
                                    <td><?php print $d['ds']; ?></td>
                                    <td>
                                        <a href="ebasisp.php?id=<?php print $d['id']; ?>" class="btn btn-info btn-simple btn-xs text-white" title="Edit Basis Pengetahuan"><i class="mdi mdi-lead-pencil"></i></a>

                                        <a onclick="myFunction()" class="btn btn-danger btn-simple btn-xs text-white" title="Hapus Basis Pengetahuan"><i class="fa fa-times"></i></a>
                                    </td>
                                </tr>
                                <?php } ?>
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
<script type="text/javascript">
    function myFunction(){
    var r = confirm("Apakah anda yakin akan menghapus basis pengetahuan dari daftar ?");
    if (r == true) {
        window.location = "../ProsesA/d_basisp.php?id=<?php print $d['id']; ?>";
    } else {
        document.location('basisp.php');
    }
}
</script>