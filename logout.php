<?php
session_start();

unset($_SESSION['username']);
unset($_SESSION['id_admin']);
unset($_SESSION['tingkat']);

header('location: login.php')
?>