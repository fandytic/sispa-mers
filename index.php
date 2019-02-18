<?php
include 'controller/c_Riwayat.php';
$cl = new Riwayat;
$cl->Count();
?>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" type="image/png" sizes="16x16" href="assetsA/assets/images/Logo-SP.png">

  <title>Sispa - Sistem Pakar Diagnosa Penyakit MERS-CoV</title>

  <!-- SEO -->
  <meta name="keywords" content="Sispa, Sistem Pakar, Sistem Pakar Diagnosa MERS-CoV, MERS-CoV, Diagnos MERS-CoV, Fandy TIC, Fandy Hidayat, Diagnosa Penyakit, Apa itu Mers-Cov?,Middle East Respiratory Syndrome Corona Virus, Corona Virus">

  <!-- Bootstrap core CSS -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="assets/css/business-casual.min.css" rel="stylesheet">
  <style type="text/css">
  #myBtn {
    display: none;
    position: fixed;
    bottom: 20px;
    right: 30px;
    z-index: 99;
    font-size: 18px;
    border: none;
    outline: none;
    background-color: red;
    color: white;
    cursor: pointer;
    padding: 15px;
    border-radius: 4px;
  }

  #myBtn:hover {
    background-color: #555;
  }
</style>

<script type="text/javascript">        
    function tampilkanwaktu(){         //fungsi ini akan dipanggil di bodyOnLoad dieksekusi tiap 1000ms = 1detik    
    var waktu = new Date();            //membuat object date berdasarkan waktu saat 
    var sh = waktu.getHours() + "";    //memunculkan nilai jam, //tambahan script + "" supaya variable sh bertipe string sehingga bisa dihitung panjangnya : sh.length    //ambil nilai menit
    var sm = waktu.getMinutes() + "";  //memunculkan nilai detik    
    var ss = waktu.getSeconds() + "";  //memunculkan jam:menit:detik dengan menambahkan angka 0 jika angkanya cuma satu digit (0-9)
    document.getElementById("clock").innerHTML = (sh.length==1?"0"+sh:sh) + ":" + (sm.length==1?"0"+sm:sm) + ":" + (ss.length==1?"0"+ss:ss);
}
function googleTranslateElementInit() {
    new google.translate.TranslateElement({pageLanguage: 'id'}, 'google_translate_element');
  }
</script>

</head>

<body onload="tampilkanwaktu();setInterval('tampilkanwaktu()', 1000);">

  <button onclick="topFunction()" id="myBtn" title="Go to top"><a href="#" id="clock" style="color: white"></a></button>

  <h1 class="site-heading text-center d-none d-lg-block">
    <span class="site-heading-upper text-primary mb-3">Diagnosa Penyakit MERS-CoV</span>
    <span class="site-heading-lower">Sistem Pakar</span>
  </h1>

  

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
    <div class="container">
      <a class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none" href="#">Sistem Pakar</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav mx-auto">
          <li class="nav-item px-lg-4"></li>
          <li class="nav-item px-lg-4"></li>
          <li class="nav-item px-lg-4"></li>
          <li class="nav-item active px-lg-4">
            <a class="nav-link text-uppercase text-expanded" href="index.php">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item px-lg-4">
            <a class="nav-link text-uppercase text-expanded" href="diagnosa.php">Diagnosa Penyakit</a>
          </li>
          <li class="nav-item px-lg-4">
            <a class="nav-link text-uppercase text-expanded" href="panduan.php">Panduan</a>
          </li>
        </ul>
      </div>
      <div id="google_translate_element"></div>
    </div>
  </nav>

  <section class="page-section clearfix">
    <div class="container">
      <div class="intro">
        <img class="intro-img img-fluid mb-3 mb-lg-0 rounded" src="assets/img/home1.jpg" alt="">
        <div class="intro-text left-0 text-center bg-faded p-5 rounded">
          <h2 class="section-heading mb-4">
            <span class="section-heading-upper">Apa itu</span>
            <span class="section-heading-lower">MERS-CoV?</span>
          </h2>
          <p class="mb-3" >MERS CoV adalah singkatan dari Middle East Respiratory Syndrome Corona Virus. Cek sekarang apakah kamu terkena Mers-CoV?
          </p>
          <div class="intro-button mx-auto">
            <h2><a class="btn btn-primary btn-xl" href="diagnosa.php">DIAGNOSA SEKARANG</a></h2>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="page-section cta">
    <div class="container">
      <div class="row">
        <div class="col-xl-9 mx-auto">
          <div class="cta-inner text-center rounded">
            <h2 class="section-heading mb-4">
              <span class="section-heading-upper">Tentang</span>
              <span class="section-heading-lower">Mers-CoV</span>
            </h2>
            <p class="mb-0" style="text-align: justify;">MERS CoV adalah singkatan dari Middle East Respiratory Syndrome Corona Virus. Keberadaan virus ini pertama kali dilaporkan pada bulan September 2012 di Arab Saudi. Virus ini merupakan jenis baru dari kelompok Corona virus (Novel Corona Virus) namun  berbeda dengan  virus Severe Acute Respiratory Syndrome (SARS) pada tahun 2003. Gejala apabila terserang Virus Mers CoV adalah demam, batuk dan sesak nafas, bersifat akut, biasanya pasien memiliki penyakit ko-morbid/penyerta dan memiliki inkubasi 2-14 hari.</p><br>
            <p><video width="100%" height="100%" src="assets/video/MERS_CoV_Hajj_Umrah_Infograhic_EN.mp4" controls></video></p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="page-section about-heading">
    <div class="container">
      <br>
      <br>
      <br>
      <br>
      <div class="about-heading-content">
        <div class="row">
          <div class="col-xl-9 col-lg-10 mx-auto">
            <div class="bg-faded rounded p-5">

              <h3><center><span class="section-heading-upper">5 Hal yang harus diketahui tentang MERS</span></center></h3><br>
              <video width="100%" height="100%" src="assets/video/Five_things_you_need_to_know_about_MERS.mp4" controls></video>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>


  <footer class="footer text-faded text-center py-5">
    <div class="container">
      <p style="color: white;">Jumlah riwayat diagnosa saat ini : <?php echo $cl->jum; ?> | Copyright &copy; <a href="login.php">Sispa</a> 2018</p>
    </div>
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
  <script type="text/javascript">
    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function() {scrollFunction()};

    function scrollFunction() {
      if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myBtn").style.display = "block";
      } else {
        document.getElementById("myBtn").style.display = "none";
      }
    }

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}
</script>

</body>

</html>