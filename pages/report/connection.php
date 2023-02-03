<?php
$host = 'us-cdbr-east-06.cleardb.net';
$username = 'bfa9efd9433ac0';
$password = '55c2f06a';
$database = 'heroku_b1e9a922942f4e6';

// Connect to database using mysqli extension
$conn = mysqli_connect($host, $username, $password, $database);

// Check if connection was successful
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>
