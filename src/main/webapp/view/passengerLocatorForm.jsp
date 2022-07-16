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
<link rel="stylesheet" href="/css/passengerLocatorFrom.css"
	type="text/css">
<link rel="icon" href="/images/favicon-1.png" type="image/x-icon">
<style>
@media ( max-width : 599px) {
}

@media ( min-width : 599px) {
	background-image:url('/images/background2.jpg');
}

@media ( min-width : 1330px) {
	section#onlineapplysection {
		margin-left: 60px;
		margin-right: 60px;
	}
}

p.description-steps-eta-planning {
	font-size: 18px !important;
	text-align: start !important;
	margin-left: 0px !important;
}

section.gallery-big.paddings {
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
	color: #1c3367;
	padding-left: 50px;
	padding-right: 50px;
}

#formprocesslist {
	margin-left: 60px;
	margin-right: 60px;
}

.imponotice {
	font-size: 18px;
	text-align: start;
	margin-left: 50px;
}

.pymnetprocessing {
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
	font-size: 18px;
	text-align: start;
	margin-left: 50px;
}

.description-steps-h3 {
	color: #1d3367;
	text-align: center;
}

ul#transieninfo {
	color: #1d3367 !important;
	margin-left: 50px;
	margin-right: 50px;
}

ul#formprocesslist {
	list-style-type: initial;
}

