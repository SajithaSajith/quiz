<?php

	//Google call back function to set $_SESSION['access_token'] with the Token, $_SESSION['email'] with Google Email Id and $_SESSION['givenName'] with First Name in the Google account.
	require_once "system/config/config.php";

	if (isset($_SESSION['access_token']))
		$gClient->setAccessToken($_SESSION['access_token']);
	else if (isset($_GET['code'])) {
		$token = $gClient->fetchAccessTokenWithAuthCode($_GET['code']);
		$_SESSION['access_token'] = $token;
	} else {
		header('Location: login.php');
		exit();
	}

	$oAuth = new Google_Service_Oauth2($gClient);
	$userData = $oAuth->userinfo_v2_me->get();

	$_SESSION['email'] = $userData['email'];
	$_SESSION['givenName'] = $userData['givenName'];
	
	//Redirecting to welcome.php after setting SESSION variables
	header('Location: welcome.php?q=1');
	exit();
?>