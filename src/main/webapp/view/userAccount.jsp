<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Edocs Travel</title>
<script src="/js/home.js"></script>
<script src="/js/select2.min.js"></script>
<link rel="stylesheet" href="/css/home.css" type="text/css">
<link rel="stylesheet" href="/css/india.css" type="text/css">
<link rel="stylesheet" href="/css/contact.css" type="text/css">

<style>


@media ( max-width : 599px) {
	
}
@media ( min-width : 599px) {
	background-image: url('/images/background 2.jpg');
	
}

@media ( min-width : 1330px) {
section#onlineapplysection {
    margin-left: 60px;
    margin-right: 60px;
 }
	
}



p.description-steps-eta-planning {
	font-size: 18px !important;
	color: #1d3367 !important;
	text-align: start !important;
	margin-left: 0px !important;
   
}
section.gallery-big.padding-rwd {
    margin: 50px 0px 0px 0px;
}
ul.toggle-box {
    margin-right: 50px;
    margin-left: 50px;
}
</style>

<base href=".">
<style>
.cookie-info-text {
	color: #969696;
}

.toggle-box .toggle-li ul {
	font-size: 16px;
	list-style: disc;
}

.toggle-box .toggle-li ul li {
	border-bottom: none;
	padding: 0px
}

#applyhere {
	display: none;
	position: fixed;
	bottom: 20px;
	right: 70px;
	z-index: 99;
	font-size: 18px;
	border: none;
	outline: none;
	background-color: red;
	color: white;
	cursor: pointer;
	padding: 15px;
	border-radius: 4px;
	-webkit-border-radius: 10px;
	text-decoration: none;
	-webkit-animation: glowing 1500ms infinite;
	-moz-animation: glowing 1500ms infinite;
	-o-animation: glowing 1500ms infinite;
	animation: glowing 1500ms infinite;
}

.formdetails {
    text-align: start;
    font-size: 18px;
    color: #1d3367;
    padding-left: 50px;
    padding-right: 50px;
}

#formprocesslist{
    margin-left: 60px;
    margin-right: 60px;
    color: #1d3367;
    }
    
    .imponotice {
    color: #1d3367;
    font-size: 18px;
    text-align: start;
    margin-left: 50px;
}