#airports {
	margin-right: 30px;
	margin-left: 30px;
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
	<div>
		<section class="applyonline" id="onlineapplysection"
			style="background-image: url('/images/banner_Entry-and-Travel.jpg'); width: auto; height: 500px;">

			
			<h4
				style="color: rgb(176, 143, 111); width: 100%; text-align: center; font-size: 20px;"></h4>

		
			<div class="top-content-follow-card-destination"
				style="width: 30%; margin: auto; padding-top: 40px;">

				

			</div>

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
							style="color: #ffff; font-size: 50px; font-weight: 600; text-align: center;">Passenger
							Locator Form</h1>

					</div>

					<!-- <a href="/en/india/applicationform"><button type="button"
							id="applyhere">APPLY ONLINE</button></a> -->
					<section class="description padding mobile-pt-0"
						style="background-color: #ffff; padding: 50px;">
						<div class="description-steps">
							<p class="description-steps-eta-planning">The ongoing The
								ongoing Covid-19 pandemic has forced many countries to implement
								additional safety measures to protect public health. One of
								these safety measures was the introduction of mandatory online
								health and travel registrations for all incoming visitors, often
								even citizens of those countries.</p>
						</div>

						<ul id="indiaformvisa">

							<li><a href="https://">India Air Suvidha Form,</a></li>
							<li><a href="https://">Saudi Arabia Arrival
									Registration,</a></li>
							<li><a href="https://">Colombian Check-MIG,</a></li>
							<li><a href="https://">Canadian ArriveCAN,</a></li>
							<li><a href="https://">Mexican Forma Migratoria
									Múltiple,</a></li>
							<li><a href="https://">Kenya Health Surveillance Form,</a></li>
							<li>Tanzania Health Surveillance Form,</li>
							<li><a href="https://">Croatian Enter Croatia Form,</a></li>
							<li><a href="https://"> Italian dPLF,</a></li>
							<li><a href="https://"> Malta dPLF,</a></li>
							<li><a href="https://"> Spanish Formulairo de Control
									Sanitario,</a></li>
							<li><a href="https://">Turkey Entry Form,</a></li>
							<li><a href="https://">Sri Lanka Health Declaration,</a></li>
							<li><a href="https://">The Bahamas Travel Health Visa,</a></li>
							<li><a href="https://">The Netherlands Health
									Declaration Form,</a></li>

							<li>Vietnam Health Declaration.</li>
						</ul>
						<p>
							<b>There's also:</b>
						</p>
						<ul id="indiaformvisa">
							<li><a href="https://">France Passenger Locator Form</a></li>
							<li><a href="https://">Portugal Passenger Locator Form</a></li>

						</ul>

					</section>


					<section class="gallery-big padding-rwd"
						style="margin: 50px 0px 0px 0px !important">
						<div class="steps" id="typesetpedvisa"
							style="background-color: #ffffff;">

							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3"
									style="color: #1d3367 !important; text-align: center; font-weight: 700;">
									Are Passenger Locator Forms mandatory</h2>
							</div>
							<p class="description-steps-eta-planning"
								style="padding-right: 80px; padding-left: 80px;">In most
								cases, it is mandatory to fill out the Passenger Locator Form,
								unless the country the traveler intends to visit or their
								specific situation dictates otherwise.</p>


							<p class="description-steps-eta-planning"
								style="padding-right: 80px; padding-left: 80px;">PLFs are
								now included in the list of required documents for many
								countries around the world and must be presented when crossing
								borders.</p>

							<p class="description-steps-eta-planning"
								style="padding-right: 80px; padding-left: 80px;">Some
								destinations consider failure to complete the PLF a criminal
								offense and impose fines for non-compliance with the latest
								regulations.</p>


							<p class="description-steps-eta-planning"
								style="padding-right: 80px; padding-left: 80px;">Most often,
								the country that requires you to fill out a health declaration
								online will issue a QR code or PDF certificate to fill out the
								PLF and will require you to present this certificate or code
								upon arrival, sometimes even in paper form.</p>


							<p class="description-steps-eta-planning"
								style="padding-right: 80px; padding-left: 80px;">To check if
								you need a PLF before arriving at your chosen destination, check
								the latest entry requirements for that country.</p>
						</div>
					</section>



					<section class="destinations-list-section" id="destination-ist"
						style="background: #ffff; margin: 50px 0px 0px 0px !important;">
						<div class="d-flex" style="text-align: center; color: #1d3367;">
							<div class="small-line"></div>
							<h2 class="description-steps-h3"
								style="color: #1d3367; font-weight: 600;">Requirements to
								complete a Passenger Locator Form</h2>

						</div>
						<div class="formdetails">
							<p>There are minimal requirements needed to be met to
								complete a PLF in a selected country.</p>
						</div>
						<p>
							<b>Since PLFs are available online, travelers simply need to
								have:</b>
						</p>




						<ul id="formprocesslist">
							<li>An active email address</li>
							<li>A valid passport/ID</li>

							<li>Connection to the internet</li>
							<li>Working device to complete the PLF
								(phone/laptop/PC/tablet)</li>
						</ul>



						<div class="pymnetprocessing">
							<p>In addition, you need basic information about your
								forthcoming trip abroad, such as your address, departure and
								arrival dates, your fellow travelers, purpose of the visit,
								etc..</p>

							<p>Other mandatory information is your personal details and
								contact details such as first and last name, date of birth,
								address in your home country, telephone number and e-mail
								address.</p>

							<p>Some PLFs require you to answer a few health questions to
								find out the health status of the traveler and assess their
								situation based on the answers. The questions can relate to
								specific symptoms, such as a cough or fever, or whether the
								traveler has recently been in contact with someone potentially
								infected with Covid-19.</p>

						</div>

						<p>
							<b>In some cases you may also need:</b>
						</p>

						<ul id="formprocesslist">
							<li>Your vaccination certificate</li>
							<li>A negative Covid-19 test result</li>

						</ul>

					</section>


					<section class="gallery-big padding-rwd">
						<div class="steps" id="validitysteps"
							style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3" style="font-weight: 600;">How
									to apply for a PLF</h2>

							</div>
							<p class="description-steps-eta-planning">Passenger Locator
								Forms are available online and can be easily completed within
								minutes from home using any preferred device connected to the
								internet. .</p>


							<p>
								<b>All you have to do is:</b>
							</p>


							<ol>
								<li>Choose the country you plan on visiting</li>
								<li>Provide the required details into an online application
									form within the required time frame (usually 72 hours of
									arrival)</li>
								<li>Double-check the given information to make sure it’s
									correct and up-to-date</li>
								<li>Cover the service fee</li>
								<li>Wait for approval</li>


							</ol>
							<p class="description-steps-eta-planning">Passenger Locator
								Forms are available online and can be easily completed within
								minutes from home using any preferred device connected to the
								internet.</p>

						</div>

					</section>

					<section class="gallery-big padding-rwd">
						<div class="steps" id="portevisaaccept"
							style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3" style="font-weight: 600;">Countries
									that require completing a Passenger Locator Form before
									departure</h2>
							</div>

							<div class="listofports">
								<p>The following countries require travelers to complete a
									PLF online before their departure and present confirmation of
									its completion on arrival to grant a successful entry</p>

							</div>
							<h3 id="aiportsheadId"
								style="color: #1d3367; margin-right: 50px; font-size: 20px; margin-left: 50px"></h3>
							<div class="row" id="airports">
								<div class="col-sm-4 col-md-4 col-xs-6">
									<ul id="arporistlistt">
										<li>Canada</li>
										<li>Croati</li>
										<li>France</li>
										<li>India</li>
										<li>Italy</li>
										<li>Kenya</li>

									</ul>

								</div>
								<div class="col-sm-4 col-md-4 col-xs-6">
									<ul id="arporistlistt">
										<li>Malta</li>
										<li>Portugal</li>
										<li>Saudi Arabia</li>
										<li>Spain</li>
										<li>Sri Lanka</li>


									</ul>

								</div>
								<div class="col-sm-4 col-md-4 col-xs-6">
									<ul id="arporistlistt">
										<li>Tanzania</li>
										<li>The Bahamas</li>
										<li>The Netherlands</li>
										<li>Turkey</li>
										<li>Vietnam</li>
									</ul>

								</div>

							</div>

						</div>
					</section>
					<section class="applyonline" id="lastsectiononlineapply" style="background: url('/images/banner-bg.png'), rgb(33, 55, 106); width: auto; height: 425px;margin-bottom: 50px;">

			<div class="top-content-follow-card-h2">CHECK VISA REQUIREMENTS</div>
			<h4 style="    color: rgb(176, 143, 111);width: 100%;text-align: center;font-size: 20px;">AND APPLY ONLINE</h4>

			
			<div class="top-content-follow-card-destination" style="margin: auto; text-align: center;">
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
					var destinationKey = this.getAttribute('data-key').toLowerCase();;
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

			var mybutton = document.getElementById("	");
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