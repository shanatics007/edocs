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
<link rel="stylesheet" href="/css/checkEntryRequirement.css"
	type="text/css">

<style>
@media ( max-width : 599px) {
}

@media ( min-width : 599px) {
	background-image:
	url('/images/background2.jpg');
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

#formprocesslist {
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

#imponoticevisa {
	color: #1d3367;
	font-size: 18px;
	text-align: start;
	list-style-type: initial !important;
	padding-bottom: 50px;
}

.listofports {
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

#airports {
	margin-right: 30px;
	margin-left: 30px;
	color: #1d3367;
	padding-bottom: 50px;
}

.toggle-click-closed {
	color: rgb(29, 51, 103);
}

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

#formprocesslist {
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

#imponoticevisa {
	color: #1d3367;
	font-size: 18px;
	text-align: start;
	list-style-type: initial !important;
	padding-bottom: 50px;
}

.listofports {
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

#airports {
	margin-right: 30px;
	margin-left: 30px;
	color: #1d3367;
	padding-bottom: 50px;
}

ul {
	list-style-type: none;
}

.toggle-click-closed {
	color: rgb(29, 51, 103);
}

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

	<div>
		<section class="applyonline" id="onlineapplysection"
			style="background-image: url('/images/banner_Entry-and-Travel-2.jpg'); width: auto; height: 500px;">

			<h4
				style="color: rgb(176, 143, 111); width: 100%; text-align: center; font-size: 20px;"></h4>

			
			<div class="top-content-follow-card-destination"
				style="width: 30%; margin: auto; padding-top: 40px;"></div>

		</section>
	</div>
	<section class="main-site-content">
		<div class="top-background"
			style="background-image: url('/images/background 2.jpg');"></div>
		<div class="container">
			<div class="row">

				<div class="col-md-12">
					<div class="top-content-text padding">
						<h1
							style="color: #ffff; font-size: 50px; font-weight: 600; text-align: center;">Entry
							and Travel Requirements</h1>

					</div>

					<section class="description padding mobile-pt-0"
						style="background-color: #ffff; padding: 60px;">
						<div class="description-steps">
							<p class="description-steps-eta-planning">Before planning to
								visit another country, all travelers should learn to check the
								visa requirements for their nationality in case they need a
								travel document to enter the destination country. </p>

							<p class="description-steps-eta-planning">Edocs.travel offers
								a complete service that allows travelers to check if they need a
								visa to travel to any country in the world with a passport from
								their country and to find out about the steps necessary to
								obtain the necessary travel document, if required.</p>

							<p class="description-steps-eta-planning"><b>The latest entry
								requirements implemented by governments of foreign countries
								include:</b></p>
							<ul id="entryRequirement">
								<li>Visas</li>
								<li>Passports</li>
								<li>Passenger Locator Forms or other health declarations</li>
								<li>Travel insurance (often with Covid coverage)</li>
								<li>Covid-19 test results</li>
								<li>Proof of being fully vaccinated (vaccination
									certificates)</li>
								<li>And more</li>
							</ul>
							<p class="description-steps-eta-planning">We are working to
								expand information for all nationalities of the world. If you
								can't find information about your nationality below, you can
								always use our "Visa Checker" at the bottom of this page and
								fill in your nationality and destination. Visa requirements vary
								from country to country and also depend on the nationality of
								the traveler and the duration and purpose of the intended stay.
								Depending on the purpose of your stay, you may be able to enter
								your destination country without a visa, or you may need to
								obtain a visa or electronic travel authorization.</p>

							<p class="description-steps-eta-planning">For short stays,
								many countries require certain nationalities to obtain a visa
								from an embassy or consulate prior to travel, while others allow
								certain citizens to obtain a visa online through application
								system electronics for transit, business or tourist travel.</p>

							<p class="description-steps-eta-planning">Travelers wishing
								to stay in a country for a long period of time or to visit it
								for the purpose of work or study must generally apply for a
								consular visa at the diplomatic mission closest to their country
								of destination.</p>

							<p class="description-steps-eta-planning">Find out which
								countries require a visa from your country of citizenship by
								viewing the overview of visa requirements around the world
								below.</p>

							<p class="description-steps-eta-planning"><b>Check the current
								entry requirements for:</b></p>

							<div class="row list-of-row" id="checkcurrent">
								<div class="col-sm-3 col-md-3 col-xs-6">
									<ul id="typesvisalist">
										<li>Armenia</li>
										<li style="font-size: 16px;"><a>Australia</a></li>
										<li>Azerbaijan</li>
										<li style="font-size: 16px;"><a>Bahamas</a></li>
										<li>Bahrain</li>
										<li>Bangladesh</li>
										<li>Benin</li>
										<li style="font-size: 16px;"><a>Brazil</a></li>
										<li>Cambodia</li>
										<li style="font-size: 16px;"><a>Canada</a></li>
										<li>Colombia</li>
										<li>Djibouti</li>
										<li>Africa</li>
										<li style="font-size: 16px;"><a>Egypt</a></li>
										<li>Ethiopia</li>
										<li>European</li>
									</ul>
								</div>
								<div class="col-sm-3 col-md-3 col-xs-6">
									<ul id="typesvisalist">

										<li>Gabon</li>
										<li>Georgia</li>
										<li>Guinea</li>
										<li>Guinea</li>
										<li style="font-size: 16px;"><a>India</a></li>
										<li>Iran</li>
										<li style="font-size: 16px;"><a>Japan</a></li>
										<li>Kazakhstan</li>
										<li>Kenya</li>
										<li>Kuwait</li>
										<li>Kyrgyzstan</li>
										<li>Laos</li>
										<li>Lesotho</li>
										<li>Madagascar</li>
										<li>Malawi</li>
										<li>Malaysia</li>
									</ul>
								</div>
								<div class="col-sm-3 col-md-3 col-xs-6">
									<ul id="typesvisalist">

										<li style="font-size: 16px;"><a>Mexico</a></li>
										<li>Moldova</li>
										<li>Myanmar</li>
										<li>Nepal</li>
										<li style="font-size: 16px;"><a>NewZealand</a></li>
										<li>Nigeria</li>
										<li>Oman</li>
										<li style="font-size: 16px;"><a>Pakistan</a></li>
										<li style="font-size: 16px;"><a>Qatar</a></li>
										<li>Romania</li>
										<li>Russia</li>
										<li>Rwanda</li>
										<li>SaudiArabia</li>
										<li style="font-size: 16px;"><a>Singapore</a></li>
										<li>SouthKorea</li>
										<li>SriLanka</li>
									</ul>
								</div>
								<div class="col-sm-3 col-md-3 col-xs-6">
									<ul id="typesvisalist">


										<li>Tajikistan</li>
										<li>Tanzania</li>
										<li style="font-size: 16px;"><a>Thailand</a></li>
										<li style="font-size: 16px;"><a>Turkey</a></li>
										<li style="font-size: 16px;"><a>USA</a></li>
										<li>Uganda</li>
										<li>Ukraine</li>
										<li>UnitedArabEmirates</li>
										<li>UnitedKingdom</li>
										<li>Uzbekistan</li>
										<li>Vietnam</li>
										<li>Zambia</li>
										<li>Zimbabwe</li>
									</ul>
								</div>

							</div>

						</div>
					</section>


					<section class="gallery-big padding-rwd"
						style="margin: 50px 0px 0px 0px !important">
						<div class="steps" id="typesetpedvisa"
							style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3"
									style="color: #1d3367 !important; text-align: center; font-weight: 700;">
									Visa Requirements</h2>
							</div>

							<p class="description-steps-eta-planning"
								style="padding-right: 50px; padding-left: 50px;">Each
								destination sets its own visa requirements applicable to all
								incoming visitors determining which document can they enter
								with.</p>
							<p class="description-steps-eta-planning"
								style="padding-right: 50px; padding-left: 50px;"><b>There are
								four main categories of visas/entry offered by most countries,
								and these are:</b></p>

							<ul id="visaRequirId"
								style="padding-left: 100px; padding-right: 100px; padding-bottom: 50px; color: #1d3367;">
								<li>Visas</li>
								<li>Electronic Visas: eVisa, ETA, ESTA, NzETA, K-ETA, etc.</li>
								<li>Visas on Arrival</li>
								<li>Visa-free entry</li>
							</ul>
							<p class="description-steps-eta-planning" id="visaRequirId">The
								governments of foreign countries draw up lists of countries that
								can visit their territory without a visa and under what
								conditions they can use this type of entry.</p>

							<p class="description-steps-eta-planning" id="visaRequirId">Find
								out which countries you can visit with an eVisa, VoA, which you
								can visit without a visa and which require a prior embassy
								visit, all based on your passport and nationality.</p>


							<p class="description-steps-eta-planning" id="visaRequirId"><b>Check
								what are the current visa requirements for passport holders
								from:</b></p>

							<div class="row" id="checklist">
								<div class="col-sm-3 col-md-3 col-xs-6">
									<ul id="typesvisalist">
										<li>Australia</li>
										<li>Austria</li>
										<li>Azerbaijan</li>
										<li>Belgium</li>
										<li>Cambodia</li>
										<li>Canada</li>
										<li>Chile</li>
										<li>China</li>
										<li>Croatia</li>
										<li>Denmark</li>
										<li>Egypt</li>
										<li>Ethiopia</li>
										<li>Fiji</li>
										<li>France</li>
									</ul>
								</div>
								<div class="col-sm-3 col-md-3 col-xs-6">
									<ul id="typesvisalist">
										<li>Germany</li>
										<li>Greece</li>
										<li>Hong Kong</li>
										<li>India</li>
										<li>Indonesia</li>
										<li>Iraq</li>
										<li>Ireland</li>
										<li>Italy</li>
										<li>Japan</li>
										<li>Kenya</li>
										<li>Kuwait</li>
										<li>Madagascar</li>
										<li>Mexico</li>
										<li>Micronesia</li>
									</ul>
								</div>
								<div class="col-sm-3 col-md-3 col-xs-6">
									<ul id="typesvisalist">
										<li>Myanmar</li>
										<li>New Zealand</li>
										<li>Nigeria</li>
										<li>Oman</li>
										<li>Pakistan</li>
										<li>Poland</li>
										<li>Portugal</li>
										<li>Russia</li>
										<li>Saudi Arabia</li>
										<li>Singapore</li>
										<li>Slovakia</li>
										<li>South Africa</li>
										<li>South Korea</li>
										<li>Spain</li>
									</ul>
								</div>
								<div class="col-sm-3 col-md-3 col-xs-6">
									<ul id="typesvisalist">
										<li>Sri Lanka</li>
										<li>Switzerland</li>
										<li>Taiwan</li>
										<li>Tanzania</li>
										<li>Thailand</li>
										<li>CzechRepublic</li>
										<li>Netherlands</li>
										<li>Philippines</li>
										<li>UnitedKingdom</li>
										<li>UnitedStates</li>
										<li>Turkey</li>
										<li>Vietnam</li>
									</ul>
								</div>
							</div>
						</div>
					</section>

		<section class="applyonline" id="lastsectiononlineapply" style="background: url('/images/banner-bg.png'), rgb(33, 55, 106); width: auto; height: 600px;">

			<div class="top-content-follow-card-h2">CHECK VISA REQUIREMENTS</div>
			<h4 style="    color: rgb(176, 143, 111);width: 100%;text-align: center;font-size: 20px;">AND APPLY ONLINE</h4>

			
			<div class="top-content-follow-card-destination" style="margin: auto; padding-top:40px;">
				<span class="top-content-follow-card-destination-small-text">Your
					Destination</span>
				<div class="drop-down">
					<input type="text" name="noPassword" id="select-country" placeholder="Select a country" class="initial-input input-drop-down" autocomplete="no">
					<ul class="drop-down-ul display-none" style="bottom: initial; max-height: 300px;">
					<li class="drop-down-ul-element">
					
					<a href="/en/india" class="a-no-active">
					<span>India</span>
					</a>
					</li>
					<li class="drop-down-ul-element">
					
					<a href="/en/turkey" class="a-no-active">
					<span>Turkey</span>
					</a>
					</li>
					<li class="drop-down-ul-element">
					
					<a href="/en/pakistan" class="a-no-active">
					<span>Pakistan</span>
					</a>
					</li>
					<li class="drop-down-ul-element">
					
					<a href="/en/thailand" class="a-no-active">
					<span>Thailand</span>
					</a>
					</li>
					<li class="drop-down-ul-element">
					
					<a href="/en/united-arab-emirates" class="a-no-active">
					<span>United-Arab-Emirates</span>
					</a>
					</li>
				</ul>
				</div>
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
					var destinationKey = this.getAttribute('data-key').toLowerCase();
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
			'en' : 'https://edocs.travel/',
			'de' : 'https://edocs.travel/de',
			'en' : 'https://edocs.travel/',
			'pl' : 'https://edocs.travel/pl',
			'en' : 'https://edocs.travel/',
			'es' : 'https://edocs.travel/es',
			'en' : 'https://edocs.travel/',
			'cn' : 'https://edocs.travel/cn',
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