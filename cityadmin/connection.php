<?php
	//for MySQLi OOP
	$con = new mysqli('localhost', 'u712261449_evacuati', 'rodny123', 'u712261449_evacuationcent');
	if($con->connect_error){
	   die("Connection failed: " . $con->connect_error);
	}
	////////////////

	//for MySQLi Procedural
	// $conn = mysqli_connect('localhost', 'root', '', 'mydatabase');
	// if(!$conn){
	//     die("Connection failed: " . mysqli_connect_error());
	// }
	////////////////
?>