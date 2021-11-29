<?php 
//Logging out by destroying Session variable and redirecting to admin login page in  the back end
session_start();
if(isset($_SESSION['email'])){
session_destroy();}
$ref= @$_GET['q'];
header("location:admin.php");
?>