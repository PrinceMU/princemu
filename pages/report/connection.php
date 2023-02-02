<?php
$host = 'localhost';
$username = 'id20241002_root';
$password = '42{h]E~|+WW49~#O';
$database = 'id20241002_db_barangay';

// Connect to database using mysqli extension
$conn = mysqli_connect($host, $username, $password, $database);

// Check if connection was successful
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>