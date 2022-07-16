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
<link rel="stylesheet" href="/css/india.css" type="text/css">
<link rel="stylesheet" href="/css/home.css" type="text/css">
<link rel="stylesheet" href="/css/turkey.css" type="text/css">
<link rel="stylesheet" href="/css/UAE.css" type="text/css">
<link rel="icon" href="/images/favicon-1.png" type="image/x-icon">

<style>
@media ( max-width : 992px) {
	.top-background {
		background-color: #c3b19e;
	}
}

.top-background {
	background-image: url('/images/background 2.jpg');
}

@media ( min-width : 992px) {
	.top-background {
		background-image: url('/images/background 2.jpg');
	}
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
	margin-left: 50px;
	margin-right: 50px;
	    padding-left: 50px;
    padding-right: 50px;
	
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
	font-size: 18px;
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
	    margin-left: 50px;
    margin-right: 50px;
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
	margin-left: 50px;
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
	margin-right: 80px;
	    margin-left: 80px;
}
div#EvisaSampleIds {
    padding: 60px;
}

ul#formprocesslist {
	list-style-type: initial;
}

#airports {
	margin-right: 30px;
	margin-left: 30px;
	color: #1d3367;
	padding-bottom: 0px;
}

ul {
	list-style-type: none;
}

.toggle-click-closed {
	color: rgb(29, 51, 103);
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
	

	<div>
		<section class="applyonline" id="onlineapplysection"
			style="background-image: url('/images/uae-banner.jpg'); width: auto; height: 500px;">

			<div class="top-content-follow-card-h2">APPLY FOR UAE VISA
				ONLINE</div>
			<h4
				style="color: #231f20; width: 100%; text-align: center; font-size: 20px;"></h4>

			<div class="top-content-follow-card-logo" style="margin: auto;"></div>
			<div class="top-content-follow-card-destination"
				style="width: 30%; margin: auto; padding-top: 40px;">

				<a href="/en/united-arab-emirates/applicationform">
					<button type="button" class="btn btn-primary">APPLY ONLINE</button>
				</a>

			</div>

		</section>
	</div>
	<section class="main-site-content">
		<div class="top-background"></div>
		<div class="container">
			<div class="row">

				<div class="col-md-12">
					<div class="top-content-text padding">
						<h1
							style="color: #ffff; font-size:45px; font-weight: 600; text-align: center;">
							UAE e-Visa Information</h1>

					</div>

					<a href="/en/united-arab-emirates/applicationform"><button type="button"
							id="applyhere">APPLY ONLINE</button></a>
					<section class="description padding mobile-pt-0"
						style="background-color: #ffff; padding: 50px;">
						<div class="description-steps">

							<h2 class="headingText"
								style="color: #1d3367 !important; text-align: center;font-weight: 600;">UAE
								e-Visa Basic Information</h2>

							<p class="description-steps-eta-planning">
								<strong>The UAE e-Visa</strong> is an electronic visa that was
								implemented <b>in 2019</b> by the UAE Government in order to
								enable foreign travelers to visit the United Arab Emirates for <b>short-term
									tourist stays.</b>
							</p>

							<p class="description-steps-eta-planning">
								The electronic visa system serves as <strong>great
									facilitation</strong> in the whole visa handling process since it <strong>allows
									travelers</strong> to obtain their travel authorization documents <strong>entirely
									online</strong>.
							</p>
							<p class="description-steps-eta-planning">
								The UAE e-Visa comes in four different types that allow its
								holders a 96-hour, 30-day, or 90-day visit&nbsp;to the UAE,
								depending on the selected e-Visa type. Issued electronic visas
								for the UAE stay&nbsp;<strong>valid for 2 months</strong>.
							</p>

							<p class="description-steps-eta-planning">
								Travelers from the eligible countries can now&nbsp;<strong>make
									their&nbsp;visa applications online</strong> using this website
								and&nbsp;receive the approved document&nbsp;via email within <strong>a
									maximum of 3 business days</strong>.
							</p>
							<p class="description-steps-eta-planning">
								The approved UAE&nbsp;<strong>e-Visa can be used&nbsp;</strong>to
								travel to the United Arab Emirates <strong>for tourism
									or transit purposes</strong>. Travelers can visit their friends and
								family residing in UAE, go sightseeing, or go on vacation, <strong>all
									with one document</strong>!
							</p>

							<p class="description-steps-eta-planning">
								Moreover, <strong>the UAE&nbsp;online visa</strong>&nbsp;serves
								for a single visit to Dubai, or any other city in the country.
								Travelers should apply&nbsp;<strong>online</strong>
								to&nbsp;receive their electronic visas via email <strong>in
									PDF form</strong>!
							</p>

							<p class="description-steps-eta-planning">
								The UAE e-Visa <strong>works as a travel authorization
									for every emirate</strong> that forms the country, including:
							</p>

						</div>

						<ul id="uaelist"
							style="list-style-type: disc; font-weight: 500; color: #1c3367;margin-left: 10%;">
							<li>Abu Dhabi</li>
							<li>Ajman</li>
							<li>Dubai</li>
							<li>Fujairah</li>
							<li>Ras Al Khaimah</li>
							<li>Sharjah</li>
							<li>Umm Al Quwain</li>
						</ul>
						<div class="description-steps">
							<p class="description-steps-eta-planning">This means that UAE
								e-Visa holders can stay in any preferred emirate for up to 30 or
								90 days, depending on the selected UAE e-Visa type.</p>

						</div>

						<!-- <ul class="toggle-box">
							<li class="toggle-li">
								<h3 class="visa-questions-click toggle-click-closed">
								Pakistan e-Visa types</h3>
								<div class="height" style="width: 100%">
									<p class="visa-questions-description">
										– Applicants can choose between three electronic visa types. 
										Two serve for tourism purposes, and one is designed for business usage.
									</p>
									<p>There is a:</p>
									
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
										</strong>from the  institution confirming cooperation
										and providing basic details of the stay length and type of
										education that the applicant is going to undergo
									</p>
								</div>
							</li>
						</ul> -->

					</section>



					<section class="gallery-big padding-rwd"
						style="margin: 35px 0px 0px 0px !important">
						<div class="steps" style="background-color: #ffffff;padding-top: 50px;" id="Stepsid">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3"
									style="color: #1d3367 !important; text-align: center;font-weight: 600;">
									UAE e-Visa Types</h2>
							</div>
							<p class="description-steps-eta-planning"
								style="padding-left: 50px;">Applicants can choose between
								three electronic visa types. Two serve for tourism purposes, and
								one is designed for business usage.</p>

							<ul class="UlclassFroSecond"id="uaetypes" >
								
										<li><strong>a</strong><strong>30-day
												single-entry e-Visa</strong></li>
										<li><strong>a</strong><strong>multiple-entry
												e-Visa</strong> for a total stay of <strong>30 days</strong> in the
											UAE</li>
										<li><strong>a 90-day single-entry e-Visa</strong></li>
										<li><strong>a 96-hour transit e-Visa</strong></li>
									</ul>
								
								
									<p class="description-steps-eta-planning">
										UAE e-Visas <strong>stay valid for 60 days</strong> from the
										date of their issue.
									</p>
									<h3 class="visa-questions-description">
										<strong>How can travelers use the UAE e-Visa?</strong>
									</h3>
								
								<ul id="uaetypes"
									>
									<li><strong>To go on vacation</strong></li>
									<li><strong>Explore the seven emirates</strong> of the
										country, including Abu Dhabi and Dubai</li>
									<li><strong>Handle any important business</strong> within
										all of UAE</li>
									<li><strong>Attend conferences, meetings, fairs,
											expos</strong></li>
									<li><strong>Visit friends and family</strong> residing in
										any UAE emirate</li>
									<li>Take a layover when <strong>transiting
											through UAE</strong> onto an onward destination
									</li>
								</ul>
								<p class="visa-questions-description">
									<strong>Please remember!</strong>&nbsp;e-Visa to UAE can only
									be used for tourism purposes. <strong>It does not
										serve as a working permit</strong>. UAE or Dubai online
									visa&nbsp;holders <strong>cannot participate</strong> in any
									kind of<strong> labor activity</strong> while on their visit to
									the UAE. Otherwise, you may be liable to&nbsp;fines or
									deportation.
								</p>
								<p class="visa-questions-description">
									The online application takes just <strong>a few
										minutes to complete</strong>. Apply from home or any other place using
									a phone, laptop, PC, or tablet <strong>with an
										internet connection</strong>. Visit our website for an intuitive and <strong>transparent
										application form</strong>!
								</p>

							
						</div>

					</section>


					<section class="description padding"
						style="background-color: white; margin-top: 35px;">
						<div class="d-flex">
							<div class="small-line"></div>
							<h2 class="description-steps-h3"
								style="color: #1d3367 !important; text-align: center;padding-top: 50px;font-weight: 600;">
								List of eligible countries</h2>
						</div>

						<p style="color: #1d3367; font-size: 18px; padding-left: 37px;font-weight: 500;" class="ListPadingRemove">
							See the countries listed below to find out if
								you're eligible to travel to the UAE with an e-Visa for tourism
								purposes:
						</p>
						<div class="row" style="color: #1d3367;">

							<div class="col-sm-3 col-md-3 col-xs-6">
								<ul id="listeligibleId">
									<li>Albania</li>
									<li>Afghanistan</li>
									<li>Algeria</li>
									<li>Angola</li>
									<li>Anguilla</li>
									<li>Antigua</li>
									<li>Armenia</li>
									<li>Austria</li>
									<li>Azerbaijan</li>
									<li>Bahrain</li>
									<li>Bangladesh</li>
									<li>Belarus</li>
									<li>Belgium</li>
									<li>Belize</li>
									<li>Benin</li>
									<li>Bermuda</li>
									<li>Bhutan</li>
									<li>Bolivia</li>
									<li>Bosnia</li>
									<li>Botswana</li>
									<li>British</li>
									<li>Burkina</li>
									<li>Burundi</li>
									<li>Cambodia</li>
									<li>Cameroon</li>
									<li>Canary</li>
									<li>Cape</li>
									<li>Cayman</li>
									<li>Central</li>
									<li>Chad</li>
									<li>Comoros</li>
									<li>Cuba</li>
									<li>Curaçao</li>
									<li>Czech</li>
									<li>Denmark</li>
									<li>Djibouti</li>
									<li>Dominica</li>
									<li>Dominican</li>
									<li>Democratic</li>
									<li>Ecuador</li>
									<li>Egypt</li>
									<li>Equatorial</li>
								</ul>
							</div>
							<div class="col-sm-3 col-md-3 col-xs-6">
								<ul id="listeligibleId">
									<li>Eritrea</li>
									<li>Estonia</li>
									<li>Eswatini</li>
									<li>Ethiopia</li>
									<li>Faroe</li>
									<li>Finland</li>
									<li>Fiji</li>
									<li>France</li>
									<li>Gabon</li>
									<li>Georgia</li>
									<li>Germany</li>
									<li>Ghana</li>
									<li>Gibraltar</li>
									<li>Greenland</li>
									<li>Grenada</li>
									<li>Greece</li>
									<li>Guadeloupe</li>
									<li>Guam</li>
									<li>Guatemala</li>
									<li>Guernsey</li>
									<li>Guinea</li>
									<li>Guinea</li>
									<li>Guyana</li>
									<li>Haiti</li>
									<li>India</li>
									<li>Indonesia</li>
									<li>Iran</li>
									<li>Iraq</li>
									<li>Iceland</li>
									<li>Italy</li>
									<li>Ivory</li>
									<li>Jamaica</li>
									<li>Jordan</li>
									<li>Kenya</li>
									<li>Kiribati</li>
									<li>Kosovo</li>
									<li>Kuwait</li>
									<li>Kyrgyzstan</li>
									<li>Laos</li>
									<li>Latvia</li>
									<li>Lebanon</li>
									<li>Lesotho</li>
								</ul>
							</div>
							<div class="col-sm-3 col-md-3 col-xs-6">
								<ul id="listeligibleId">
									<li>Liberia</li>
									<li>Libya</li>
									<li>Luxembourg</li>
									<li>Macau</li>
									<li>Macedonia</li>
									<li>Madagascar</li>
									<li>Malawi</li>
									<li>Mali</li>
									<li>Malta</li>
									<li>Marshall</li>
									<li>Mauritania</li>
									<li>Micronesia</li>
									<li>Moldova</li>
									<li>Mongolia</li>
									<li>Montserrat</li>
									<li>Morocco</li>
									<li>Mozambique</li>
									<li>Myanmar</li>
									<li>Namibia</li>
									<li>Netherlands</li>
									<li>Nepal</li>
									<li>Nicaragua</li>
									<li>Niger</li>
									<li>Nigeria</li>
									<li>Norway</li>
									<li>Oman</li>
									<li>Pakistan</li>
									<li>Palau</li>
									<li>Palestine</li>
									<li>Panama</li>
									<li>Papua</li>
									<li>Paraguay</li>
									<li>Philippines</li>
									<li>Poland</li>
									<li>Portugal</li>
									<li>R Congo</li>
									<li>Russia</li>
									<li>Rwanda</li>
									<li>Saint</li>
									<li>Samoa</li>
									<li>São</li>
									<li>Saudi</li>
								</ul>

							</div>
							<div class="col-sm-3 col-md-3 col-xs-6">
								<ul id="listeligibleId">
									<li>Senegal</li>
									<li>Sierra</li>
									<li>Sint</li>
									<li>Slovakia</li>
									<li>Slovenia</li>
									<li>Solomon</li>
									<li>Somalia</li>
									<li>SouthAfrica</li>
									<li>SouthSudan</li>
									<li>Spain</li>
									<li>SriLanka</li>
									<li>Saint Kitts</li>
									<li>Saint Lucia</li>
									<li>Sudan</li>
									<li>Suriname</li>
									<li>Syria</li>
									<li>Sweden</li>
									<li>Taiwan</li>
									<li>Tajikistan</li>
									<li>Tanzania</li>
									<li>Thailand</li>
									<li>Gambia</li>
									<li>Timor</li>
									<li>Togo</li>
									<li>Tonga</li>
									<li>Trinidad</li>
									<li>Tunisia</li>
									<li>Turkey</li>
									<li>Turkmenistan</li>
									<li>Turks</li>
									<li>Tuvalu</li>
									<li>Uganda</li>
									<li>Uzbekistan</li>
									<li>Vanuatu</li>
									<li>Vatican</li>
									<li>Venezuela</li>
									<li>Vietnam</li>
									<li>Yemen</li>
									<li>Zambia</li>
									<li>Zimbabwe</li>
								</ul>
							</div>
						</div>

						<div class="countyListedinfo" style="padding-bottom: 50px;">
							<p style="color: #1d3367; font-size: 18px; padding-left: 37px;" class="ListPadingRemove">
								<strong>Should you need more information </strong>concerning
								your eligibility, <strong>please contact our support
									team</strong> via email or phone.
							</p>

						</div>
					</section>

					<section class="destinations-list-section"  id="description-steps-ids"
						style="background: #ffff; margin: 50px 0px 0px 0px !important;">
						<div style="padding: 0px 100px;"></div>
						<div class="d-flex" style="text-align: center; color: #1d3367;">
							<div class="small-line"></div>
							<h2 class="description-steps-h3"
								style="color: #1d3367; font-weight: 600;">UAE e-Visa application form</h2>
						</div>
						<div class="formdetails">
							<p>
								<strong>Please note!</strong> Our support team is available to
								every traveler&nbsp;at each step of <strong>the e-Visa
									application process</strong>. Should you have any questions, issues, or
								need more information, do not hesitate to <strong>contact
									us via email or phone.</strong>
							</p>
							<p>
								To make<strong> a successful application</strong> for the United
								Arab Emirates online visa, first, <strong>gather all of
									the required documents</strong> and make sure that you meet <strong>all
									of the requirements</strong>.
							</p>
							<p>
								<strong>Next</strong>, use the panel on the left to <strong>choose
									the purpose of your travel</strong>. Once that's done, click the '<strong>Apply
									Online</strong>' button and start filling out the application&nbsp;form.
							</p>

						</div>
						<ul id="formprocesslist">
							<li>To obtain your <strong>electronic&nbsp;visa
									quickly</strong>, all of the data you provide in an online form must be
								correct. <strong>Provide your data, passport details,
									email address, and attach the additional supporting documents.</strong></li>
							<li><strong>Pay the UAE e-Visa fees</strong> and check your
								inbox for the unique confirmation number you will receive <strong>once
									your payment registers</strong>.</li>
							<li><strong>Wait for your tourist e-Visa</strong> to get
								approved, and once it's delivered, print it out and <strong>have
									it with you on your travel</strong>.</li>
						</ul>
						<div class="imponotice">
							<p>
								<strong>Important!</strong> Every traveler visiting the UAE,
								especially Dubai, must have <strong>a valid passport </strong>that
								will not expire for the next six months, starting from<strong>
									the planned arrival date</strong>.
							</p>
						</div>
						<!-- <div class="pymnetprocessing">
							<p>Lastly, wait for your approved electronicPakistan visa to
								arrive at your email address in PDF form. The processing time
								differs according to which entry permit type will you choose.</p>

							<p>The whole process is as simple as that! Fill an
								application form within minutes, make the payment, and check
								your email box for the approved e-Visa to Pakistan.</p>
						</div> -->
					</section>
					<section class="gallery-big padding-rwd">
						<div class="steps" style="background-color: #ffffff;padding-top: 50px;padding-bottom: 25px;"
							id="validitystepspak">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3" style="font-weight: 600;">Validity period</h2>
							</div>
							<p class="description-steps-eta-planning">
								<strong>Tourist e-Visa</strong> to Dubai or UAE <strong>stays
									valid for 60 days</strong> (two months) from <strong>the issue
									date</strong>. Make sure<strong> not to overstay</strong> your visit to
								avoid additional fees.
							</p>
							<p class="description-steps-eta-planning">
								<strong>Please note</strong>! Your <strong>passport
									must stay valid</strong> throughout the whole duration of your trip.
							</p>

						</div>
					</section>


					<section class="gallery-big padding-rwd">
						<div class="steps" id="infotransit"
							style="background-color: #ffffff;padding-top: 50px;padding-bottom: 25px;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3">Transit information</h2>
							</div>
							<p class="description-steps-eta-planning">
								<strong>Passengers on international flights</strong> traveling
								through the United Arab Emirates <strong>may stay in
									the country for 96 hours</strong> upon obtaining an online transit visa.
							</p>
							<p class="description-steps-eta-planning">
								<b>Requirements for the transit e-Visa:</b>
							</p>
							<ul id="transieninfo">
								<li>
									<p>
										<strong>the difference</strong> between the two flights must
										be <strong>over 8 hours</strong>
									</p>
								</li>
								<li>
									<p>
										<strong>the passenger</strong> must continue their journey to
										a selected <strong>third destination</strong>
									</p>
								</li>
								<li>
									<p>
										<strong>all applicants</strong> need to have <strong>proof
											of booked hotel accommodation</strong>
									</p>
								</li>
							</ul>

							<div>
								<p class="description-steps-eta-planning">
									<strong>Not applicable to the citizens from:</strong>
								</p>
								<div class="row" id="notcitis"
									style="color: #1d3367; margin-right: 50px; font-size: 20px; margin-left: 50px">
									<div class="col-sm-4 col-md-4 col-xs-6">
										<ul id="transitIngoId">
											<li>Afghanistan</li>
											<li>Iraq</li>
										</ul>
									</div>
									<div class="col-sm-4 col-md-4 col-xs-6">
										<ul id="transitInfoId">
											<li>Niger</li>
											<li>Somalia</li>
										</ul>
									</div>
									<div class="col-sm-4 col-md-4 col-xs-6">
										<ul id="transitId">
											<li>Yemen</li>
										</ul>
									</div>
								</div>
								<p class="description-steps-eta-planning">
									<strong>All travelers </strong>that wish to cross the UAE
									border to travel to another country may stay<strong>
										without any entry fees</strong> if their visit<strong>&nbsp;won't
										exceed 48 hours</strong>.
								</p>
								<p class="description-steps-eta-planning">
									Should your stay be <strong>longer than 48 hours</strong>, you
									can <strong>extend it to 96 hours</strong> upon paying a fee of<strong>
										50 AED</strong>.
								</p>
								<p class="description-steps-eta-planning">
									Contact us if you need <strong>more information on the
										transit requirements</strong> or entry requirements to meet upon
									arrival at <strong>the selected airport</strong> (the Dubai
									International Airport or any other in the UAE).
								</p>
							</div>
						</div>
					</section>


					<section class="gallery-big padding-rwd">
						<div class="steps" id="requirementarrivl"
							style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3">Requirements on arrival</h2>
							</div>
							<p class="Requirements-arrival-classs"
								>
								Due to the current pandemic state, every passenger needs to have<strong>
									a few more documents on hand upon arrival in the UAE</strong>.
							</p>
							<p id="Requirements-arrival-id"
								>
								<strong>Before going on your trip, please prepare:</strong>
							</p>

							<ul id="transieninfo">
								<li>
									<p>
										<strong>a printed copy of the tourist e-Visa to UAE</strong>
									</p>
								</li>
								<li>
									<p>
										<strong>a passport</strong> with validity extending for at
										least six months beyond the planned entry to the UAE date
									</p>
								</li>
								<li>
									<p>
										<strong>proof of medical insurance</strong>
									</p>
								</li>
								<li>
									<p>
										<strong>health declaration</strong>
									</p>
								</li>
								<li>
									<p>
										<strong>a quarantine form</strong>
									</p>
								</li>
							</ul>

						</div>
					</section>


					<section class="gallery-big padding-rwd">
						<div class="steps" id="EvisaSampleIds"style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3">UAE e-Visa Sample</h2>
							</div>
							<p class="SampleImageid"
								>
								<strong>The</strong><strong>UAE e-Visa sample</strong> provides
								general information on how the issued electronic entry permit
								may look like. Don’t forget to take a look while waiting for
								your<strong> online visa </strong>to be approved.
							</p>

							<p class="visa-questions-description"
								style="padding-bottom: 50px; margin: auto; width: 50%">
								<img alt="UAE e-Visa" src="/images/uae-e-visa.png"
									style="width: 100%; height: 100%;">
							</p>
						</div>
					</section>

					<section class="gallery-big padding-rwd" id="documentvisa"
						style="background-color: #ffff;">
						<div class="d-flex" id="requireddoc">
							<div class="small-line">
								<strong>&nbsp;</strong>
							</div>
							<h2 class="description-steps-h3" style="font-weight: 600; margin-bottom: 25px;">Required
								Documents</h2>
							<p class="visa-questions-description" id="documentrequiredId"
								style="color: #1d3367; margin-right: 50px; font-size: 18px; margin-left: 50px;">
								Read on to learn what requirements applicants must meet to <strong>make
									an&nbsp;application for the United Arab Emirates e-Visa</strong>.
							</p>
							<p class="visa-questions-description" id="documentrequiredId"
								style="color: #1d3367; margin-right: 50px; font-size: 18px; margin-left: 50px;">
								All applicants must attach <strong>the following
									documents</strong> to their application to get <strong>positive
									online visa&nbsp;approval</strong>:
							</p>
							<ul class="visa-questions-description" id="documentrequiredId"
								style="color: #1d3367; margin-right: 50px; font-size: 18px; margin-left: 50px;">
								<li><strong>applicant's face photograph</strong> (that can
									be easily taken using a phone or a PC camera)</li>
								<li>a photo&nbsp;of<strong> the passport's
										bio-data page</strong></li>
								<li><strong>confirmation code</strong> from <strong>the
										booked flight</strong> to the UAE</li>
								<li><strong>the last page </strong>of the applicant's
									passport (if applicable)</li>
								<li><strong>a flight ticket</strong></li>
								<li><strong>residence proof </strong>or ID to prove&nbsp;<strong>the
										traveler's address</strong></li>
							</ul>
							<p class="visa-questions-description" id="documentrequiredId"
								style="color: #1d3367; margin-right: 50px; font-size: 18px; margin-left: 50px;">
								<strong>Please note</strong>! If you plan to visit the UAE <strong>by
									land</strong>, you won't require a flight ticket and the flight
								confirmation code.
							</p>
							<p class="visa-questions-description" id="documentrequiredId"
								style="color: #1d3367; margin-right: 50px; font-size: 18px; margin-left: 50px;">
								<strong>Documents to attach for underage travelers:</strong>
							</p>


							<ul>
								<li class="visa-questions-description" id="documentrequiredId"
									style="color: #1d3367; margin-right: 50px; font-size: 18px; margin-left: 50px;">their
									<strong>face photograph&nbsp;</strong>(can be taken with a
									phone or a PC camera)
								</li>
								<li class="visa-questions-description" id="documentrequiredId"
									style="color: #1d3367; margin-right: 50px; font-size: 18px; margin-left: 50px;"><strong>valid
										passport's photo</strong></li>
								<li class="visa-questions-description" id="documentrequiredId"
									style="color: #1d3367; margin-right: 50px; font-size: 18px; margin-left: 50px;">
									a photo&nbsp;of <strong>the child's birth certificate</strong>
									(either in English or Arabic)
								</li>
							</ul>
							<p class="visa-questions-description" id="documentrequiredId"
								style="color: #1d3367; margin-right: 50px; font-size: 18px; margin-left: 50px;">
								Should you need to translate the birth certificate, the <strong>translation
									must be official</strong>, and the document <strong>must be
									attested</strong>.
							</p>
						</div>
					</section>

					<section class="gallery-big padding-rwd"
						style="margin: 50px 0px 0px 0px !important">
						<div class="steps" id="impinfo" style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3"
									style="color: #1d3367 !important; text-align: center; font-weight: 600;">
									Important Information</h2>
							</div>
							<ul id="impinfolist"
								style="list-style-type: initial; padding-bottom: 50px; color: #1d3367;">

								<li><strong>the online visa application</strong> must be
									made <strong>at least three business days in advance</strong>
									of your visit to the UAE or Dubai</li>
								<li>every traveler <strong>must have a passport
										valid for at least six months</strong> forth from the intended date of
									entering <strong>the United Arab Emirates</strong></li>
								<li>all passengers, including children, <strong>must
										have a valid e-Visa to travel to the UAE</strong>. No matter what age
									the traveler is, <strong>an electronic visa is
										obligatory</strong></li>
								<li>tourist e-Visas <strong>can be extended for a
										period of 30 days twice</strong> (you don't have to leave the country
									to extend your online visa validity). However, extension <strong>does
										not apply to GCC residents</strong>, special entry and 96-hour special
									mission visa holders
								</li>
								<li>in case of <strong>overstaying in the UAE</strong>,
									travelers may be <strong>fined and/or deported</strong>.
									Additionally, you may be banned from re-entering the United
									Arab Emirates. <strong>Do not overstay</strong> to avoid
									problems
								</li>
								<li>e-Visa to UAE enables its holders to <strong>stay
										in Dubai or any other city for 30 or 90 days</strong> and serves as <strong>a
										single or multiple-entry permit</strong>&nbsp;(depending on the
									selected UAE e-Visa type)
								</li>
								<li><strong>all data provided </strong>in the application
									form <strong>must be error-free</strong>, always double-check
									the information you put while applying</li>
							</ul>
						</div>
					</section>


				
					<section class="description padding"
						style="margin-bottom: 50px; margin-top: 50px; background: #ffffff;">
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