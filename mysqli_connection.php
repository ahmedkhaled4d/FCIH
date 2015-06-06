<?php
$db_conx = mysqli_connect("localhost","root","","ajax");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
?>
