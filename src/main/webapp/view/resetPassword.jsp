<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!-- saved from url=(0038)https://evisa.express/en/account/login -->
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<title>Edocs Travel</title>

<link rel="stylesheet" href="/css/default.css">
<link rel="stylesheet" href="/css/home.css">
<script async="" src="./login_files/modules.e20d55506f3679282458.js"
	charset="utf-8"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>
	<div id="overlay" class="hidden mobileMenuOverlay"></div>
	<%@include file="header.jsp"%>
	<div class="mobile-menu right5000">
		<div class="mobile-menu-top">
			<span class="mobile-menu-account in-header"><img src="#"
				alt=""><a id="menu-mobile-login" class="mobile-menu-font"
				href="/login" rel="nofollow">Log in</a></span><span
				class="mobile-menu-close">close</span>
		</div>
		<ul class="toggle-box">
			<li class="toggle-li"><a id="menu-mobile-get-visa"
				class="mobile-menu-font toggle-click-closed">get visa</a>
				<div class="height">
					<ul class="mobile-menu-country-list">

						<li><a href="/en/india">India</a></li>

						<li><a href="/en/turkey">Turkey</a></li>
						
						<li><a href="/en/thailand">Thailand</a></li>
						
						<li><a href="/en/united-arab-emirates">United-Arab-Emirates</a></li>
						
						<li><a href="/en/pakistan">Pakistan</a></li>

					</ul>
				</div></li>
			<li class="toggle-li"><a id="menu-mobile-groups"
				class="mobile-menu-font" href="#">Passenger Locator Forms</a></li>
			<li class="toggle-li"><a id="menu-mobile-groups"
				class="mobile-menu-font" href="#" rel="nofollow">Travel
					Insurance</a></li>
			<li class="toggle-li"><a id="menu-mobile-groups"
				class="mobile-menu-font" href="#">Check Entry Requirements</a></li>

		</ul>
	</div>
	<section class="main-site-content account-page">
		<div class="container">
			<div class="form-centered">
				<div class="form-header">Reset Password</div>
				<div class="form-content">
					<!---->
					<div class="form-condition-wrapper">
						<!---->
						<div class="input-box" id="passwordInputId">
							<div class="input-box-top">
								<div class="input-box-label">Password</div>
								<div class="input-box-hint">At least 8 characters,
									including at least 1 uppercase letter, 1 lowercase letter and a
									number.</div>
							</div>
							<div class="input-box-bottom">
								<div class="actual-input">
									<div class="text-input-single">
										<input type="password" placeholder="required"
											id="userPasswordId" onChange="validate();">
									</div>
									<!---->
								</div>
								<div class="error-mark" id="passError" style="display: none;">
									<i class="icon-error"></i>
								</div>
								<div class="success-mark" id="passSucess" style="display: none;">
									<i class="icon-ok"></i>
								</div>

							</div>
							<span id="invalidatPass" style="color: red; display: none;">Please
								Enter Correct Password *</span>
						</div>
						<div class="form-condition-wrapper">
							<div class="input-box" id="passwordInputId">
								<div class="input-box-top">
									<div class="input-box-label">Confirm Password</div>
								</div>
								<div class="input-box-bottom">
									<div class="actual-input">
										<div class="text-input-single">
											<input type="password" placeholder="required"
												id="userConfirmPasswordId" onChange="validate();">
										</div>
										<!---->
									</div>
									<div class="error-mark" id="cnfpassError"
										style="display: none;">
										<i class="icon-error"></i>
									</div>
									<div class="success-mark" id="cnfpassSucess"
										style="display: none;">
										<i class="icon-ok"></i>
									</div>

								</div>
								<span id="invalidatCnfPass" style="color: red; display: none;">Password
									not matched please enter correct password *</span>
							</div>
							<div class="input-box">
								<div
									class="input-box-bottom button-container submit-input-container">
									<button class="btn" id="resetPassid" onclick="resetPassword();">
										RESET PASSWORD</button>
								</div>
							</div>
							<a href="/login" class="underline-link" id="forgotPasslink">
								Back to login </a>

						</div>
						<!---->
					</div>
				</div>
			</div>
		</div>
		<div class="ee-form-loader" style="display: none;"></div>
	</section>

	<%@include file="footer.jsp"%>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

	<script type="text/javascript">
		function validate() {

			var pass = $('#userPasswordId').val();

			var confirmPass = $('#userConfirmPasswordId').val();

			if (pass.match(/[a-z]/g) && pass.match(/[A-Z]/g)
					&& pass.match(/[0-9]/g) && pass.match(/[^a-zA-Z\d]/g)
					&& pass.length >= 8) {

				$('#passError').css('display', 'none');
				$('#invalidatPass').css('display', 'none');
				$('#userPass').css('border', ' 1px solid black');
				$('#passSucess').css('display', 'block');

			} else {
				$('#passSucess').css('display', 'none');
				$('#passError').css('display', 'block');
				$('#invalidatPass').css('display', 'block');
			}
			if (confirmPass == pass) {
				$('#cnfpassError').css('display', 'none');
				$('#invalidatCnfPass').css('display', 'none');
				$('#userConfPass').css('border', ' 1px solid black');
				$('#cnfpassSucess').css('display', 'block');

			} else {
				$('#cnfpassSucess').css('display', 'none');
				$('#cnfpassError').css('display', 'block');
				$('#invalidatCnfPass').css('display', 'block');

			}

		}
	</script>


	<script type="text/javascript">
		function resetPassword() {

			var urlString =  window.location.href;
			var urlData = urlString.split('/')
			var key = urlData[4];

			var userPass = $('#userPasswordId').val();

			var userCnfPass = $('#userConfirmPasswordId').val();
			var url = "https://www.edocs.travel/user/updatepassword";

			if (userCnfPass && userPass !="" ) {
				$.ajax({
						type : "POST",
						url : url,
						headers : {
							'Content-Type' : 'application/json'
						},
						data : JSON.stringify({
								"userPassword" : userPass,
								"key": key
						}),
						async : true,
						success : function(data) {

							if (data.status == 1) {
									Swal
											.fire({
												title : "<img src='/images/sucess1234.png' style='width:150px;'>",
												html : "Password Updated sucessfully",
												confirmButtonText : "Ok",
											});

								} else {

									Swal
											.fire({
												title : "<img src='/images/fail1234.png' style='width:150px;'>",
												html : "This link has expired",
												confirmButtonText : "Ok",
											});

								}

							},
							error : function(data) {
								console.log("error when gettig data");
							}
						});

			} else {
				$('#userConfirmPasswordId').blur();
				$('#userConfirmPasswordId').css('border', ' 1px solid red');
			}
		}
	</script>

</body>
</html>