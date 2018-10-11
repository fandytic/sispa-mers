<?php
session_start();

unset($_SESSION['username']);


?>
<script language="JavaScript">
			alert('Thanks For Login');
				document.location='login.php'</script>
<?php
include "login.php";
?>