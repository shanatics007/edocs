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
<script src="js/home.js"></script>
<script src="js/select2.min.js"></script>
<link rel="stylesheet" href="/css/home.css" type="text/css">
<link rel="icon" href="/images/favicon-1.png" type="image/x-icon">
<style>

#focusSectionId{
	background-color: #ffffff;
    padding-top: 30px;
    padding-bottom: 30px;
    margin-bottom: 35px;
    padding-left: 65px;
    padding-right: 65px;
    }
section#applySectionId{
	background-color: #ffffff;
    padding-top: 30px;
    padding-bottom: 30px;
    margin-bottom: 35px;
    padding-left: 65px;
    padding-right: 65px;
}
section#mobilestepsview{
	background-color: #ffffff;
    padding-top: 30px;
    padding-bottom: 30px;
    margin-bottom: 35px;
    padding-left: 65px;
    padding-right: 65px;
}
#pleasesectionId{
	background-color: #ffffff;
    padding-top: 30px;
    padding-bottom: 30px;
    margin-bottom: 35px;
    padding-left: 65px;
    padding-right: 65px;
}
#insurancesectionId{
	background-color: #ffffff;
    padding-top: 30px;
    padding-bottom: 30px;
    margin-bottom: 35px;
    padding-left: 65px;
    padding-right: 65px;

}
#edocsAppId{
	color: #1d3367;
    font-size: 24px;
    text-align: center;
    font-weight: 600;
}
h2#requirementsectId{
	color: #1d3367;
    font-size: 24px;
    text-align: center;
    font-weight: 600;
}
button#applyhere {
display:block;
font-weight: 600;
}
@media ( min-width : 1330px) {
	section#onlineapplysection {
		margin-left: 60px;
		margin-right: 60px;
	}
}
@media ( max-width : 375px){
.icon.destination-thailand {
    margin-left: 0px !important;
}
.icon.destination-united-arab-emirates {
    margin-left: 0px !important;
}
}

@media ( max-width : 599px) {
	p.description-steps-eta-planning {
		font-size: 14px !important;
	}
	div#stepVisarowid {
    display: block !important;
 }
 section#focusSectionId{
 padding-left: 30px;
 padding-right: 30px;
 }
 section#applySectionId{
 padding-left: 30px;
 padding-right: 30px;
 }
 section#mobilestepsview{
 padding-left: 30px;
 padding-right: 30px;
 }
 section#pleasesectionId{
 padding-left: 30px;
 padding-right: 30px;
 }
 section#insurancesectionId{
 padding-left: 30px;
 padding-right: 30px;
 }
 .icon.destination-thailand {
    margin-left: 0px !important;
   }
  .icon.destination-united-arab-emirates {
    margin-left: 0px !important;
  }
}
}
@media ( min-width : 600px) {
	div#stepVisarowid {
	    display: flex;
	 }
}
div#stepVisarowid {
    display: flex;
}
@media ( max-width : 768px) {
	.top-content-follow-card-destination {
		width: 50% !important;
	}
	 .icon.destination-thailand {
    margin-left: 0px !important;
}
	.icon.destination-united-arab-emirates {
	    margin-left: 0px !important;
	}
}

.top-content-follow-card-destination {
	width: 30%;
}

p.description-steps-eta-planning {
	font-size: 16px !important;
	color: #1d3367 !important;
	text-align: start !important;
}
</style>

<base href=".">
<style>
.cookie-info-text {
	color: #969696;
}

p.toexpand {
	color: #1d3367;
}

h2.description-steps-h3 {
	color: #1d3367;
}

.destinations-list li a {
	color: #1d3367;
	width: 0px !important;
}

.insurance-banner-section h3 {
	color: #1d3367;
}

.insurance-banner-section p {
	color: #1d3367;
}

