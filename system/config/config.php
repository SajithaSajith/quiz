<?php
	session_start();
	require_once "GoogleAPI/vendor/autoload.php";
	$gClient = new Google_Client();
	$gClient->setClientId("1088237949229-718s4dk24hjip358af1p38ecc68v0g1l.apps.googleusercontent.com");
	$gClient->setClientSecret("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");
	$gClient->setApplicationName("Quiz Login");
	$gClient->setRedirectUri("http://localhost/quiz/g-callback.php");
	$gClient->addScope("https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/userinfo.email");
?>
