<?php include '_header.php'; 

include "../controller/c_Penyakit.php";
$t = new Penyakit;
$data = $t->TampilSemua();

include "../controller/c_Gejala.php";
$tt = new Gejala;
$data2 = $tt->TampilSemua();
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
				<h4 class="page-title">Manajemen Tambah Basis Pengetahuan</h4>
				<div class="d-flex align-items-center">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item" aria-current="page"><a href="basisp.php">Basis Pengetahuan</a></li>
						<li class="breadcrumb-item active" aria-current="page">Tambah Basis Pengetahuan</li>
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
			<div class="col-12">
				<div class="card">
					<div class="card-body">
						<!-- <form id="myform" method="post" class="form-horizontal form-material" action="../ProsesA/t_basisp.php"> -->
							<form name="add_name" id="add_name">
								<div class="form-group">
									<table class="table table-bordered" id="dynamic_field">
										<tr>
											<td>Tingkatan Penyakit :</td>
											<td>
												<select class="form-control form-control-line" name="id_penyakit">
													<?php foreach($data as $d){
														?>
														<option value="<?php print $d['id']; ?>"><?php print $d['nama']; ?></option>
													<?php } ?>
												</select>
											</td>
										</tr>
										<tr>
											<td>Gejala : </td>
											<td>
												<select class="form-control form-control-line" name="id_gejala[]">
													<?php foreach($data2 as $dd){
														?>
														<option value="<?php print $dd['id']; ?>"><?php print $dd['nama']; ?></option>
													<?php } ?>
												</select>
											</td>
											<td>
												<input id="numb" type="number" name="ds[]" class="form-control form-control-line" oninput="myFunction()" min="0" max="1" step="0.05" placeholder="contoh input nilai : 0.5">
												<!-- <input id="numb" type="text" class="form-control form-control-line" name="ds[]" placeholder="contoh input nilai : 0.5"> -->
												<p id="demo" style="color: red;"></p>
											</td>
											<td>
												
											</td>
										</tr>
									</table>
									<div class="form-group">
										<div class="col-sm-12">
											<button name="add" id="add" class="btn btn-failed" type="button">Tambah Gejala</button>
											<button id="submit" name="submit" class="btn btn-success" type="button">Submit</button>
										</div>
									</div>
								</div>
								<!-- <div class="form-group">
									<label class="col-md-12">Nama Penyakit</label>
									<div class="col-md-12">
										<select class="form-control form-control-line" name="id_penyakit">
											<?php foreach($data as $d){
												?>
												<option value="<?php print $d['id']; ?>"><?php print $d['nama']; ?></option>
											<?php } ?>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-12">Nama Gejala</label>
									<div class="col-md-12">
										<select class="form-control form-control-line" name="id_gejala">
											<?php foreach($data2 as $dd){
												?>
												<option value="<?php print $dd['id']; ?>"><?php print $dd['nama']; ?></option>
											<?php } ?>
										</select>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-12">Nilai Kepercayaan</label>
									<div class="col-md-12">
										<input id="numb" type="text" class="form-control form-control-line" name="ds" placeholder="contoh input nilai : 0.5">
										<p id="demo" style="color: red;"></p>
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-12">
										<button onclick="myFunction()" class="btn btn-success" type="button">Tambah Data</button>
									</div>
								</div> -->
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

<!-- <script type="text/javascript">
	function myFunction(){
		var x, text;
		// Get the value of the input field with id="numb"
		x = document.getElementById("numb").value;

    // If x is Not a Number or less than one or greater than 10
    if (isNaN(x) || x < 0 || x > 1) {
    	text = "*Format yang diinputkan harus antara 0 - 1";
    } else {
    	text = "Format benar";
    	document.forms["myform"].submit();
    }
    document.getElementById("demo").innerHTML = text;
}
</script> -->
<script>
	
	$(document).ready(function(){
		var i = 1;
		$('#add').click(function(){
			i++;
			$('#dynamic_field').append('<tr id="row'+i+'"><td></td><td><select class="form-control form-control-line" name="id_gejala[]">													<?php foreach($data2 as $dd){
				?>
				<option value="<?php print $dd['id']; ?>"><?php print $dd['nama']; ?></option>													<?php } ?>
				</select></td><td>												<input id="numb" type="text" oninput="myFunction()" class="form-control form-control-line" name="ds[]" placeholder="contoh input nilai : 0.5"><p id="demo" style="color: red;"></p>											</td><td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button></td></tr>');
			/*alert($('input[id="numb[]"]').length);*/
		});
		$(document).on('click','.btn_remove', function(){
			var button_id = $(this).attr("id");
			$('#row'+button_id+'').remove();
		});

		$('#submit').click(function(){

		});

		/*$('#submit').click(function(){
			$.each($('#numb'), function(){
				var x, text;
				x = document.getElementById(this.id).value;
				if (isNaN(x) || x < 0 || x > 1) {
					text = "salah bro";
				} else {
					text = "iko baruu";
				}
				$(this).parents().find("p").text(text);
			})
		});*/



	});
function myFunction(){
		var x, text;
		// Get the value of the input field with id="numb"
		x = document.getElementById("numb").value;

    // If x is Not a Number or less than one or greater than 10
    if (isNaN(x) || x < 0 || x > 1) {
    	text = "*Format yang diinputkan harus antara 0 - 1";
    } else {
    	text = "Format benar";
    	/*$.ajax({
			url:"../ProsesA/t_basisp.php",
			method:"POST",
			data:$('#add_name').serialize(),
			success:function(data)  
			{
				alert("Data berhasil diinputkan!");  
				window.location = "basisp.php";
			}  
		})*/
    }
    document.getElementById("demo").innerHTML = text;
}

</script>