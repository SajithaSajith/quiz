<?php
	//Logging out by unset token Session and redirecting to Login page in  the front end
	require_once "system/config/config.php";
	unset($_SESSION['access_token']);
	$gClient->revokeToken();
	session_destroy();
	header('Location: login.php');
	exit();
?>