<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!-- saved from url=(0022)https://evisa.express/ -->
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" async="" src="/js/ecommerce.js"></script>
<!--  <script type="text/javascript" async="" src="js/hotjar-2876277.js"></script> -->
<script type="text/javascript" async="" src="/js/analytics.js"></script>
<script type="text/javascript" async="" src="/js/analytics.js"></script>
<script async="" src="/js/gtm.js"></script>
<script async="" src="/js/tag.js"></script>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<title>Edocs Travel</title>

<link rel="stylesheet" href="/css/home.css" type="text/css">
<style>
@media ( max-width : 992px) {
	.top-background {
		background-color: #c3b19e;
	}
	
}
@media ( min-width : 1330px) {
section#onlineapplysection {
    margin-left: 60px;
    margin-right: 60px;
 }
	
}

@media ( min-width : 992px) {
	.top-background {
		background-image: url('images/background 2.jpg');
	}
	
}

p.description-steps-eta-planning {
    font-size: 20px !important;
    color: #1d3367 !important;
    text-align: start !important;
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

#stepscolumn{
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

						<li><a href="/en/india" style="color: #1d3367 !important;">India</a></li>

						<li><a href="/en/turkey" style="color: #1d3367 !important;">Turkey</a></li>

					</ul>
				</div></li>
			<li class="toggle-li"><a id="menu-mobile-groups"
				class="mobile-menu-font" href="#" style="color: #1d3367 !important;">Passenger Locator Forms</a></li>
			<li class="toggle-li"><a id="menu-mobile-groups" 
				class="mobile-menu-font" href="#" rel="nofollow" style="color: #1d3367 !important;">Travel
					Insurance</a></li>
			<li class="toggle-li"><a id="menu-mobile-groups"
				class="mobile-menu-font" href="#" style="color: #1d3367 !important;">Check Entry Requirements</a></li>

		</ul>
	</div>

	<div>
		<section class="applyonline" id="onlineapplysection"
			style="background: url(#), rgb(33, 55, 106); width: auto; height: 500px;">

			<div class="top-content-follow-card-h2">CHECK VISA REQUIREMENTS</div>
			<h4 style="    color: rgb(176, 143, 111);width: 100%;text-align: center;font-size: 20px;">AND APPLY ONLINE</h4>

			<div class="top-content-follow-card-logo" style="margin: auto; "></div>
			<div class="top-content-follow-card-destination"
				style="width: 30%; margin: auto; padding-top:40px;">
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

					</ul>
				</div>
			</div>

		</section>
	</div>


	<section class="main-site-content">
		<div class="top-background"></div>
		<div class="container">
			<div class="row" >
				<div class="col-md-4 padding-card">
					<div class="top-content-follow-card follow-card-upper"
						style="display: none;">
						<div class="top-content-follow-card-logo-2"></div>
						<div class="top-content-follow-card-h2">CHECK VISA
							REQUIREMENTS</div>
						<span class="top-content-follow-card-small-text">AND APPLY
							ONLINE</span>
						<div class="top-content-follow-card-logo"></div>
						<div class="top-content-follow-card-destination">
							<span class="top-content-follow-card-destination-small-text">Your
								Destination</span>
							<div class="drop-down">
								<input type="text" name="noPassword" id="select-country"
									placeholder="Select a country"
									class="initial-input input-drop-down" autocomplete="no">
								<ul class="drop-down-ul display-none"
									style="bottom: initial; max-height: 300px;">

									<li class="drop-down-ul-element"><a href="/en/india"
										class="a-no-active"><span data-key="india">India</span></a></li>

									<li class="drop-down-ul-element"><a href="/en/turkey"
										class="a-no-active"><span data-key="turkey">Turkey</span></a></li>

								</ul>
							</div>
						</div>
						<div class="top-content-follow-card-icon"></div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="top-content-text padding">
						<h1 style="color: #ffff; font-size: 50px; font-weight: 600; text-align: center;">Edocs
							Travel - Electronic Visa Service</h1>
						<p style="color: #ffff; font-size: 20px;text-align: center; font-weight: 600;">YOU
							FOCUS ON THE TRIP, AND WE ARE HERE TO FOCUS ON THE VISA OPTIONS </p>
					</div>
					
					<a href="#onlineapplysection"><button type="button" id="applyhere">APPLY ONLINE</button></a>
					<section class="description padding mobile-pt-0">
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
					<section class="description padding">
						<div class="description-steps">
							<div class="d-flex">
								<h2 class="description-steps-h3" style="color: rgb(29 51 103); text-align: center;">APPLY FOR THE VISA IN 3
									EASY STEPS </h2>
							</div>
							<div class="stepsdescription" style="margin-bottom: 50px;">
							<p class="description-steps-eta-planning">You can work for
								the device with better internet connections for online
								applications. Please take it according to the particular
								destination and origin of the country.</p>
							<p class="description-steps-eta-planning">Once you make out
								the necessary documents. After this, you must select the
								destination and visit the left-hand bar. You can easily follow
								up on these steps to complete the application process. 
							</p>
							</div>
							
							<div class="row" style="display: flex;">
							<div class="col-sm-4" id="stepscolumn">
							<div class="step-icon step-icon-1"></div>
							<div class="description-steps-text">
										<span class="description-steps-text-main">Fill Up The
											Application Form</span> 
											
											<span class="description-steps-text-bottom">You
											need to mention the data like email address, aim to visit the
											destination, passport details, and more. One might also make
											out the additional documents as essential. </span>
									</div>
							</div>
							
							<div class="col-sm-4" id="stepscolumn">
							<div class="step-icon step-icon-2"></div>
							<div class="description-steps-text">
										<span class="description-steps-text-main">Register An
											Online Payment</span> 
											<span class="description-steps-text-bottom">Pay
											the handling for the EDOCS Travel fee for using available
											methods for the online transaction option. Once registered,
											you can make out further payment details. Further make for
											the next step. </span>
									</div>
							</div>
							
							<div class="col-sm-4" id="stepscolumn">
							<div class="step-icon step-icon-3"></div>
								<div class="description-steps-text">
										<span class="description-steps-text-main">Check For The Inbox</span> 
										</div>
											<span class="description-steps-text-bottom">EDOCS
											Travel will instantly make out approval for the application
											with an email box. Make sure for the email address after the
											application form once you receive it. All of these would come
											without any delay or issues. </span>
									
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
					
					<section class="gallery-big padding-rwd">
						<div class="steps" style="background-color: #ffffff;">
						<div class="d-flex">
							<div class="small-line"></div>
							<h2 class="description-steps-h3" style="color:#1d3367 !important; text-align: center;">Requirements To Meet For
								The EDOCS Travel</h2>
						</div>
						<p class="description-steps-eta-planning" style="text-align: center !important;">
							<strong>Before applying</strong>, please make sure that you have
							the following:
						</p>
						<div class="row" style="margin-bottom: 30px;"> 
						<div class="col-sm-6">
						<div class="gallery-big-container-description">
							<h3 class="gallery-big-container-description-title">A Valid
								Passport </h3>
							<p class="toexpand">All the candidates should have a valid
								passport for application online. It is advised that you should
								exceed the validity of the visa for up to 6 months. It might
								come with the arrival of the country with the destination. </p>
							<span class="arrowText expand">READ MORE</span>
						</div>
						</div>
						<div class="col-sm-6">
						<div class="gallery-big-container requirements-01"></div>
						</div>
						</div>
						
						
						<div class="row" style="margin-bottom: 30px;">
						<div class="col-sm-6">
						<div class="gallery-big-container requirements-02"></div>
						</div>
						<div class="col-sm-6">
						<div class="gallery-big-container-description">
							<h3 class="gallery-big-container-description-title">Means Of
								Online Payment </h3>
							<p class="toexpand">You have to make a credit or debit card
								with access to online payment methods. You can handle any of it
								to make EDOCS Travel fees.</p>
							<span class="arrowText expand">READ MORE</span>
						</div>
						</div>
						</div>
						
						<div class="row" style="margin-bottom: 30px;">
						<div class="col-sm-6">
						<div class="gallery-big-container-description">
							<h3 class="gallery-big-container-description-title">An
								Active Email Address </h3>
							<p class="toexpand">Ensure that the email address you enter
								in the form is active. Therefore you can easily access the
								further details. What if it is not functioning? You can make out
								for the EDOCS Travel once after arrival for the email box.</p>
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
					<section class="description padding" style="background-color: white;">
						<div class="description-steps" style="margin-top: 25px; padding:10px">
							<p class="description-steps-eta-planning">
								<strong>Please note</strong> that it comes with basic
								requirements. Every destination can come with different visa
								requirements before making the application process. You might
								need some for the additional documents or the photograph for
								form details.
							</p>
						</div>
					</section>
					<!-- <section class="destinations-list-header padding">
						<div class="d-flex">
							<div class="small-line"></div>
							<h2 class="description-steps-h3">Choose your destination
								country</h2>

						</div>
					</section> -->
					<section class="destinations-list-section">
					<div class="d-flex" style="text-align: center; color: #1d3367;">
							<div class="small-line"></div>
							<h2 class="description-steps-h3">Choose your destination
								country</h2>

						</div>
						<ul class="destinations-list" style="text-align: center; display: block;">
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
						</ul>
						<div class="empty-results-info">No search results</div>
					</section>
					<section class="insurance-banner-section">
						<div class="container">
							<div class="row">
								<div class="col-sm-8">
									<h3 class="">GET YOUR TRAVEL INSURANCE</h3>
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
									<div class="button-container" style="width: fit-content; margin-left: 194px;">
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

	<script src="js/home.js"></script>
	<script src="js/select2.min.js"></script>
	<script>
	
         document.querySelector('#select-country').addEventListener('change', function () {
             var destinationKey = this.getAttribute('data-key').toLowerCase();
             if (destinationKey !== null) {
                 window.location.href = '/en/india'.replace("india", destinationKey);
             }
         }); 
         
      </script>
	<script>
         function toggleExpandText(expand)
         {
             if ($('.toexpand').hasClass('expanded')) {
                 expand.innerText = "READ LESS"
             } else {
                 expand.innerText = "READ MORE"
             }
         }
         document.addEventListener('DOMContentLoaded', function () {
             var suffix = document.querySelector('.insert-number-with-suffix').dataset.suffix;
             var insertNumberWithSuffix = document.querySelectorAll('.insert-number-with-suffix');
             for (var i = 0; i < insertNumberWithSuffix.length; i++) {
                 insertNumberWithSuffix[i].setAttribute('href', 'tel:+44 2031 293 603'.replace(/ /g, ""));
                 insertNumberWithSuffix[i].innerHTML = '<span class="phone-lang-name">en</span> +44 2031 293 603 ' + suffix;
             }
         
             var insertNumber = document.querySelectorAll('.insert-number');
             for (var i = 0; i < insertNumber.length; i++) {
                 insertNumber[i].setAttribute('href', 'tel:+44 2031 293 603'.replace(/ /g, ""));
                 insertNumber[i].innerHTML = '<span class="phone-lang-name">en</span> +44 2031 293 603';
             }
         
             const req = new XMLHttpRequest();
             req.open('POST', '/ajax/get-support-address.json', true);
             req.onreadystatechange = function (evt) {
                 if (req.readyState == 4) {
                     if (req.status == 200) {
                         var insertSupportAddress = document.querySelectorAll('.insert-support-address');
                         for (var i = 0; i < insertSupportAddress.length; i++) {
                             insertSupportAddress[i].innerText = JSON.parse(req.responseText).email.replace('[]', '@');
                             insertSupportAddress[i].setAttribute('href', 'mailTo:' + (JSON.parse(req.responseText).email.replace('[]', '@')));
                         }
                     }
                 }
             }
             req.send();
                             var insertPhone = document.querySelectorAll('.insert-phone-' + 1);
             for (var i = 0; i < insertPhone.length; i++) {
                 insertPhone[i].setAttribute('href', 'tel:+49 30209930611'.replace(/ /g, ""));
                 insertPhone[i].innerHTML = '<span class="phone-lang-name">de</span> +49 30209930611';
             }
                             var insertPhone = document.querySelectorAll('.insert-phone-' + 2);
             for (var i = 0; i < insertPhone.length; i++) {
                 insertPhone[i].setAttribute('href', 'tel:+48 32 431 00 11'.replace(/ /g, ""));
                 insertPhone[i].innerHTML = '<span class="phone-lang-name">pl</span> +48 32 431 00 11';
             }
                             var insertPhone = document.querySelectorAll('.insert-phone-' + 3);
             for (var i = 0; i < insertPhone.length; i++) {
                 insertPhone[i].setAttribute('href', 'tel:+34  932 200 330'.replace(/ /g, ""));
                 insertPhone[i].innerHTML = '<span class="phone-lang-name">es</span> +34  932 200 330';
             }
                             var insertPhone = document.querySelectorAll('.insert-phone-' + 4);
             for (var i = 0; i < insertPhone.length; i++) {
                 insertPhone[i].setAttribute('href', 'tel:+86 10 852 41 270'.replace(/ /g, ""));
                 insertPhone[i].innerHTML = '<span class="phone-lang-name">cn</span> +86 10 852 41 270';
             }
                         });
      </script>

	<script>
         var languages = {
                         'en': 'https://evisa.express/',
             'de': 'https://evisa.express/de',
                         'en': 'https://evisa.express/',
             'pl': 'https://evisa.express/pl',
                         'en': 'https://evisa.express/',
             'es': 'https://evisa.express/es',
                         'en': 'https://evisa.express/',
             'cn': 'https://evisa.express/cn',
                     }

         window.onscroll = function() {scrollFunction()};

         function scrollFunction() {
            
             var mybutton = document.getElementById("applyhere");
        	  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        	    mybutton.style.display = "block";
        	  } else {
        	    mybutton.style.display = "none";
        	  }
        	}
         
      </script>
</body>
</html>