.pymnetprocessing {
    color: #1d3367;
    font-size: 18px;
    text-align: start;
    margin-left: 50px;
    padding-bottom: 50px;
}
#imponoticevisa{
	color: #1d3367;
    font-size: 18px;
    text-align: start;
	list-style-type: initial !important;
    padding-bottom: 50px;
}
.listofports{
 color: #1d3367;
    font-size: 18px;
    text-align: start;
    margin-left: 50px;
   
}
.description-steps-h3 {
    color: #1d3367;
    text-align: center;
}
ul#transieninfo {
    color: #1d3367;
    margin-left: 50px;
    margin-right: 50px;
}
ul#formprocesslist {
    list-style-type: initial;
}
#airports{
    margin-right: 30px;
     margin-left: 30px;
     color: #1d3367;
     padding-bottom: 50px;
}
ul {
    list-style-type: none;
}
.toggle-click-closed{
	color: rgb(29 51 103);
}


}
@-webkit-keyframes glowing {
  0% { background-color: #1d3367; -webkit-box-shadow: 0 0 3px #1d3367; }
  50% { background-color: #FF0000; -webkit-box-shadow: 0 0 15px #FF0000; }
  100% { background-color: #B20000; -webkit-box-shadow: 0 0 3px #B20000; }
}

@-moz-keyframes glowing {
  0% { background-color: #1d3367; -moz-box-shadow: 0 0 3px #1d3367; }
  50% { background-color: #FF0000; -moz-box-shadow: 0 0 15px #FF0000; }
  100% { background-color: #B20000; -moz-box-shadow: 0 0 3px #B20000; }
}

@-o-keyframes glowing {
  0% { background-color: #1d3367; box-shadow: 0 0 3px #1d3367; }
  50% { background-color: #FF0000; box-shadow: 0 0 15px #FF0000; }
  100% { background-color: #B20000; box-shadow: 0 0 3px #B20000; }
}

@keyframes glowing {
  0% { background-color: #1d3367; box-shadow: 0 0 3px #1d3367; }
  50% { background-color: #FF0000; box-shadow: 0 0 15px #FF0000; }
  100% { background-color: #B20000; box-shadow: 0 0 3px #B20000; }
}
.description-steps-text-main {
	color: #1d3367;
	margin-top: 10px;
	font-weight: 600;
	font-size: 20px;
	text-align: center;
}

span.description-steps-text-bottom {
	color: #1d3367;
	padding-bottom: 10px;
}

#stepscolumn {
	border: 1px;
	box-shadow: 0px 0px 10px;
	margin: 0px 10px;
	display: inline-grid;
}

.step-icon.step-icon-1 {
	margin-bottom: 15px;
	margin-top: 15px;
}

.step-icon.step-icon-2 {
	margin-bottom: 15px;
	margin-top: 15px;
}

.step-icon.step-icon-3 {
	margin-bottom: 15px;
	margin-top: 15px;
}

</style>

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

	<section class="main-site-content">
		<div class="top-background" style="background-image: url('/images/banner_contact.jpg');"></div>
		<div class="container">
			<div class="row">
		
				<div class="col-md-12">
					<div class="top-content-text padding">
						

					</div>

					<section class="description padding mobile-pt-0" style="padding:50px;">
						<section class="privacy-policy-card">
							<h1 class="contact-form-h1">Contact</h1>
							<div class="text-black-22px" style="text-align: center;">If you need help, our expert
								department is at your disposal:</div>
							<div class="text-black-22px e-mail" style="text-align:center;">
								<span style="color:black;">E-mail: </span><a class="insert-support-address" style="color:#1c3367;text-align:center;"
									href="mailTo:support@evisa.express">support@evisa.express</a>
							</div>
							<div class="text-black-22px telephone">
								<span>Helpline:</span>
								<ul class="helpline-numbers">
									<li><span class="phone-code">EN</span><span
										class="phone-number insert-number" href="tel:+442031293603"><span
											class="phone-lang-name">en</span> +44 2031 293 603</span></li>
									<li><span class="phone-code">DE</span><span
										class="phone-number insert-phone-1" href="tel:+4930209930611"><span
											class="phone-lang-name">de</span> +49 30209930611</span></li>
									<li><span class="phone-code">PL</span><span
										class="phone-number insert-phone-2" href="tel:+48324310011"><span
											class="phone-lang-name">pl</span> +48 32 431 00 11</span></li>
									<li><span class="phone-code">ES</span><span
										class="phone-number insert-phone-3" href="tel:+442031293603"><span
											class="phone-lang-name">es</span> +44 2031 293 603</span></li>
									<li><span class="phone-code">CN</span><span
										class="phone-number insert-phone-4" href="tel:+861085241270"><span
											class="phone-lang-name">cn</span> +86 10 852 41 270</span></li>
								</ul>
							</div>
							<div class="text-white-14px">5 days a week from 8am to 4pm
								(GMT+1)</div>
						</section>
					</section>
					

					<section class="gallery-big padding-rwd">
						<div class="steps" id="typesetpedvisa" style="background-color: #ffffff;margin:50px 0 50px 0;">
							<section class="contact-form padding">
								<div class="left-side">
									<h3 class="description-steps-h3">
										<div class="small-line"></div>
										Inquiries form
									</h3>
									<div class="contact-form-container" style="position: relative">
										<form method="post" accept-charset="utf-8"
											action="/ajax/form.json">
											<div style="display: none;">
												<input type="hidden" name="_method" value="POST"><input
													type="hidden" name="_csrfToken" autocomplete="off"
													value="8f4032c58de8f7d0336b77bfa1e4aa9bbbfb764d2be8d5c6a4fa828f83661979c87a461eb6317fbdca872fe425d7b0159d3d71584f06a31ccc100f73d1014565">
											</div>
											<div class="row">
												<div class="col-sm-6">
													<input type="hidden" name="username" id="username"><input
														type="hidden" name="check" id="check"
														value="5Ie3KCG6FsqFUPR5ha5g"><input type="hidden"
														name="form" id="form" value="Contact Page">
													<div class="input-container">
														<label class="drop-down-label" for="name">Name</label>
														<div class="input text">
															<input type="text" name="name"
																class="initial-input input-normal"
																placeholder="Your name" id="name">
														</div>
														<span class="error-message"></span>
													</div>
												</div>
												<div class="col-sm-6">
													<div class="input-container">
														<label class="drop-down-label" for="email">E-mail</label>
														<div class="input email">
															<input type="email" name="email"
																class="initial-input input-normal"
																placeholder="Your e-mail address" id="email">
														</div>
														<span class="error-message"></span>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-6">
													<div class="input-container">
														<label class="drop-down-label" for="destination">Destination</label>
														<div class="drop-down" style="margin-top: 0px;">
															<input type="text" name="destination" id="destination"
																placeholder="Select a country"
																class="initial-input input-drop-down" autocomplete="no">
															<ul class="drop-down-ul display-none"
																id="destinationList" style="z-index: 1;">
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="armenia">Armenia</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="australia">Australia</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="azerbaijan">Azerbaijan</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="bahamas">Bahamas</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="bahrain">Bahrain</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="bangladesh">Bangladesh</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="benin">Benin</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="brazil">Brazil</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="cambodia">Cambodia</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="canada">Canada</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="colombia">Colombia</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="djibouti">Djibouti</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="east-africa">East
																			Africa</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="egypt">Egypt</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="ethiopia">Ethiopia</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="europe">European
																			Union</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="gabon">Gabon</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="georgia">Georgia</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="guinea">Guinea</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="india">India</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="iran">Iran</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="japan">Japan</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="kazakhstan">Kazakhstan</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="kenya">Kenya</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="kuwait">Kuwait</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="kyrgyzstan">Kyrgyzstan</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="laos">Laos</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="lesotho">Lesotho</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="madagascar">Madagascar</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="malawi">Malawi</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="malaysia">Malaysia</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="mexico">Mexico</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="moldova">Moldova</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="myanmar">Myanmar</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="nepal">Nepal</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="new-zealand">New
																			Zealand</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="nigeria">Nigeria</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="oman">Oman</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="pakistan">Pakistan</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="qatar">Qatar</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="romania">Romania</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="russia">Russia</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="rwanda">Rwanda</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="saudi-arabia">Saudi
																			Arabia</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="singapore">Singapore</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="south-korea">South
																			Korea</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="sri-lanka">Sri
																			Lanka</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="tajikistan">Tajikistan</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="tanzania">Tanzania</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="thailand">Thailand</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="turkey">Turkey</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="usa">USA</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="uganda">Uganda</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="ukraine">Ukraine</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span
																		data-key="united-arab-emirates">United Arab
																			Emirates</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="united-kingdom">United
																			Kingdom</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="uzbekistan">Uzbekistan</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="vietnam">Vietnam</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="zambia">Zambia</span></a></li>
																<li class="drop-down-ul-element"><a href="#"
																	class="a-no-active"><span data-key="zimbabwe">Zimbabwe</span></a></li>
															</ul>
														</div>
														<span class="error-message"></span>
													</div>
												</div>
												<div class="col-sm-6">
													<div class="input-container">
														<label class="drop-down-label" for="nationality">Nationality
															of your passport</label>
														<div class="input text">
															<input type="text" name="nationality"
																class="initial-input input-normal"
																placeholder="Type nationality" id="nationality">
														</div>
														<span class="error-message"></span>
													</div>
												</div>
											</div>
											<div class="input-container text-area-container">
												<label class="drop-down-label" for="message">Message</label>
												<div class="input textarea">
													<textarea name="message"
														class="initial-input contact-form-textarea input-normal"
														placeholder="Please describe your issue" id="message"
														rows="5" style="height:120px;"></textarea>
												</div>
												<span class="error-message"></span>
											</div>
											<div class="row zero">
												<div class="contact-button-wrapper">
													<div class="button-container">
														<button id="send-form" type="submit">SEND</button>
													</div>
												</div>
											</div>
										</form>
										<div class="contact-form-loading">
											<div>
												<img src="https://evisa.express/img/ajax-loader.gif">
											</div>
										</div>
									</div>
								</div>
							</section>
						</div>

					</section>
					
				</div>
			</div>
		</div>
	</section>


	<%@include file="footer.jsp"%>
	<script>
		document.querySelector('#select-country').addEventListener(
				'change',
				function() {
					var destinationKey = this.getAttribute('data-key');
					if (destinationKey !== null) {
						window.location.href = '/en/india'.replace("india",
								destinationKey);
					}
				});
	</script>
	<script>
		function toggleExpandText(expand) {
			if ($('.toexpand').hasClass('expanded')) {
				expand.innerText = "READ LESS"
			} else {
				expand.innerText = "READ MORE"
			}
		}
		document
				.addEventListener(
						'DOMContentLoaded',
						function() {
							var suffix = document
									.querySelector('.insert-number-with-suffix').dataset.suffix;
							var insertNumberWithSuffix = document
									.querySelectorAll('.insert-number-with-suffix');
							for (var i = 0; i < insertNumberWithSuffix.length; i++) {
								insertNumberWithSuffix[i].setAttribute('href',
										'tel:+44 2031 293 603'
												.replace(/ /g, ""));
								insertNumberWithSuffix[i].innerHTML = '<span class="phone-lang-name">en</span> +44 2031 293 603 '
										+ suffix;
							}

							var insertNumber = document
									.querySelectorAll('.insert-number');
							for (var i = 0; i < insertNumber.length; i++) {
								insertNumber[i].setAttribute('href',
										'tel:+44 2031 293 603'
												.replace(/ /g, ""));
								insertNumber[i].innerHTML = '<span class="phone-lang-name">en</span> +44 2031 293 603';
							}

							const req = new XMLHttpRequest();
							req.open('POST', '/ajax/get-support-address.json',
									true);
							req.onreadystatechange = function(evt) {
								if (req.readyState == 4) {
									if (req.status == 200) {
										var insertSupportAddress = document
												.querySelectorAll('.insert-support-address');
										for (var i = 0; i < insertSupportAddress.length; i++) {
											insertSupportAddress[i].innerText = JSON
													.parse(req.responseText).email
													.replace('[]', '@');
											insertSupportAddress[i]
													.setAttribute(
															'href',
															'mailTo:'
																	+ (JSON
																			.parse(req.responseText).email
																			.replace(
																					'[]',
																					'@')));
										}
									}
								}
							}
							req.send();
							var insertPhone = document
									.querySelectorAll('.insert-phone-' + 1);
							for (var i = 0; i < insertPhone.length; i++) {
								insertPhone[i]
										.setAttribute('href',
												'tel:+49 30209930611'.replace(
														/ /g, ""));
								insertPhone[i].innerHTML = '<span class="phone-lang-name">de</span> +49 30209930611';
							}
							var insertPhone = document
									.querySelectorAll('.insert-phone-' + 2);
							for (var i = 0; i < insertPhone.length; i++) {
								insertPhone[i].setAttribute('href',
										'tel:+48 32 431 00 11'
												.replace(/ /g, ""));
								insertPhone[i].innerHTML = '<span class="phone-lang-name">pl</span> +48 32 431 00 11';
							}
							var insertPhone = document
									.querySelectorAll('.insert-phone-' + 3);
							for (var i = 0; i < insertPhone.length; i++) {
								insertPhone[i].setAttribute('href',
										'tel:+34  932 200 330'
												.replace(/ /g, ""));
								insertPhone[i].innerHTML = '<span class="phone-lang-name">es</span> +34  932 200 330';
							}
							var insertPhone = document
									.querySelectorAll('.insert-phone-' + 4);
							for (var i = 0; i < insertPhone.length; i++) {
								insertPhone[i].setAttribute('href',
										'tel:+86 10 852 41 270'.replace(/ /g,
												""));
								insertPhone[i].innerHTML = '<span class="phone-lang-name">cn</span> +86 10 852 41 270';
							}
						});
	</script>

	<script>
		var languages = {
			'en' : 'https://evisa.express/',
			'de' : 'https://evisa.express/de',
			'en' : 'https://evisa.express/',
			'pl' : 'https://evisa.express/pl',
			'en' : 'https://evisa.express/',
			'es' : 'https://evisa.express/es',
			'en' : 'https://evisa.express/',
			'cn' : 'https://evisa.express/cn',
		}

		window.onscroll = function() {
			scrollFunction()
		};

		function scrollFunction() {

			var mybutton = document.getElementById("applyhere");
			if (document.body.scrollTop > 20
					|| document.documentElement.scrollTop > 20) {
				mybutton.style.display = "block";
			} else {
				mybutton.style.display = "none";
			}
		}
	</script>
</body>
</html>