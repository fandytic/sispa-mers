<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<form id="upload_form" enctype="multipart/form-data" method="post">
		<input type="text" name="name[]" id="name"><p id="p"></p>
		<br>
		<input type="text" name="name[]" id="name"></p>
		<br>
		<input type="file" name="file1" id="file1">
		<br>
		<input type="button" value="Upload File" onclick="uploadFile()">
	</form>
</body>
<script type="text/javascript">
	function uploadFile() {
		var names = document.getElementsByName('name[]');
		for (var i = 0, iLen = names.length; i < iLen; i++) {
			echo = names[i].value;
			document.getElementById("p").innerHTML = echo;
		}
	}
</script>
</html>