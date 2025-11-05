<?php

function CONNECTION_PDO() 
{
	$host = 'localhost';
	$username = 'bit_academy';
	$password = 'bit_academy';
	$dbname = 'info';
	$dsn = 'mysql:host=' . $host . ';dbname=' . $dbname;

	try {
		$conn = new PDO($dsn, $username, $password);
		// set the PDO error mode to exception
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		return $conn;
	} catch (PDOException $e) {
		echo "Connection failed: " . $e->getMessage();
	}
}
?>
