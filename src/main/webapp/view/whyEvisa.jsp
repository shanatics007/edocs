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
<link rel="stylesheet" href="/css/whyEvisa.css" type="text/css">
<link rel="icon" href="/images/favicon-1.png" type="image/x-icon">
<style>



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

	<div>
		<section class="applyonline" id="onlineapplysection"
			style="background-image: url('/images/banner_Why_Evisa_Express.jpg'); width: auto; height: 500px;">

			<div class="top-content-follow-card-h2"></div>
			<h4
				style="color: rgb(176, 143, 111); width: 100%; text-align: center; font-size: 20px;"></h4>


		</section>
	</div>
	<section class="main-site-content">
		<div class="top-background" style="background-image: url('/images/background 2.jpg');"></div>
		<div class="container">
			<div class="row">
		
				<div class="col-md-12">
					<div class="top-content-text padding">
						<h1
							style="color: #ffff; font-size: 50px; font-weight: 600; text-align: center;"></h1>

					</div>

					<a href="/en/india/applicationform"><button type="button"
							id="applyhere">APPLY ONLINE</button></a>
			<section class="description padding" style="background: #ffffff;margin: 50px 0 50px 0;">
						<div class="description-steps" id="description-steps">
							<div class="d-flex">
								<h2 class="description-steps-h3" style="color: rgb(29 51 103); text-align: center; font-weight: 600; padding-bottom: 20px;">
								ABOUT EDOCS.TRAVEL
								</h2>
							</div>
							
							<div class="row About-Row">
						
							<p> www.edocs.travel is a privately owned, non-governmental website. We are a private Global Travel Service agency that created this website for travelers where we offer helpful information on visa requirements for every country in the world in one place. We are committed to helping travelers with their online application process.</p>
							<p>www.edocs.travel  tremendous expertise comes from our 5 years of experience in the industry. Our team thoroughly and diligently researches everything travelers need to apply for a visa for each travel destination, using official and reliable sources, avoiding outdated information and misinformation found on many visa information websites.</p>
						
							
							</div>
						
							
						</div>
					</section>
			<section class="description padding" style="margin-bottom: 50px; background: #ffffff;">
						<div class="description-steps" style="padding-bottom: 50px;">
							<div class="d-flex">
								<h2 class="description-steps-h3" style="color: rgb(29 51 103); text-align: center; font-weight: 600; padding-bottom: 50px;">
								Why Edocs Travel  
								</h2>
							</div>
							
							<div class="row" style="display: flex;">
							<div class="col-sm-4" id="stepscolumn">
							<div class="step-icon step-icon-1"></div>
							<div class="description-steps-text">
							<div id="stepshead"> 
										<span class="description-steps-text-main">Time and frustration saver</span> 
									</div>
									<div id="stepsparagraph">
											<span class="description-steps-text-bottom">Our service saves your time spent on looking through the Edocs procedures but also all the visits at the authorized facilities such as consulate or embassy.</span></br>
											<span class="description-steps-text-bottom">All that needs to be done is to fill out the electronic form, submit it online and progress with the payment. Right after applying a confirmation of your application being received will be sent to your email address.</span></br>
											<span class="description-steps-text-bottom">You can submit the Edocs or ETA application not only for yourself but for the members of your family or friends!</span>
									</div>
									</div>
							</div>
							
							<div class="col-sm-4" id="stepscolumn">
							<div class="step-icon step-icon-2"></div>
							<div class="description-steps-text">
							<div id="stepshead">
										<span class="description-steps-text-main">Support at every step</span> 
								</div>
								<div id="stepsparagraph">
											<span class="description-steps-text-bottom">Thanks to our team of specialist, designated to provide support and guide the applicants through ever encountered obstacles, you might be sure that the whole process will end up completed successfully!</span></br>
											<span class="description-steps-text-bottom">The applicant can contact the support team by calling our telephone service or via email. Our support assistance is offered not only in English but also in German, Spanish, Chinese.</span></br>
											<span class="description-steps-text-bottom">So, if you want to be sure that your submission will go smoothly and with no unnecessary glitches, you are at the right place!</span>
									</div>
							</div>
							</div>
							
							<div class="col-sm-4" id="stepscolumn">
							<div class="step-icon step-icon-3"></div>
								<div class="description-steps-text">
								<div id="stepshead">
										<span class="description-steps-text-main">Guaranty of service</span> 
										</div>
										<div id="stepsparagraph">
											<span class="description-steps-text-bottom">Should your application be not taken care of correctly, your payment will be refunded, or the corrections performed with no extra costs from the site of the applicant.</span></br>
											<span class="description-steps-text-bottom">If the application could not be processed, reimbursement for cancellation will be provided by the terms of the service.</span></br>
											<span class="description-steps-text-bottom">Form for a refund should be submitted via email. The refund procedure can take up to a couple of days, and the transfer will be made accordingly to the applicant’s bank account.</span>
									</div>
							</div>
							</div>
							</div>
						
							
						</div>
					</section>




					<section class="description padding"
						style="background: #ffffff;">
						<div class="description-steps">
							<div class="d-flex">
								<h2 class="description-steps-h3"
									style="color: rgb(29, 51, 103); text-align: center; font-weight: 600; padding-bottom: 50px;">
									EDOCS Online Visa Application Steps</h2>
							</div>

							<div class="row" style="display: flex;">
								<div class="col-sm-4 border-radious" id="stepscolumn">

									<div class="description-steps-text">
										<div id="stepshead">
											<span class="description-steps-text-main">Step 1</span>
										</div>
										<div id="stepsparagraph" style="text-align: center;">
											<span class="description-steps-text-bottom"
												style="text-align: center;">Complete Online
												Application</span><br> <br>

										</div>
									</div>
								</div>

								<div class="col-sm-4 border-radious" id="stepscolumn">

									<div class="description-steps-text">
										<div id="stepshead">
											<span class="description-steps-text-main">Step 2</span>
										</div>
										<div id="stepsparagraph" style="text-align: center;">

											<span class="description-steps-text-bottom">Confirm
												Payment</span>
										</div>
									</div>
								</div>

								<div class="col-sm-4 border-radious" id="stepscolumn">

									<div class="description-steps-text">
										<div id="stepshead">
											<span class="description-steps-text-main">Step 3</span>
										</div>
										<div id="stepsparagraph" style="text-align: center;">
											<span class="description-steps-text-bottom">Receive
												Approved Visa</span><br> <br>

										</div>
									</div>
								</div>
							</div>


						</div>
					</section>


					<section class="gallery-big padding-rwd" id="documentvisa"
						style="background-color: #ffff;">
						<div class="d-flex">
							<div class="small-line">
								<strong>&nbsp;</strong>
							</div>
							<h2 class="description-steps-h3" style="font-weight: 600;"></h2>

						</div>
						<ul class="toggle-box">
							<li class="toggle-li">
								<h3 class="visa-questions-click toggle-click-closed">Complete
									The Online Visa Application</h3>
								<div class="height" style="width: 100%">
									<p class="visa-questions-description">To apply for a
										tourist visa for the United Arab Emirates, you need to fill
										out the online application form. To do this, you need to
										provide some personal and passport information. You will also
										be required to enter information about your travel plans and
										answer a series of health and safety questions before
										submitting the form. Finally, you need to upload all the
										necessary supporting documents, e.g. B. a current photo ID.</p>
								</div>
							</li>
							<li class="toggle-li">
								<h3 class="visa-questions-click toggle-click-closed">Confirm
									Your Tourist Visa Payment Online</h3>
								<div class="height">
									<p class="visa-questions-description">Before submitting
										your  visa application online, you must pay the fee to
										cover processing costs. This requires you to enter valid
										credit or debit card details and confirm the payment.</p>
								</div>
							</li>
							<li class="toggle-li">
								<h3 class="visa-questions-click toggle-click-closed">Receive
									Your Online Visa Confirmation By Email</h3>
								<div class="height">
									<p class="visa-questions-description">After completing and
										submitting the online  Tourist Visa Application Form, you
										will receive a confirmation email within 1-3 business days.
										Upon receipt, you must print the approved  Visa and present
										it upon arrival at any  airport.</p>
								</div>
							</li>
						</ul>
					</section>

			<section class="applyonline" id="lastsectiononlineapply" style="background: url('/images/banner-bg.png'), rgb(33, 55, 106); width: auto; height: 500px;">

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
					var destinationKey = this.getAttribute('data-key').toLowerCase();
;
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