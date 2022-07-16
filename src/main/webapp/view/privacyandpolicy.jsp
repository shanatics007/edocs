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
<link rel="stylesheet" href="/css/privacyandpolicy.css" type="text/css">
<link rel="icon" href="/images/favicon-1.png" type="image/x-icon">
<style>
@media ( max-width : 599px) {
}

@media ( min-width : 599px) {
	background-image
	
	:

	url

	('/
	images
	/background
	
	2
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
box-shadow


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
box-shadow

:

0
0
3
px

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
			style="background-image: url('/images/privacyandpolicy.jpg'); width: auto; height: 500px;">

			
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
							style="color: #ffff; font-size: 50px; font-weight: 600; text-align: center;">
							Privacy Policy for Edocs Travel</h1>

					</div>
				

					
					<section class="gallery-big padding-rwd"
						style="margin: 35px 0px 0px 0px !important">
						<div class="steps" id="typesetpedvisa"
							style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3"
									style="color: #1d3367 !important; text-align: center; font-weight: 600;padding-top: 50px;">
									</h2>
							</div>
							<p class="description-steps-eta-planning" id="paddingId">					   					    
								At edocs.travel, accessible from <a href="https://www.edocs.travel/"><b style="color: #184ec7;s">www.edocs.travel</b></b></a> one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by edocs.travel and how we use it.</p>
							<p  class="description-steps-eta-planning" id="paddingId">If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p>

							<p  class="description-steps-eta-planning" id="paddingId">This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in edocs.travel. This policy is not applicable to any information collected offline or via channels other than this website. Our Privacy Policy was created with the help of the <a href="https://www.privacypolicygenerator.info/">Free Privacy Policy Generator</a>.</p>
							<h2 class="description-steps-eta-planning" id="AddingForCSSH2">Consent</h2>

							<p class="description-steps-eta-planning" id="paddingId">By using our website, you hereby consent to our Privacy
								Policy and agree to its terms.</p>

							<h2 class="description-steps-eta-planning" id="AddingForCSSH2">Information we collect</h2>
							
							<p class="description-steps-eta-planning" id="paddingId">The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p>
<p class="description-steps-eta-planning" id="paddingId">If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p>
<p class="description-steps-eta-planning" id="paddingId">When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p>

				<h2 class="description-steps-eta-planning" id="AddingForCSSH2">How we use your information</h2>

<p class="description-steps-eta-planning" id="paddingId">We use the information we collect in various ways, including to:</p>

							<ul class="description-steps-eta-planning" id="edocsList">
								<li>Provide, operate, and maintain our website</li>
								<li>Improve, personalize, and expand our website</li>
								<li>Understand and analyze how you use our website</li>
								<li>Develop new products, services, features, and
									functionality</li>
								<li>Communicate with you, either directly or through one of
									our partners, including for customer service, to provide you
									with updates and other information relating to the website, and
									for marketing and promotional purposes</li>
								<li>Send you emails</li>
								<li>Find and prevent fraud</li>
							</ul>

							<h2 class="description-steps-eta-planning" id="AddingForCSSH2">Log Files</h2>

<p class="description-steps-eta-planning" id="paddingId">edocs.travel follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users' movement on the website, and gathering demographic information.</p>




<h2 class="description-steps-eta-planning" id="AddingForCSSH2">Advertising Partners Privacy Policies</h2>

<P class="description-steps-eta-planning" id="paddingId">You may consult this list to find the Privacy Policy for each of the advertising partners of edocs.travel.</p>

<p class="description-steps-eta-planning" id="paddingId">Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on edocs.travel, which are sent directly to users' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p>

<p class="description-steps-eta-planning" id="paddingId">Note that edocs.travel has no access to or control over these cookies that are used by third-party advertisers.</p>

<h2 class="description-steps-eta-planning" id="AddingForCSSH2">Third Party Privacy Policies</h2>

<p class="description-steps-eta-planning" id="paddingId">edocs.travel's Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options. </p>

<p class="description-steps-eta-planning" id="paddingId">You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers' respective websites.</p>

<h2 class="description-steps-eta-planning" id="AddingForCSSH2">CCPA Privacy Rights (Do Not Sell My Personal Information)</h2>

<p class="description-steps-eta-planning" id="paddingId">Under the CCPA, among other rights, California consumers have the right to:</p>
<p class="description-steps-eta-planning" id="paddingId">Request that a business that collects a consumer's personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p>
<p class="description-steps-eta-planning" id="paddingId">Request that a business delete any personal data about the consumer that a business has collected.</p>
<p class="description-steps-eta-planning" id="paddingId">Request that a business that sells a consumer's personal data, not sell the consumer's personal data.</p>
<p class="description-steps-eta-planning" id="paddingId">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>

<h2 class="description-steps-eta-planning" id="AddingForCSSH2">GDPR Data Protection Rights</h2>

<p class="description-steps-eta-planning" id="paddingId">We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p>
<p class="description-steps-eta-planning" id="paddingId">The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.</p>
<p class="description-steps-eta-planning" id="paddingId">The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p>
<p class="description-steps-eta-planning" id="paddingId">The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</p>
<p class="description-steps-eta-planning" id="paddingId">The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.</p>
<p class="description-steps-eta-planning" id="paddingId">The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.</p>
<p class="description-steps-eta-planning" id="paddingId">The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p>
<p class="description-steps-eta-planning" id="paddingId">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>

<h2 class="description-steps-eta-planning" id="AddingForCSSH2">Children's Information</h2>

<p class="description-steps-eta-planning" id="paddingId">Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p>

<p class="description-steps-eta-planning" id="paddingId" style="padding-bottom: 50px;">edocs.travel does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>
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
					<ul class="drop-down-ul display-none" style="bottom: initial; max-height: 180px;">
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

					<!-- <section class="gallery-big padding-rwd">
						<div class="steps" id="evisasample"
							style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3" style="font-weight: 600;">Indian
									e-Visa Sample</h2>
							</div>
							<p id="samplevisapara"
								style="color: #1d3367; margin-right: 50px; font-size: 18px; margin-left: 50px;">
								The following document is an <b>India e-Visa sample</b> that is
								presented below to give you an insight on how will the entry
								permit look like once you receive it.
							</p>
							<p class="visa-questions-description"
								style="padding-bottom: 50px; margin: auto; width: 50%">
								<img alt="India e-Visa" src="/images/india-evisa.png"
									style="width: 100%; height: 100%;">
							</p>
						</div>
					</section>
 -->
					<!-- <section class="gallery-big padding-rwd" id="documentvisa"
						style="background-color: #ffff;">
						<div class="d-flex">
							<div class="small-line">
								<strong>&nbsp;</strong>
							</div>
							<h2 class="description-steps-h3" style="font-weight: 600;">Required
								Documents</h2>
							<p class="visa-questions-description" id="documentrequiredId"
								style="color: #1d3367; margin-right: 50px; font-size: 18px; margin-left: 50px;">
								Citizens of the eligible countries&nbsp;are required to attach <strong>the
									following documents</strong> to their applications:
							</p>
						</div>
						<ul class="toggle-box">
							<li class="toggle-li">
								<h3 class="visa-questions-click toggle-click-closed">The
									e-Tourist visa</h3>
								<div class="height" style="width: 100%">
									<p class="visa-questions-description">
										– a photo of the <strong>bio-data page</strong> of the
										applicant's passport<br> – a&nbsp;<strong>photograph
											of the applicant's face</strong>&nbsp;that can be taken using a phone
										or a PC camera
									</p>
								</div>
							</li>
							<li class="toggle-li">
								<h3 class="visa-questions-click toggle-click-closed">The
									e-Business visa</h3>
								<div class="height">
									<p class="visa-questions-description">
										– a photo of the&nbsp;<strong>bio-data page</strong> of the
										applicant's passport<br> – a&nbsp;<strong>photograph
											of the applicant's face</strong>&nbsp;that can be taken using a phone
										or a PC camera<br> – a&nbsp;<strong>letter of
											invitation </strong>or a<strong> business card </strong>from the
										company the applicant plans to cooperate with
									</p>
								</div>
							</li>
							<li class="toggle-li">
								<h3 class="visa-questions-click toggle-click-closed">The
									e-Student visa</h3>
								<div class="height">
									<p class="visa-questions-description">
										– a photo of the <strong>bio-data page</strong> of the
										applicant's passport<br> – a&nbsp;<strong>photograph
											of the applicant's face</strong> that can be taken using a phone or a
										PC camera<br> – a&nbsp;<strong>written document
										</strong>from the institution confirming cooperation and providing
										basic details of the stay length and type of education that
										the applicant is going to undergo
									</p>
								</div>
							</li>
						</ul>
					</section> -->

					<!-- <section class="required-documents padding"
						style="padding-bottom: 0px;">
						<div class="d-flex">
							<div class="small-line">
								<strong>&nbsp;</strong>
							</div>
							<h2 class="description-steps-h3" style="font-weight: 600;">Important
								Information</h2>
							<ul id="imponoticevisa">
								<li>applicants' passports <strong>must
										stay&nbsp;valid for at least six months</strong> from the intended date
									of arrival in India
								</li>
								<li>the Indian e-Visa <strong>does not entitle you
										to seek or hold employment in India</strong></li>
								<li>an e-Visa to&nbsp;India&nbsp;<strong>cannot be
										extended</strong></li>
								<li>the electronic visa for India is digitally linked to
									the passport of the holder; <strong>any change in
										your&nbsp;passport results in the online visa&nbsp;becoming
										invalid</strong>. In other words, if your passport expires or is
									updated, you must apply for a new entry permit.
								</li>
								<li>the online Indian visa processing time&nbsp;can take <strong>up
										to&nbsp;72 hours</strong> (3 business days); however, the average time
									of approval when using our services is just <strong>51&nbsp;hours</strong>
									<ul></ul>
								</li>
							</ul>
						</div>
					</section> -->
<!-- 
					<section class="benefits-of-evisa padding"
						style="margin-bottom: 50px;">
						<div class="description-steps">
							<div class="d-flex">
								<div class="small-line"></div>
								<h3 class="description-steps-h3"
									style="font-weight: 600; padding-top: 30px;">Benefits of
									Evisa Express</h3>
							</div>
							<ul class="description-steps-ul">
								<li class="description-steps-ul-step display-flex"
									style="display: block !important;">
									<div class="step-icon step-icon-1"
										style="margin: auto; background-image: url(/images/easy-application-process.png);"></div>
									<div class="description-steps-text" style="margin: auto;">
										<span class="description-steps-text-main">Easy
											application process</span><span
											class="description-steps-text-bottom"
											style="text-align: center;">There are three easy steps
											to get your e-Visa to India. Any issues during the
											application process can be addressed by contacting our
											support team</span>
									</div>
								</li>
								<li class="description-steps-ul-step display-flex"
									style="display: block !important;">
									<div class="step-icon step-icon-2"
										style="margin: auto; background-image: url(/images/qualified-team-of-experts.png);"></div>
									<div class="description-steps-text" style="margin: auto;">
										<span class="description-steps-text-main padding-right50">Qualified
											team of experts</span> <span class="description-steps-text-bottom"
											style="text-align: center;">A qualified team oversees
											the processing of each and every application</span>
									</div>
								</li>
								<li class="description-steps-ul-step display-flex"
									style="display: block !important;">
									<div class="step-icon step-icon-3"
										style="margin: auto; background-image: url(/images/guarantee-of-service.png);"></div>
									<div class="description-steps-text" style="margin: auto;">
										<span class="description-steps-text-main">Guarantee of
											service</span><span class="description-steps-text-bottom"
											style="text-align: center;">If an application is
											unable to be processed, reimbursement is provided according
											to the conditions set out by our Terms of Service</span>
									</div>
								</li>
							</ul>

						</div>
					</section> -->


<!-- 
					<section class="description padding"
						style="margin-bottom: 50px; background: #ffffff;">
						<div class="description-steps" style="padding-bottom: 50px;">
							<div class="d-flex">
								<h2 class="description-steps-h3"
									style="color: rgb(29, 51, 103); text-align: center; font-weight: 600; padding-bottom: 50px;">
									Three easy steps to get your e-Visa</h2>
							</div>

							<div class="row" style="display: flex;">
								<div class="col-sm-4" id="stepscolumn">
									<div class="step-icon step-icon-1"></div>
									<div class="description-steps-text">
										<div id="stepshead">
											<span class="description-steps-text-main">Fill Up The
												Application Form</span>
										</div>
										<div id="stepsparagraph">
											<span class="description-steps-text-bottom">You need
												to mention the data like email address, aim to visit the
												destination, passport details, and more. One might also make
												out the additional documents as essential.&nbsp;</span>
										</div>
									</div>
								</div>

								<div class="col-sm-4" id="stepscolumn">
									<div class="step-icon step-icon-2"></div>
									<div class="description-steps-text">
										<div id="stepshead">
											<span class="description-steps-text-main">Register An
												Online Payment</span>
										</div>
										<div id="stepsparagraph">
											<span class="description-steps-text-bottom">Pay the
												handling for the EDOCS Travel fee for using available
												methods for the online transaction option. Once registered,
												you can make out further payment details. Further make for
												the next step.&nbsp;</span>
										</div>
									</div>
								</div>

								<div class="col-sm-4" id="stepscolumn">
									<div class="step-icon step-icon-3"></div>
									<div class="description-steps-text">
										<div id="stepshead">
											<span class="description-steps-text-main">Check For
												The Inbox</span>
										</div>
										<div id="stepsparagraph">
											<span class="description-steps-text-bottom">EDOCS
												Travel will instantly make out approval for the application
												with an email box. Make sure for the email address after the
												application form once you receive it. All of these would
												come without any delay or issues.&nbsp;</span>
										</div>
									</div>
								</div>
							</div>


						</div>
					</section> -->



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