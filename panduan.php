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
  <meta name="description" content="Author: Fandy Hidayat, About: Mers-Cov, Category: Expert System">
  <meta name="author" content="Fandy Hidayat, Fandy TIC">
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
          <li class="nav-item px-lg-4">
            <a class="nav-link text-uppercase text-expanded" href="index.php">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item px-lg-4">
            <a class="nav-link text-uppercase text-expanded" href="diagnosa.php">Diagnosa Penyakit</a>
          </li>
          <li class="nav-item active px-lg-4">
            <a class="nav-link text-uppercase text-expanded" href="panduan.php">Panduan</a>
          </li>
        </ul>
      </div>
      <div id="google_translate_element"></div>
    </div>
      
  </nav>

  <section class="page-section about-heading">
    <div class="container">
      <img class="img-fluid rounded about-heading-img mb-3 mb-lg-0" src="assets/img/panduan.jpg" alt="">
      <div class="about-heading-content">
        <div class="row">
          <div class="col-xl-9 col-lg-10 mx-auto">
            <div class="bg-faded rounded p-5">
              <h2 class="section-heading mb-4">
                <!-- <span class="section-heading-upper">Strong Coffee, Strong Roots</span> -->
                <span class="section-heading-lower">Panduan Tata Cara Diagnosa Penyakit</span>
              </h2>
              <p style="text-align: justify;">Sistem Pakar diagnosa penyakit MERS-CoV merupakan sebuah sistem yang mampu melakukan diagnosa penyakit MERS-CoV berdasarkan gejala yang dapat dirasakan. untuk melakukan diagnosa penyakit, terdapat beberapa tatacara dan aturan yang harus dilakukan, adalah sebagai berikut:</p>

              <h3><span class="section-heading-upper">BAGAIMANA CARA MELAKUKAN DIAGNOSA PENYAKIT?</span></h3>
              <p class="mb-0">Diagnosa penyakit dapat dilakukan apabila telah menginput 2 gejala atau lebih, dikarenakan untuk mendiagnosa sebuah penyakit dibutuhkan minimal 2 buah gejala agar penyakit dapat didiagnosa.</p>

              <br>
              <h3><span class="section-heading-upper">BAGAIMANA JIKA GEJALA YANG ANDA RASAKAN TIDAK TERDAPAT DI SISTEM?</span></h3>
              <p class="mb-0">Pada saat ini hanya beberapa gejala dan tingkatan penyakit yang dapat didiagnosa oleh sistem, maka dari itu proses diagnosa penyakit hanya bisa dilakukan jika gejala dan penyakit sudah terdaftar pada sistem.</p>

              <br>
              <h3><span class="section-heading-upper">APAKAH DIAGNOSA PENYAKIT PADA SISTEM SUDAH 100% BENAR?</span></h3>
              <p class="mb-0">Diagnosa penyakit pada sistem dilakukan dengan perhitungan yang menggunakan metode <i>Dempster-Shafer</i> dengan nilai kepercayaan bersumber dari pakar/dokter ahli paru-paru, guna melakukan upaya penanganan dini terhadap penyakit tersebut. tetapi akan lebih baik jika melakukan konsultasi ulang bersama dokter ahli paru-paru, agar masalah yang anda hadapi dapat ditangani lebih baik.</p>
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
