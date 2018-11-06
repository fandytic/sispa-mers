<?php 
include '_header.php';
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
                <h4 class="page-title">Halaman Profil</h4>
                <div class="d-flex align-items-center">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Profil</li>
                        </ol>
                    </nav>
                </div>
            </div>
            <div class="col-7">
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
        <!-- Row -->
        <div class="row">
            <!-- Column -->
            <div class="col-lg-4 col-xlg-3 col-md-5">
                <div class="card">
                    <div class="card-body">
                        <center class="m-t-30"> <img src="../assetsA/assets/images/users/p.jpg" class="rounded-circle" width="150" /><br>
                            <br>
                            <h4 class="card-title m-t-10"><?php echo $row["nama"]; ?></h4>
                            <h6 class="card-subtitle">Admin Sistem Pakar</h6>
                        </center>
                    </div>
                    <div>
                        <hr> </div>
                        <div class="card-body"> 
                            <small class="text-muted">Email address </small>
                            <h6><?php echo $row["email"]; ?></h6>
                            <small class="text-muted">Phone Number </small>
                            <h6><?php echo $row["nohp"]; ?></h6>
                        </div>
                    </div>
                </div>
                <!-- Column -->
                <!-- Column -->
                <div class="col-lg-8 col-xlg-9 col-md-7">
                    <div class="card">
                        <div class="card-body">
                            <form id="myform" method="post" action="../ProsesA/e_profil.php" class="form-horizontal form-material">
                                <div class="form-group">
                                    <label class="col-md-12">Username</label>
                                    <div class="col-md-12">
                                        <input type="text" value="<?php echo $row["username"]; ?>" class="form-control form-control-line" readonly="true" name="username">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">Nama</label>
                                    <div class="col-md-12">
                                        <input type="text" value="<?php echo $row["nama"]; ?>" class="form-control form-control-line" name="nama">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">Email</label>
                                    <div class="col-md-12">
                                        <input type="email" value="<?php echo $row["email"]; ?>" class="form-control form-control-line" name="email">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">No Hp</label>
                                    <div class="col-md-12">
                                        <input type="number" value="<?php echo $row["nohp"]; ?>" class="form-control form-control-line" name="nohp">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">Password</label>
                                    <div class="col-md-12">
                                        <input type="password" value="<?php echo $row["password"]; ?>" class="form-control form-control-line form-password" name="password">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <input type="checkbox" class="form-checkbox"> Tampilkan password
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <button type="button" onclick="myFunction()" class="btn btn-success">Update Profile</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- Column -->
            </div>
            <!-- Row -->
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

        <!-- javascript tampilkan password -->
        <script type="text/javascript">
            $(document).ready(function(){       
                $('.form-checkbox').click(function(){
                    if($(this).is(':checked')){
                        $('.form-password').attr('type','text');
                    }else{
                        $('.form-password').attr('type','password');
                    }
                });
            });
        </script>
        <!-- Pop up verifikasi -->
        <script type="text/javascript">
            function myFunction(){
                var r = confirm("Apakah anda yakin akan mengubah data profil?");
                if (r == true) {
                    document.forms["myform"].submit();
                } else {
                    document.location('profil.php');
                }
            }
        </script>