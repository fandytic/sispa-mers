<!DOCTYPE html>
<html>
<head>
	<title></title>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
</head>
<body>
	<form name="add_name" id="add_name">
		<div class="form-group">
			<table class="table">
				<tr>
					<td>Tingkatan Penyakit :</td>
					<td><input type="text" name="">
					</td>
				</tr>
			</table>
			<button name="add" id="add" class="btn btn-failed" type="button">Tambah Gejala</button>
		</div>
	

			<table class="table" id="dynamic_field">
				<tr>
					<th>Judul Kolom</th>
				</tr>
											
			</table>
			</form>
</body>
</html>
<script type="text/javascript">
	$(document).ready(function(){
		var i = 1;
		$('#add').click(function(){
			i++;
			$('#dynamic_field').append('<tr id="row'+i+'"><td>awwawk</td><td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button></td></tr>');
		});
		$(document).on('click','.btn_remove', function(){
			var button_id = $(this).attr("id");
			$('#row'+button_id+'').remove();
		});
	});
</script>