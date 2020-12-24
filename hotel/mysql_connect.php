<?php

//Development Connection
//$servername = "localhost";
//$username = "root";
//$password = "";
//$dbname = "hotel";
 
//Remote Server Connection
$servername = "remotemysql.com";
$username = "a0j7ZjgGYf";
$password = "xwouuc7E0L";
$dbname = "a0j7ZjgGYf";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
?>