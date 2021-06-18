<?php

//Development Connection
//$servername = "localhost";
//$username = "root";
//$password = "";
//$dbname = "hotel";
 
//Remote Server Connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "hotel";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
?>