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
<link rel="stylesheet" href="/css/termsandcondition.css" type="text/css">
<link rel="icon" href="/images/favicon-1.png" type="image/x-icon">
<style>
@media ( max-width : 599px) {
}

@media ( min-width : 599px) {
	background-image
	:url
	('/images/background2
	.jpg
	');
	

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

#formprocesslist {
	margin-left: 60px;
	margin-right: 60px;
	color: #1d3367;
}

description-steps {
	text-align: justify;
	padding-bottom: 30px;
	padding-top: 30px;
	padding-left: 20px;
	padding-right: 20px;
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
@
-webkit-keyframes glowing { 0% {
	background-color: #1d3367;
	-webkit-box-shadow: 0 0 3px #1d3367;
}

50%
{
background-color
:
#FF0000
;


-webkit-box-shadow
:
0015px


#FF0000




;
}
100%
{
background-color




:




#B20000



;
-webkit-box-shadow



:



0
0
3
px





#B20000




;
}
}
@
-moz-keyframes glowing { 0% {
	background-color: #1d3367;
	-moz-box-shadow: 0 0 3px #1d3367;
}

50%
{
background-color



:


#FF0000


;
-moz-box-shadow



:




0
0
15
px




#FF0000





;
}
100%
{
background-color



:




#B20000



;
-moz-box-shadow



:






0
0
3
px




#B20000



;
}
}
@
-o-keyframes glowing { 0% {
	background-color: #1d3367;
	box-shadow: 0 0 3px #1d3367;
}

50%
{
background-color
:
#FF0000
;


box-shadow
:
0015px



#FF0000
;
}
100%
{
background-color
:
;


box-shadow
:
003px


#B20000


;
}
}
@
keyframes glowing { 0% {
	background-color: #1d3367;
	box-shadow: 0 0 3px #1d3367;
}

50%
{
background-color
:
#FF0000
;


box-shadow
:
0015px



#FF0000
;


}
100%
{
background-color
:
#B20000
;


box-shadow
:
003px



#B20000
;


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
			style="background-image: url('/images/termsandcondition.jpg'); width: auto; height: 500px;">




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
							style="color: #ffff; font-size: 50px; font-weight: 600; text-align: center;">Terms
							of Service</h1>


					</div>



					<section class="description padding mobile-pt-0" id="sectionId">

						<p class="description-steps-eta-planning" style="font-weight: 700; font-size: 18px;">Welcome to
							edocs.travel!</p>

						<p class="description-steps-eta-planning">These terms and conditions outline the rules and
							regulations for the use of Edocs Travel's Website, located at
							<a href="https://www.edocs.travel/"><b style="color: #184ec7;s">www.edocs.travel</b></b></a></p>

						<p class="description-steps-eta-planning">By accessing this website we assume you accept these terms
							and conditions. Do not continue to use edocs.travel if you do not
							agree to take all of the terms and conditions stated on this
							page.</p>

						<p class="description-steps-eta-planning">The following terminology applies to these Terms and
							Conditions, Privacy Statement and Disclaimer Notice and all
							Agreements: "Client", "You" and "Your" refers to you, the person
							log on this website and compliant to the Company’s terms and
							conditions. "The Company", "Ourselves", "We", "Our" and "Us",
							refers to our Company. "Party", "Parties", or "Us", refers to
							both the Client and ourselves. All terms refer to the offer,
							acceptance and consideration of payment necessary to undertake
							the process of our assistance to the Client in the most
							appropriate manner for the express purpose of meeting the
							Client’s needs in respect of provision of the Company’s stated
							services, in accordance with and subject to, prevailing law of
							Netherlands. Any use of the above terminology or other words in
							the singular, plural, capitalization and/or he/she or they, are
							taken as interchangeable and therefore as referring to same.</p>

						<h3>
							<strong class="description-steps-eta-planning" style="font-weight: 600;">Cookies</strong>
						</h3>

						<p class="description-steps-eta-planning">We employ the use of cookies. By accessing edocs.travel,
							you agreed to use cookies in agreement with the Edocs Travel's
							Privacy Policy.</p>

						<p class="description-steps-eta-planning"> Most interactive websites use cookies to let us retrieve
							the user’s details for each visit. Cookies are used by our
							website to enable the functionality of certain areas to make it
							easier for people visiting our website. Some of our
							affiliate/advertising partners may also use cookies.</p>

						<h3>
							<strong class="description-steps-eta-planning" style="font-weight: 600;">License</strong>
						</h3>

						<p class="description-steps-eta-planning">Unless otherwise stated, Edocs Travel and/or its licensors
							own the intellectual property rights for all material on
							edocs.travel. All intellectual property rights are reserved. You
							may access this from edocs.travel for your own personal use
							subjected to restrictions set in these terms and conditions.</p>

						<p  class="description-steps-eta-planning" style="font-weight: 700; font-size: 18px;">You must not:</p>
						<ul class="description-steps-eta-planning" style="list-style-type: disc;">
							<li>Republish material from edocs.travel</li>
							<li>Sell, rent or sub-license material from edocs.travel</li>
							<li>Reproduce, duplicate or copy material from edocs.travel</li>
							<li>Redistribute content from edocs.travel</li>
						</ul>

						<p class="description-steps-eta-planning">
							This Agreement shall begin on the date hereof. Our Terms and
							Conditions were created with the help of the <a
								href="https://www.termsandconditionsgenerator.com/">Free
								Terms and Conditions Generator</a>.
						</p>

						<p class="description-steps-eta-planning">Parts of this website offer an opportunity for users to
							post and exchange opinions and information in certain areas of
							the website. Edocs Travel does not filter, edit, publish or
							review Comments prior to their presence on the website. Comments
							do not reflect the views and opinions of Edocs Travel,its agents
							and/or affiliates. Comments reflect the views and opinions of the
							person who post their views and opinions. To the extent permitted
							by applicable laws, Edocs Travel shall not be liable for the
							Comments or for any liability, damages or expenses caused and/or
							suffered as a result of any use of and/or posting of and/or
							appearance of the Comments on this website.</p>

						<p class="description-steps-eta-planning">Edocs Travel reserves the right to monitor all Comments and
							to remove any Comments which can be considered inappropriate,
							offensive or causes breach of these Terms and Conditions.</p>

						<p class="description-steps-eta-planning" style="font-weight: 700; font-size: 18px;">You warrant and represent that:</p>

						<ul class="description-steps-eta-planning" style="list-style-type: disc;">
							<li>You are entitled to post the Comments on our website and
								have all necessary licenses and consents to do so;</li>
							<li>The Comments do not invade any intellectual property
								right, including without limitation copyright, patent or
								trademark of any third party;</li>
							<li>The Comments do not contain any defamatory, libelous,
								offensive, indecent or otherwise unlawful material which is an
								invasion of privacy</li>
							<li>The Comments will not be used to solicit or promote
								business or custom or present commercial activities or unlawful
								activity.</li>
						</ul>

						<p class="description-steps-eta-planning">You hereby grant Edocs Travel a non-exclusive license to
							use, reproduce, edit and authorize others to use, reproduce and
							edit any of your Comments in any and all forms, formats or media.</p>

						<h3>
							<strong class="description-steps-eta-planning" style="font-weight: 600;">Hyperlinking to our Content</strong>
						</h3>

						<p class="description-steps-eta-planning">The following organizations may link to our Website without
							prior written approval:</p>

						<ul class="description-steps-eta-planning" style="list-style-type: disc;">
							<li>Government agencies;</li>
							<li>Search engines;</li>
							<li>News organizations;</li>
							<li>Online directory distributors may link to our Website in
								the same manner as they hyperlink to the Websites of other
								listed businesses; and</li>
							<li>System wide Accredited Businesses except soliciting
								non-profit organizations, charity shopping malls, and charity
								fundraising groups which may not hyperlink to our Web site.</li>
						</ul>
					</section>


					<section class="applyonline" id="lastsectiononlineapply"
						style="background: url('/images/banner-bg.png'), rgb(33, 55, 106); width: auto; height: 425px; margin-bottom: 50px;">

						<div class="top-content-follow-card-h2">CHECK VISA
							REQUIREMENTS</div>
						<h4
							style="color: rgb(176, 143, 111); width: 100%; text-align: center; font-size: 20px;">AND
							APPLY ONLINE</h4>


						<div class="top-content-follow-card-destination"
							style="margin: auto; text-align: center;">
							<span class="top-content-follow-card-destination-small-text">Your
								Destination</span>
							<div class="drop-down">
								<input type="text" name="noPassword" id="select-country"
									placeholder="Select a country"
									class="initial-input input-drop-down" autocomplete="no">
								<ul class="drop-down-ul display-none"
									style="bottom: initial; max-height: 300px;">
									<li class="drop-down-ul-element"><a href="/en/india"
										class="a-no-active"> <span>India</span>
									</a></li>
									<li class="drop-down-ul-element"><a href="/en/turkey"
										class="a-no-active"> <span>Turkey</span>
									</a></li>
									<li class="drop-down-ul-element"><a href="/en/pakistan"
										class="a-no-active"> <span>Pakistan</span>
									</a></li>
									<li class="drop-down-ul-element"><a href="/en/thailand"
										class="a-no-active"> <span>Thailand</span>
									</a></li>
									<li class="drop-down-ul-element"><a
										href="/en/united-arab-emirates" class="a-no-active"> <span>United-Arab-Emirates</span>
									</a></li>
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
					var destinationKey = this.getAttribute('data-key')
							.toLowerCase();
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