.insurance-banner-section .insurance-checklist-wrapper {
	color: #1d3367;
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
	background-color: #1d3367;
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

.description-steps-text {
	text-align: center;
	padding-bottom: 15px;
}



@-webkit-keyframes glowing {
  0% { background-color: #1d3367; -webkit-box-shadow: 0 0 3px #1d3367; }
  50% { background-color: #1d3367; -webkit-box-shadow: 0 0 15px #1d3367; }
  100% { background-color: #1d3367; -webkit-box-shadow: 0 0 3px #1d3367; }
}

@-moz-keyframes glowing {
  0% { background-color: #1d3367; -moz-box-shadow: 0 0 3px #1d3367; }
  50% { background-color: #1d3367; -moz-box-shadow: 0 0 15px #1d3367; }
  100% { background-color: #1d3367; -moz-box-shadow: 0 0 3px #1d3367; }
}

@-o-keyframes glowing {
  0% { background-color: #1d3367; box-shadow: 0 0 3px #1d3367; }
  50% { background-color: #1d3367; box-shadow: 0 0 15px #1d3367; }
  100% { background-color: #1d3367; box-shadow: 0 0 3px #1d3367; }
}

@keyframes glowing {
  0% { background-color: #1d3367; box-shadow: 0 0 3px #1d3367; }
  50% { background-color: #1d3367; box-shadow: 0 0 15px #1d3367; }
  100% { background-color: #1d3367; box-shadow: 0 0 3px #1d3367; }
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
	margin: 10px 10px !important;
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
.icon.destination-thailand {
    margin-left: -143px;
}
.icon.destination-united-arab-emirates {
    margin-left: -144px;
}

.insurance-banner-section .insurance-price {
	color: #1d3367;
}
</style>

</head>
<body>
	<div id="overlay" class="hidden mobileMenuOverlay"></div>
	<%@include file="header.jsp"%>


	<div>
		<section class="applyonline" id="onlineapplysection"
			style="background: url('/images/banner-bg.png'), rgb(33, 55, 106); width: auto; height: 600px;">

			<div class="top-content-follow-card-h2">CHECK VISA REQUIREMENTS</div>
			<h4
				style="color: rgb(176, 143, 111); width: 100%; text-align: center; font-size: 20px;">AND
				APPLY ONLINE</h4>

			<div class="top-content-follow-card-logo" style="margin: auto;"></div>
			<div class="top-content-follow-card-destination"
				style="margin: auto; padding-top: 40px;padding-left:50px;padding-right:50px;">
				<span class="top-content-follow-card-destination-small-text">Your
					Destination</span>
				<div class="drop-down">
					<input type="text" name="noPassword" id="select-country"
						placeholder="Select a country"
						class="initial-input input-drop-down" autocomplete="no">
					<ul class="drop-down-ul display-none"
						style="bottom: initial; max-height: 300px;">

						<li class="drop-down-ul-element"><a href="/en/india"
							class="a-no-active"><span>India</span></a></li>

						<li class="drop-down-ul-element"><a href="/en/turkey"
							class="a-no-active"><span>Turkey</span></a></li>

						<li class="drop-down-ul-element"><a href="/en/pakistan"
							class="a-no-active"><span>Pakistan</span></a></li>

						<li class="drop-down-ul-element"><a href="/en/thailand"
							class="a-no-active"><span>Thailand</span></a></li>

						<li class="drop-down-ul-element"><a
							href="/en/united-arab-emirates" class="a-no-active"><span>United-Arab-Emirates</span></a></li>

					</ul>
				</div>
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
						<h1 id="headsection"
							style="color: #ffff; font-size: 50px; font-weight: 600; text-align: center;">Edocs
							Travel - Electronic Visa Service</h1>

					</div>

					<a href="#onlineapplysection"><button type="button"
							id="applyhere">APPLY ONLINE</button></a>
					<section class="description padding mobile-pt-0" id="focusSectionId">
						<p
							style="color: #1d3367; font-size: 24px; text-align: center; font-weight: 600;">You
							Focus on the Trip, and We are Here to Focus on the Visa Options </p>
						<div class="description-steps">
							<p class="description-steps-eta-planning">We help to serve
								the people after assisting with electronic visa. It comes from
								many countries worldwide. Our company EDOCS Travel allows the
								person to enter anywhere for their targeted location. </p>
							<p class="description-steps-eta-planning">The process of
								applying for the EDOCS Travel with us will get complete within
								15 minutes. You only need a working device having active
								internet access.</p>
							<p class="description-steps-eta-planning">However, EDOCS
								Travel comes for approval much sooner with email. </p>
							<p class="description-steps-eta-planning">We are here to
								handle every situation on your side.</p>
						</div>
					</section>
					<section class="description padding" id="applySectionId">
						<div class="description-steps">
							<div class="d-flex">
								<h2 class="description-steps-h3"  id="edocsAppId">Apply
									For the Visa in 3 Easy Steps </h2>
							</div>
							<div class="stepsdescription" style="margin-bottom: 50px;">
								<p class="description-steps-eta-planning">You can work for
									the device with better internet connections for online
									applications. Please take it according to the particular
									destination and origin of the country.</p>
								<p class="description-steps-eta-planning">Once you make out
									the necessary documents. After this, you must select the
									destination and visit the left-hand bar. You can easily follow
									up on these steps to complete the application process. </p>
							</div>

							<div class="row" id="stepVisarowid">
								<div class="col-sm-4" id="stepscolumn">
									<div class="step-icon step-icon-1"></div>
									<div class="description-steps-text">
										<div>
											<span class="description-steps-text-main">Fill Up The
												Application Form</span>
										</div>
										<span class="description-steps-text-bottom">You need to
											mention the data like email address, aim to visit the
											destination, passport details, and more. One might also make
											out the additional documents as essential. </span>
									</div>
								</div>

								<div class="col-sm-4" id="stepscolumn">
									<div class="step-icon step-icon-2"></div>
									<div class="description-steps-text">
										<div>
											<span class="description-steps-text-main">Register An
												Online Payment</span>
										</div>
										<span class="description-steps-text-bottom">Pay the
											handling for the EDOCS Travel fee for using available methods
											for the online transaction option. Once registered, you can
											make out further payment details. Further make for the next
											step. </span>
									</div>
								</div>

								<div class="col-sm-4" id="stepscolumn">
									<div class="step-icon step-icon-3"></div>
									<div class="description-steps-text">
										<div>
											<span class="description-steps-text-main">Check For
												The Inbox</span>
										</div>
										<span class="description-steps-text-bottom">EDOCS
											Travel will instantly make out approval for the application
											with an email box. Make sure for the email address after the
											application form once you receive it. All of these would come
											without any delay or issues. </span>

									</div>
								</div>
							</div>

							<!-- <p class="description-privacy">
								EDOCS travel is targeted as an independent company. We will
								offer you efficient and professional help for an online trip. We
								are not here associated with the governmental agency with <a
									href="#" rel="nofollow" target="_blank">Privacy Policy</a> and
								<a href="#" rel="nofollow" target="_blank">Terms of Service</a>.
							</p> -->
						</div>
					</section>

			



					<section class="gallery-big padding-rwd" id="mobilestepsview">
						<div class="steps" style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3"id="requirementsectId">Requirements
									to Meet for the EDOCS Travel</h2>
							</div>
							<p class="description-steps-eta-planning"
								style="text-align: center !important;">
								<strong>Before applying</strong>, please make sure that you have
								the following:
							</p>
							<div class="row" style="margin-bottom: 30px;" id="docsRow">
								<div class="col-sm-6">
									<div class="gallery-big-container-description">
										<h3 class="gallery-big-container-description-title">A
											Valid Passport </h3>
										<p class="toexpand">All the candidates should have a valid
											passport for application online. It is advised that you
											should exceed the validity of the visa for up to 6 months. It
											might come with the arrival of the country with the
											destination. </p>
										<span class="arrowText expand">READ MORE</span>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="gallery-big-container requirements-01"></div>
								</div>
							</div>


							<div class="row" style="margin-bottom: 30px;" id="docsRow">

								<div class="col-sm-6">
									<div class="gallery-big-container-description">
										<h3 class="gallery-big-container-description-title">Means
											Of Online Payment </h3>
										<p class="toexpand">You have to make a credit or debit
											card with access to online payment methods. You can handle
											any of it to make EDOCS Travel fees.</p>
										<span class="arrowText expand">READ MORE</span>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="gallery-big-container requirements-02"></div>
								</div>
							</div>

							<div class="row" style="margin-bottom: 30px;" id="docsRow">
								<div class="col-sm-6">
									<div class="gallery-big-container-description">
										<h3 class="gallery-big-container-description-title">An
											Active Email Address </h3>
										<p class="toexpand">Ensure that the email address you
											enter in the form is active. Therefore you can easily access
											the further details. What if it is not functioning? You can
											make out for the EDOCS Travel once after arrival for the
											email box.</p>
										<span class="arrowText expand">READ MORE</span>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="gallery-big-container requirements-03"></div>
								</div>
							</div>
						</div>
						<div class="button-container btn-length"></div>
					</section>

					<section class="description padding" id="pleasesectionId" >
						<div class="description-steps" style="padding: 10px">
							<p class="description-steps-eta-planning">
								<strong>Please note</strong> that it comes with basic
								requirements. Every destination can come with different visa
								requirements before making the application process. You might
								need some for the additional documents or the photograph for
								form details.
							</p>
						</div>
					</section>
					
					<section class="destinations-list-section">
						<div class="d-flex" id="destinationId"
							style="text-align: center; color: #1d3367;">
							<div class="small-line"></div>
							<h2 class="description-steps-h3">Choose your destination
								country</h2>

						</div>
						<ul class="destinations-list"
							style="text-align: center; display: block;">
							<li>
								<div class="icon destination-india">
									<img src="images/india.png" width="70" height="45">
								</div> <a href="/en/india">India</a>
							</li>
							<li>
								<div class="icon destination-turkey">
									<img src="images/turkey.png" width="70" height="45">
								</div> <a href="/en/turkey">Turkey</a>
							</li>
							
							<li>
								<div class="icon destination-pakistan">
									<img src="images/Pakistan.jpg" width="70" height="45">
								</div> <a href="/en/pakistan">Pakistan</a>
							</li>
							<li>
								<div class="icon destination-thailand">
									<img src="images/Thailand.jpg" width="70" height="45">
								</div> <a href="/en/thailand">Thailand</a>
							</li>
								<li>
								<div class="icon destination-united-arab-emirates">
									<img src="images/UAE.jpg" width="70" height="45">
								</div> <a href="/en/united-arad-emirates">UAE</a>
							</li>
						</ul>
						<div class="empty-results-info">No search results</div>
					</section>
					<section class="insurance-banner-section" id="insurancesectionId">
						<div class="container">
							<div class="row">
								<div class="col-sm-8">
									<h3 class="">Get Your Travel Insurance</h3>
									<p class="insurance-banner-description">including COVID-19
										treatment</p>
								</div>
								<div class="col-sm-4">
									<div class="insurance-logo-wrapper">
										<img class="signal-iduna-logo"
											src="images/insurance logo-1.png">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12 col-sm-10 col-lg-8">
									<div class="insurance-checklist-wrapper">
										<ul class="checkList">
											<li>Worldwide coverage</li>
											<li>Cover of medical expenses abroad <b>(including
													COVID-19 infection and quarantine)</b> up to
												250&nbsp;000&nbsp;€
											</li>
											<li>Medical transport</li>
											<li>Chronic disease treatment</li>
											<li>Dental treatment</li>
											<li>Luggage insurance</li>
											<li>Alcohol-related accidents</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="row">
								<div
									class="col-lg-5 col-lg-offset-7 col-md-6 col-md-offset-6 col-sm-6 col-sm-offset-6 col-xs-10 col-xs-offset-1">
									<div class="insurance-price">
										€
										<div id="insuranceBannerPrice">2.90</div>
										(per person per day)
									</div>
									<div class="button-container"
										style="width: fit-content; margin-left: 194px;">
										<a rel="nofollow" href="#">Get your Insurance</a>
									</div>
								</div>
							</div>
						</div>
					</section>
					<script>
						window.priceUrl = '#';
					</script>
				</div>
			</div>
		</div>
	</section>
	<%@include file="footer.jsp"%>
	<script>
		document.querySelector('#select-country').addEventListener(
				'change',
				function() {
					var destinationKey = this.getAttribute('data-key')
							.toLowerCase();
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
	</script>

	<script>
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