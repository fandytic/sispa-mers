<?php 
/**
 * 
 */
class Admin{
	
	function __construct(argument)
	{
		$con = mysqli_connect("localhost","root","","db_pakar");
		$this->con = $con;
	}
}
?>