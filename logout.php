<?php
	require_once "system/config/config.php";
	unset($_SESSION['access_token']);
	$gClient->revokeToken();
	session_destroy();
	header('Location: login.php');
	exit();
?>