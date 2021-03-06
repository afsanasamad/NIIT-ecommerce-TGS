<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> -->
<!-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> -->
<!-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> -->

<!doctype html>
<html>
<head>
<title>TheGadgetshop</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="resources/images/equalizer.png">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" type="text/css" rel="stylesheet" />
<link href="resources/css/custom.css" rel="stylesheet" type="text/css">
<link href="<c:url value="resources/css/custom.css"/>" rel="stylesheet" type="text/css">
<script src="<c:url value="resources/js/custom.js"/>"></script>
</head>
<body>
<%@ include file="templates\header.jsp"%>
<div class="content">
<div class="bg"></div>
<!-- FORGOT PASSWORD FORM -->
<div class="text-center" style="padding:50px 0">
<div class="logo"> </div>
	<!-- Main Form -->
	<div class="login-form-1">
		<form id="forgot-password-form" class="text-left">
			<div class="etc-login-form-white">
				<p>When you fill in your registered email address, you will be sent instructions on how to reset your password.</p>
			</div>
			<div class="login-form-main-message"></div>
			<div class="main-login-form">
				<div class="login-group">
					<div class="form-group">
						<label for="fp_email" class="sr-only">Email address</label>
						<input type="text" class="form-control" id="fp_email" name="fp_email" placeholder="email address">
					</div>
				</div>
				<button type="submit" class="login-button"><i class="fa fa-chevron-right"></i></button>
			</div>
			<div class="etc-login-form">
				<p>Already Have an Account? <a href="login">Login Here</a></p>
				<p>New User? <a href="register">Create New Account</a></p>
			</div>
		</form>
	</div>
	<!-- end:Main Form -->
</div>
</div>

<%@ include file="templates\footer.jsp"%>

</body>
</html>