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
							Privacy Policy</h1>

					</div>
					<div class="description-steps">
				<p class="description-steps-eta-planning"style="color: #ffff; font-size: 18px; font-weight: 600; text-align: center;">							
								We know how important is security of your data so</p>
				<p class="description-steps-eta-planning"style="color: #ffff; font-size: 18px; font-weight: 600; text-align: center;">							
								we attach great importance
								to the highest quality security standards.  </p>
						</div>

					<!-- <section class="description padding mobile-pt-0"
						style="background-color: #ffff; padding: 50px;">
						<div class="top-content-text padding">

							<h1 id="privacyId">Privacy Policy</h1>

						</div>

						<div class="description-steps">
							<p class="description-steps-eta-planning">We know how
								important is security of your data so we attach great importance
								to the highest quality security standards.  </p>
						</div>
					</section> -->
					<!-- <section class="description padding"
						style="padding: 50px; background: #ffff;">
						<div class="description-steps">
							<div class="d-flex">
								<h2 class="description-steps-h3"
									style="color: rgb(29, 51, 103); text-align: center;">
									IMPORTANT UPDATE </h2>
							</div>
							<div class="stepsdescription">
								<p class="description-steps-eta-planning">
									Since 27th of March, 2022, all travelers planning to visit
									India must complete <a href="#"> the Air Suvidha Self
										Declaration Form.</a>
								</p>
								<p class="description-steps-eta-planning">Complete the
									Indian health declaration online within 72 hours from the
									planned departure to India to receive a PDF confirmation via
									email.</p>

								<p class="description-steps-eta-planning">Completing the Air
									Suvidha Self Declaration Form is mandatory and the confirmation
									of its completion will be checked at the border.</p>


							</div>

						</div>
					</section> -->

					<section class="gallery-big padding-rwd"
						style="margin: 35px 0px 0px 0px !important">
						<div class="steps" id="typesetpedvisa"
							style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3"
									style="color: #1d3367 !important; text-align: center; font-weight: 600;padding-top: 50px;">
									Information about the processing of personal data</h2>
							</div>
							<p class="description-steps-eta-planning" id="paddingId">					   					    
								To comply with the obligations arising from the Regulation (EU) 2016/679
								of the European Parliament and the Council of 27th April 2016 on
								protection of natural persons in relation to the processing of
								personal data and on free flow of such data and repealing
								Directive 95/46/EC (General Data Protection Regulation)
								hereinafter referred to as GDPR, INTERNATIONAL VISA SERVICE
								Limited Liability Company Limited Partnership with the
								registered office in Katowice, ul. Graniczna 29 (29 Graniczna
								St.), 40-017 Katowice, NIP: 9542766476, REGON: 364718356,
								entered by the Katowice-Wschód District Court in Katowice, 8th
								Commercial Division, under KRS number 0000623079 (hereinafter
								referred to as IVS), informs about the processing of the
								client's personal data and the rights the client is entitled to.
								The following rules are applicable as of May 25th, 2018.</p>

							<ul id="typesvisalist"
								style="padding-left: 100px; padding-right: 100px; padding-bottom: 50px; color: #1d3367;list-style-type: none;">
								<li>
									<h4 id="personalId">
										1.The controller of the personal data</h4>
										
									<p>INTERNATIONAL VISA SERVICE Limited Liability Company
										Limited Partnership with the registered office in Katowice,
										ul. Graniczna 29 (29 Graniczna St.), 40-017 Katowice, NIP:
										9542766476, REGON: 364718356, entered by the Katowice-Wschód
										District Court in Katowice, 8th Commercial Division, under KRS
										number 0000623079 is the controller of the personal data
										Telephone number: +44 2031 293 603 E-mail address:
										support@edocs.travel.</p>

								</li>
								<li>
									<h4 id="dataproId">
										2.Data protection officer</h4>
									<p>Aleksander Posmyk is the data protection officer at IVS,
										telephone +44 2031 293 603.</p>
								</li>
								<!-- <li>
									<h3 style="font-size: 20px; color: #1d3367; font-weight: 600;">
										Employment Visatypes Of Indian Visa</h3>
									<p>
										Any applicants who wish to work in India can obtain an <b>employment
											visa.</b> Application for employment vis must be accompanied by
										an appointment letter, employment contract and proof of
										registration of company/entity in India. Employment visa is
										provided for a period of one year, with provision for
										extension. The maximum period for an employment visa is five
										years from the date of issue of visa.
									</p>
								</li> -->
								<li>
									<h4 id="personalId">
										3.Purpose and legal basis of data processing</h4>
									<p>IVS processes personal data for the purpose of executing
										a contract to which the person whose data are processed is a
										party, or to take actions at the request of the data subject
										before concluding the contract (Article 6 par. 1 letter b of
										the GDPR).</p>
									<p>In certain situations, IVS may process personal data due
										to the need to comply with legal obligations to which IVS is
										subject (Article 6 par. 1 letter c of the GDPR), or the
										processing is necessary to protect the vital interests of the
										data subject or another natural person (Article 6 par. 1
										letter d of the GDPR), or processing is necessary for the
										purposes of the legitimate interests pursued by IVS (Article 6
										par. 1 letter f of the GDPR), in particular, for the purpose
										related to:</p>
									<ul id="privacyId">
										<li>marketing of IVS products and services,</li>
										<li>monitoring and improvement of the quality of services
											provided by IVS, including monitoring of telephone
											conversations and meetings, carrying out customer
											satisfaction surveys of services provided,</li>
										<li>if applicable, the conduct of disputable proceedings,
											as well as proceedings before public authorities and other
											proceedings, including carrying on enquiry and defence
											against claims.</li>
									</ul>
									<p>In all other situations, personal data are processed
										solely on the basis of the consent granted for the purpose
										specified in its content (Article 6 par. 1 letter a of the
										GDPR).</p>
									<p>In all situations, sensitive personal data are processed
										solely on the basis of the consent granted for the purpose
										specified in its content (Article 9 par. 2 letter a of the
										GDPR).</p>
								</li>

								<li>
									<h4 id="personalId">
										4.Recipients of data</h4>
									<p>IVS discloses or may disclose personal data to the
										following recipients or categories of recipients, in
										particular to:</p>
									<ul id="RecipId">
										<li>public authorities and relevant state offices,
											competent to process visa applications and to issue visas;</li>
										<li>entities that participate in the processes necessary
											to perform contracts concluded with clients, including banks,
											credit card operators, electronic and online payment agents,</li>
										<li>entities which support IVS in business processes,
											including in particular entities processing personal data for
											IVS (so-called data processors),inter alia:</li>
										<li>hosting companies,</li>
										<li>legal services and accounting services,</li>
										<li>companies and external entities carrying out
											processes which are a part of the activities necessary to
											conclude the contract with a client.</li>

									</ul>
								</li>
								<li>
									<h4 id="personalId">
										5.Time of data processing</h4>

									<p>The client's personal data, including sensitive data
										provided on the basis of consent, are processed by IVS for the
										time necessary to achieve the objectives indicated in point 3,
										that is, until the contract is concluded. After that period,
										IVS may process the client's data for a period of time and to
										the extent specified by law or for the pursuit of the
										legitimate interest of the controller as in point. 3, however,
										no longer than 10 years. Insensitive data processed on the
										basis of separate consent shall be kept until the consent is
										withdrawn.</p>

									<h3 id="personalId">
										6. The rights of data subjects</h3>

									<p>IVS guarantees all clients exercise of the data subject
										rights granted by the GDPR, including in particular:</p>

									<ul id="subjectId">
										<li>The right to access the personal data;</li>
										<li>The right to request correction of the personal data
											which are incorrect and the right to request supplementing of
											the incomplete personal data,</li>
										<li>The right to request erasure of the personal data
											("the right to be forgotten"), when:</li>
							
									</ul>
									<ul id="dataId">
									<li>The personal data are no longer necessary for the
											purposes for which they have been collected or otherwise
											processed;</li>
										<li>The data subject objects to the processing;</li>
										<li>The personal data have been unlawfully processed;</li>
										<li>The data subject has withdrawn the consent on which the processing is 
										based and there is no other legal ground for processing;</li>
										<li>The personal data have to be erased for compliance with a legal obligation provided by law</li>
										<li>The personal data have been collected in relation to the offer of
										 information society services.</li>
									</ul>
									<ul>
									<li>The right to request restriction of processing of the personal data when:</li>
									<li>The data subject challenges correctness of the personal data;</li>
									<li>The processing is unlawful and the data subject opposes to erasure of 
									the personal data, requesting to limit their use instead;</li>
									<li>The controller no longer needs the personal data for processing but it is 
									necessary for the data subject to establish an enquiry or defend their claims;</li>
									<li>The data subject has objected to the processing - pending determination of whether
									 the legitimate grounds on the part of the controller take precedence over the grounds of objection.</li>
									<li>The right to transfer personal data if:</li>
									<li>The processing takes place on the basis of consent or on the basis of a contract</li>
									<li>The processing is automated</li>
									<li>The right to object to the processing of personal data, if there are reasons 
									related to the client's special situation and the processing results from indispensability 
									for the purposes resulting from legally justified interests pursued by the controller.</li>
									<li>Withdrawal of consent to data processing</li>
									<li>To the extent of the client's consent to processing of their personal data, 
									the client is entitled to withdraw the consent at any time. The withdrawal takes 
									place without affecting the legality of the processing which was carried out on 
									the basis of the consent prior to its withdrawal.</li>
									<li>The right to lodge a complaint with the supervisory authority</li>
									<li>In any situation, when the client considers that IVS processes personal data 
									contrary to the provisions of the GDPR, the client has the right to lodge a complaint 
									with the appropriate supervisory authority.</li>
									<li>Transfer of personal data to countries outside the</li>
									<li>European Economic Area IVS transfers personal data to countries outside 
									the European Economic Area: Canada – the transfer of data is necessary for 
									carrying out the contract of the visa agency. In addition, the Commission 
									decision of 20th December 2001 stated that the regulations in force in Canada 
									ensure an adequate level of protection of personal data.</li>
									<li>IVS may transfer personal data to third countries, in particular, to 
									the US and international organizations.The transfer of data takes place on 
									the basis of standard contractual clauses agreed with the recipient,
									the content of which has been adopted by the European Commission and ensures 
									the highest standards of personal data protection applied on the market. 
									The client has the right to obtain a copy of the data transferred by IVS.</li>
									<li>Obligation to provide personal data</li>
									<li>Providing personal data is entirely voluntary. Providing data is a 
									condition for concluding a visa contract with IVS or it is necessary to achieve 
									the objectives arising from the legitimate interests of IVS. Failure to provide all 
									the data will prevent conclusion and execution of the indicated contract.</li>
									
                              </ul>
								
							</ul>
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