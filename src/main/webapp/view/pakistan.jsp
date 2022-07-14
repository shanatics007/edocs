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
<link rel="stylesheet" href="/css/pakistan.css" type="text/css">
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
#typespakevisa{
	margin-left: 50px;
	margin-right: 50px;
	padding-bottom: 50px;
	 color: #1d3367;
    font: 400 16px / 24px Roboto;
    padding-left: 50px;
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
	padding-left: 60px;
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
	margin-right: 50px;
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
			style="background-image: url('/images/Pakistan-banner.jpg'); width: auto; height: 500px;">

			<div class="top-content-follow-card-h2">APPLY FOR PAKISTAN VISA
				ONLINE</div>
			<h4
				style="color: rgb(176, 143, 111); width: 100%; text-align: center; font-size: 20px;"></h4>

			<div class="top-content-follow-card-logo" style="margin: auto;"></div>
			<div class="top-content-follow-card-destination"
				style="width: 30%; margin: auto; padding-top: 40px;">

				<a href="/en/pakistan/applicationform">
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
							style="color: #ffff; font-size: 50px; font-weight: 600; text-align: center;">
							Pakistan e-Visa Information</h1>

					</div>

					<a href="/en/pakistan/applicationform"><button type="button"
							id="applyhere">APPLY ONLINE</button></a>
					<section class="description padding mobile-pt-0"
						style="background-color: #ffff; padding: 50px;">
						<div class="description-steps">

						<h2 class="headingText"
									style="color: #1d3367 !important; text-align: center; font-weight: 600;">Pakistan e-Visa: Basic Information</h2>

							<p class="description-steps-eta-planning">
								<strong>Pakistan e-Visa</strong> is an online visa that allows eligible travelers to enter the country.
							</p>

							<p class="description-steps-eta-planning">
								<strong>The Pakistan Tourist e-Visa </strong> grants most foreigners a single entry and a stay of <strong> up to 3 months.</strong> In Pakistan, an approved e-Visa can also be extended for <strong> up to 6 months.</strong>
							</p>

							<p class="description-steps-eta-planning">
								A Pakistan e-Visa can be issued online as a <strong>dual or multiple entry visa </strong> for certain nationalities.
							</p>

							<p class="description-steps-eta-planning">
								There are also other types of Pakistani visas available online for purposes other than <strong>tourism, including business visas, student visas, work visas, journalist visas, and diplomatic visas.</strong>
							</p>

							<p class="description-steps-eta-planning">
								When applying, <strong>foreign nationals </strong> must first select the type of visa they require before proceeding.
							</p>
							<p class="description-steps-eta-planning">
								Applicants need to complete a simple online form to obtain the <strong>Pakistan e-Visa.</strong> This involves submitting basic <strong>personal information, passport information, and contact details.</strong>
							<p class="description-steps-eta-planning">
								<strong>The e-Visa system </strong> simplifies the application process and eliminates the need to visit a <strong>Pakistani embassy </strong> in person to apply for a visa.
							</p>
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
						<div class="steps" id="pakEvisatypes" style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3"
									style="color: #1d3367 !important; text-align: center; font-weight: 600;">
									Types Of Pakistan e-Visa</h2>
							</div>
							<p class="description-steps-eta-planning" style="padding-left: 50px;">Based on the purpose of the visit, the Pakistani entry permits from India can be classified into the following :-</p>

									<ul id="pktypes"
										style="padding-left: 140px; list-style-type: initial; padding-right: 100px; padding-bottom: 50px; color: #1d3367;">

										<li><strong>Tourist     :-</strong>This is granted to people who wish to travel to Pakistan to take part in tourist activities. </li>

										<li><strong>Visit       :-</strong>This is granted to people who are travelling to visit their family/friends living in Pakistan.</li>

										<li><strong>Transit     :-</strong> This is granted for people travelling through Pakistan on transit.</li>
										<li><strong>Business    :-</strong>This type is issued for people visiting the country to engage in business-related activities, etc.</li>
									</ul>
								
								
								<div id="typespakevisa">
									<p>Travel to Pakistan for tourism purposes, such as
										visiting friends and family, going on vacation, sightseeing,
										and exploring, with either of the single-entry permits.</p>
									<p>The multiple-entry electronic visa can be used for all
										business activities, such as negotiating contracts, looking
										for new cooperation opportunities, signing contracts, or
										taking a business trip.</p>
									<p>Select the online visa type that will suit your travel
										needs best and spare a few minutes to submit an online
										application.</p>
								</div>
							
						</div>

					</section>


					<section class="description padding"
						style="background-color: white; margin-top: 35px;">
						<div class="d-flex">
							<div class="small-line"></div>
							<h2 class="description-steps-h3"
								style="color: #1d3367 !important; text-align: center; font-weight: 600;">
								List of eligible countries</h2>
						</div>

						<p id="pakeligible" style="color: #1d3367; font-size: 20px; padding-left: 37px;">The following
							countries can apply online for the tourist visa valid for 90 days
							(three months):</p>


						<div class="row" style="color: #1d3367;">

							<div class="col-sm-3 col-md-3 col-xs-6" id="RemoveCloumnWidth">
								<ul id="listundercolumn">
									<li>Afghanistan</li>
									<li>Albania</li>
									<li>Algeria</li>
									<li>Andorra</li>
									<li>Angola</li>
									<li>Antigua</li>
									<li>Argentina</li>
									<li>Australia</li>
									<li>Austria</li>
									<li>Azerbaijan</li>
									<li>Bahamas</li>
									<li>Bahrain</li>
									<li>Bangladesh</li>
									<li>Barbados</li>
									<li>Belarus</li>
									<li>Belgium</li>
									<li>Belize</li>
									<li>Benin</li>
									<li>Bhutan</li>
									<li>Bolivia</li>
									<li>Bosnia</li>
									<li>Botswana</li>
									<li>Brazil</li>
									<li>Brunei</li>
									<li>Bulgaria</li>
									<li>BurkinaFaso</li>
									<li>Burundi</li>
									<li>Cambodia</li>
									<li>Cameroon</li>
									<li>Canada</li>
									<li>CaboVerde</li>
									<li>Central</li>
									<li>Chad</li>
									<li>Chile</li>
									<li>China</li>
									<li>Colombia</li>
									<li>Comoros</li>
									<li>Congo</li>
									<li>Congo </li>
									<li>Costa</li>
									<li>Cote</li>
									<li>Croatia</li>
									<li>Cuba</li>
									<li>Cyprus</li>
									<li>Czech</li>
									<li>Denmark</li>
									<li>Djibouti</li>
									<li>Dominica</li>
								</ul>
							</div>
							<div class="col-sm-3 col-md-3 col-xs-6" id="RemoveCloumnWidth">
								<ul id="listundercolumn">
									<li>Dominican</li>
									<li>Ecuador</li>
									<li>Egypt</li>
									<li>El Salvador</li>
									<li>Equatorial</li>
									<li>Eritrea</li>
									<li>Estonia</li>
									<li>Ethiopia</li>
									<li>Fiji</li>
									<li>Finland</li>
									<li>France</li>
									<li>Gabon</li>
									<li>Gambia</li>
									<li>Georgia</li>
									<li>Germany</li>
									<li>Ghana</li>
									<li>Greece</li>
									<li>Grenada</li>
									<li>Guatemala</li>
									<li>Guinea</li>
									<li>Bissau</li>
									<li>Guyana</li>
									<li>Haiti</li>
									<li>Holy See</li>
									<li>Honduras</li>
									<li>Hungary</li>
									<li>Iceland</li>
									<li>Indonesia</li>
									<li>Iran</li>
									<li>Iraq</li>
									<li>Ireland</li>
									<li>Italy</li>
									<li>Jamaica</li>
									<li>Japan</li>
									<li>Jordan</li>
									<li>Kazakhstan</li>
									<li>Kenya</li>
									<li>Kiribati</li>
									<li>Korea </li>
									<li>Korea </li>
									<li>Kosovo</li>
									<li>Kuwait</li>
									<li>Kyrgyzstan</li>
									<li>Laos</li>
									<li>Latvia</li>
									<li>Lebanon</li>
									<li>Lesotho</li>
									<li>Liberia</li>

								</ul>
							</div>
							<div class="col-sm-3 col-md-3 col-xs-6" id="RemoveCloumnWidth">
								<ul id="listundercolumn">
									<li>Libya</li>
									<li>Liechtenstein</li>
									<li>Lithuania</li>
									<li>Luxembourg</li>
									<li>Macedonia</li>
									<li>Madagascar</li>
									<li>Malawi</li>
									<li>Malaysia</li>
									<li>Maldives</li>
									<li>Mali</li>
									<li>Malta</li>
									<li>Marshall</li>
									<li>Mauritania</li>
									<li>Mauritius</li>
									<li>Mexico</li>
									<li>Micronesia</li>
									<li>Moldova</li>
									<li>Monaco</li>
									<li>Mongolia</li>
									<li>Montenegro</li>
									<li>Morocco</li>
									<li>Mozambique</li>
									<li>Myanmar</li>
									<li>Namibia</li>
									<li>Nauru</li>
									<li>Nepal</li>
									<li>Netherlands</li>
									<li>NewZealand</li>
									<li>Nicaragua</li>
									<li>Niger</li>
									<li>Nigeria</li>
									<li>Norway</li>
									<li>Oman</li>
									<li>Palau</li>
									<li>Palestinian</li>
									<li>Panama</li>
									<li>Papua </li>
									<li>Paraguay</li>
									<li>Peru</li>
									<li>Philippine</li>
									<li>Poland</li>
									<li>Portugal</li>
									<li>Qatar</li>
									<li>Romania</li>
									<li>Russia</li>
									<li>Rwanda</li>
									<li>SaintKitts</li>
									<li>Saint</li>

								</ul>

							</div>
							<div class="col-sm-3 col-md-3 col-xs-6" id="RemoveCloumnWidth">
								<ul id="listundercolumn">
									<li>Vincent</li>
									<li>Marino</li>
									<li>São Tomé</li>
									<li>SaudiArabia</li>
									<li>Senegal</li>
									<li>Serbia</li>
									<li>Seychelles</li>
									<li>Sierra</li>
									<li>Singapore</li>
									<li>Slovakia</li>
									<li>Slovenia</li>
									<li>Solomon</li>
									<li>South A</li>
									<li>South</li>
									<li>Spain</li>
									<li>SriLanka</li>
									<li>Sudan</li>
									<li>Suriname</li>
									<li>Swaziland</li>
									<li>Sweden</li>
									<li>Switzerland</li>
									<li>Syria</li>
									<li>Tajikistan</li>
									<li>Tanzania</li>
									<li>Thailand</li>
									<li>Timor</li>
									<li>Togo</li>
									<li>Tonga</li>
									<li>Trinidad</li>
									<li>Tunisia</li>
									<li>Turkey</li>
									<li>Turkmenistan</li>
									<li>Tuvalu</li>
									<li>Uganda</li>
									<li>Ukraine</li>
									<li>UAE</li>
									<li>United</li>
									<li>UnitedStates</li>
									<li>Uruguay</li>
									<li>Uzbekistan</li>
									<li>Vanuatu</li>
									<li>Venezuela</li>
									<li>Vietnam</li>
									<li>Western</li>
									<li>Yemen</li>
									<li>Zambia</li>
									<li>Zimbabwe</li>
								</ul>
							</div>
						</div>


						<div class="countyListedinfo" style="padding-bottom: 30px;">

							<p id="pakeligible" style="color: #1d3367; font-size: 18px;padding-left: 37px;"><b>If you are a
								citizen of the following countries,you may apply for thebusiness
								Pakistan e-Visa that allows numerous entries:</b></p>
						</div>
						<div class="row" style="color: #1d3367;">

							<div class="col-sm-3 col-md-3 col-xs-6">
								<ul id="listundercolumn">
									<li>Algeria</li>
									<li>Angola</li>
									<li>Argentina</li>
									<li>Australia</li>
									<li>Austria</li>
									<li>Azerbaijan</li>
									<li>Bahrain</li>
									<li>Bangladesh</li>
									<li>Belgium</li>
									<li>Benin</li>
									<li>Brazil</li>
									<li>Bulgaria</li>
									<li>Cambodia</li>
									<li>Cameroon</li>
									<li>Canada</li>
									<li>Chile</li>
									<li>China</li>
									<li>Colombia</li>
									<li>Comoros</li>
									<li>CoteIvoire</li>
									<li>Croatia</li>
									<li>CzechRepublic</li>
									<li>Denmark</li>
									<li>Djibouti</li>
								</ul>
							</div>
							<div class="col-sm-3 col-md-3 col-xs-6">
								<ul id="listundercolumn">
									<li>Ecuador</li>
									<li>Egypt</li>
									<li>Estonia</li>
									<li>Finland</li>
									<li>France</li>
									<li>Gambia</li>
									<li>Germany</li>
									<li>Ghana</li>
									<li>Greece</li>
									<li>Guatemala</li>
									<li>Guinea</li>
									<li>GuineaBissau</li>
									<li>Honduras</li>
									<li>Hungary</li>
									<li>Indonesia</li>
									<li>Iran</li>
									<li>Iraq</li>
									<li>Ireland</li>
									<li>Italy</li>
									<li>Japan</li>
									<li>Jordan</li>
									<li>Kazakhstan</li>
									<li>Kenya</li>
									<li>southKorea</li>
								</ul>
							</div>
							<div class="col-sm-3 col-md-3 col-xs-6">
								<ul id="listundercolumn">
									<li>Kuwait</li>
									<li>Latvia</li>
									<li>Lebanon</li>
									<li>Lithuania</li>
									<li>Madagascar</li>
									<li>Malaysia</li>
									<li>Mauritius</li>
									<li>Mexico</li>
									<li>Montenegro</li>
									<li>Morocco</li>
									<li>Mozambique</li>
									<li>Myanmar</li>
									<li>Netherlands</li>
									<li>Zealand</li>
									<li>Nigeria</li>
									<li>Nigeria</li>
									<li>Norway</li>
									<li>Oman</li>
									<li>Panama</li>
									<li>Paraguay</li>
									<li>Peru</li>
									<li>Philippines</li>
									<li>Poland</li>
									<li>Portugal</li>
								</ul>
							</div>
							<div class="col-sm-3 col-md-3 col-xs-6">
								<ul id="listundercolumn"> 
									<li>Qatar</li>
									<li>Romania</li>
									<li>Russia</li>
									<li>Saudi Arabia</li>
									<li>Senegal</li>
									<li>SierraLeone</li>
									<li>Singapore</li>
									<li>Slovenia</li>
									<li>SouthAfrica</li>
									<li>SouthSudan</li>
									<li>Spain</li>
									<li>SriLanka</li>
									<li>Sweden</li>
									<li>Switzerland</li>
									<li>Tanzania</li>
									<li>Thailand</li>
									<li>Togo</li>
									<li>Tunisia</li>
									<li>Turkey</li>
									<li>Ukraine</li>
									<li>UAE</li>
									<li>UnitedKingdom</li>
									<li>UnitedStates</li>
									<li>Vietnam</li>
								</ul>
							</div>
						</div>
						<div class="countyListedinfo" style="padding-bottom: 50px;">
							<p id="pakeligible" style="color: #1d3367; font-size: 18px;padding-left: 37px;">
								<b>If your country of citizenship is not listed, it is
									necessary to apply for a standard embassy visa in order to
									visit Pakistan.</b>
							</p>

						</div>
					</section>

					<section class="destinations-list-section"
						style="background: #ffff; margin: 35px 0px 0px 0px !important;">
						<div style="padding:0px 100px;"></div>
						<div class="d-flex" style="text-align: center; color: #1d3367;">
							<div class="small-line"></div>
							<h2 class="description-steps-h3" style="color: #1d3367; font-weight: 600;">Pakistan
								e-Visa application form</h2>
						</div>
						<div class="formdetails">
							<p>Prepare your valid passport and start filling the online Pakistan visa application form with the necessary data, such as your:</p>
						</div>
						<ul id="formprocesslist">
							<li>Name and Surname</li>
							<li>Nationality</li>
							<li>Purpose of travel</li>
							<li>Travel Details</li>
							<li>Email address</li>
							<li>Passport information</li>
						</ul>
						<div class="imponotice">
							<p>Then, make an online payment using your preferred method to cover the €99 e-Visa fee. Each applicant receives a unique confirmation number once the payment has been recorded.</p>
						</div>
						<div class="pymnetprocessing">
							<p>Finally, wait for your approved Pakistan e-Visa to be sent to your email address in PDF format. The processing time varies depending on the type of entry permit you choose.</p>

							<p>The whole process is so easy! Complete an application form in minutes, make payment and verify your email for the approved Pakistan e-Visa.</p>
						</div>
					</section>
					<section class="gallery-big padding-rwd">
						<div class="steps" style="background-color: #ffffff;" id="validitystepspak">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3" style="font-weight: 600;">Validity period</h2>
							</div>
							<p class="description-steps-eta-planning">Online visa for Pakistan <strong>stays effective for:</strong></p>

							<ul id="validityper">
								<li>30 days (first tourist e-Visa type)</li>
								<li>90 days (second tourist e-Visa)</li>
								<li>5 years (multiple-entry business e-Visa)</li>
							</ul>

							<p class="description-steps-eta-planning">Use your electronic entry permit within the validity period and make sure that your passport will not expire throughout the whole duration of the trip.</p>
						</div>
					</section>


					<section class="gallery-big padding-rwd">
						<div class="steps" id="infotransit" style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3" style="font-weight: 600;">Transit information</h2>
							</div>
							<p class="description-steps-eta-planning">Online visa applications must be made even for the purpose of <strong>transiting through Pakistan</strong> to reach your final destination</p>
							<div>
								<p class="description-steps-eta-planning"><strong>Apply online in advanc</strong>e of your travel and <strong>print out your e-Visa</strong>  once you receive it.</p>

							</div>
						</div>
					</section>


					<section class="gallery-big padding-rwd">
						<div class="steps" id="requirementarrivl" style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3" style="font-weight: 600;">Requirements on arrival</h2>
							</div>
							<p
								style="color: #1d3367; font-size: 18px; margin-right: 50px;margin-left: 50px; padding-left: 5%;">
								Everyone traveling to Pakistan must have two documents to present to the customs officials upon arrival:
							<ul id="transieninfo">
								<li>
									<p>

										<b>A valid passport.</b>
									</p>

								</li>
								<li>
									<p>
										<b>A printed e-Visa copy</b>
									</p>
								</li>

							</ul>

						</div>
					</section>



					<section class="gallery-big padding-rwd">
						<div class="steps" id="portacceptings" style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3" style="font-weight: 600;">Ports accepting e-Visas</h2>
							</div>

							<div class="listofports">
								<p>Before you travel to Pakistan using an e-Visa, please
									make sure that your desired point of entry is on one of the
									following:</p>

							</div>
							<h3
								style="color: #1d3367; margin-right: 50px; font-size: 20px; margin-left: 50px">Airports:</h3>
							<div class="row" id="airports">
								<div class="col-sm-4 col-md-4 col-xs-6">
									<ul>
										<li>Islamabad Airport</li>
										<li>Lahore Airport</li>
										<li>Peshawar Airport</li>
										<li>Karachi Airport</li>
									</ul>

								</div>
								<div class="col-sm-4 col-md-4 col-xs-6">
									<ul>
										<li>Quetta Airport</li>
										<li>Multan Airport</li>
										<li>Rahim Yar Khan Airport</li>
										<li>Bahawalpur Airport</li>
									</ul>
								</div>

								<div class="col-sm-4 col-md-4 col-xs-6">
									<ul>
										<li>Faisalabad Airport</li>
										<li>Gwadar Airport</li>
										<li>Sialkot Airport</li>
									</ul>

								</div>
							</div>
							<h3
								style="color: #1d3367; margin-right: 50px; font-size: 20px; margin-left: 50px">Border
								crossing points:</h3>
							<div class="row" id="airports">
								<div class="col-sm-4 col-md-4 col-xs-6">
									<ul>
										<li>Wahga Railway Station</li>
										<li>Chamman Land Route</li>
									</ul>
								</div>
								<div class="col-sm-4 col-md-4 col-xs-6">
									<ul>
										<li>Torkham Land Route</li>
										<li>Khokarapar Railway Station</li>
									</ul>
								</div>
								<div class="col-sm-4 col-md-4 col-xs-6">
									<ul>
										<li>Taftan Land Route</li>
										<li>Sost Land Route</li>
									</ul>
								</div>
							</div>
							<h3
								style="color: #1d3367; margin-right: 50px; font-size: 20px; margin-left: 50px">Sea
								ports:</h3>
							<div class="row" id="airports">
								<div class="col-sm-12">
									<ul>
										<li>Karachi Sea Port</li>
										<li>Ghassbandar Sea Port</li>
										<li>Gwadar Sea Port</li>
									</ul>
								</div>
							</div>

							<div class="listofports">
								<p><b>If traveling by another point of entry, you will need to
									apply for a regular visa at the Embassy.</b></p>
							</div>
						</div>
					</section>


					<section class="gallery-big padding-rwd">
						<div id="samplevisasetsp" class="steps" style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3" style="font-weight: 600;">Pakistan e-Visa Sample</h2>
							</div>
							<p
								id="paksamplevisapara" style="color: #1d3367; margin-right: 50px; font-size: 18px; margin-left: 50px;">
								The Pakistan e-Visa sample below shows how this entry permit
								looks like once approved. The online visa will be delivered
								directly to the applicant’s email box in PDF form.</p>
								
							<p class="visa-questions-description"
								style="padding-bottom: 50px; margin: auto; width: 50%">
								<img alt="Pakistan e-Visa" src="/images/pakistan-e-visa.png"
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
							<h2 class="description-steps-h3" style="font-weight: 600;">Pakistan e-Visa Requirementss</h2>
							<p class="visa-questions-description" id="documentrequiredId"
								style="color: #1d3367; margin-right: 50px; font-size: 18px; margin-left: 50px;">
								In order to apply for a Pakistan visa online, foreigners must meet certain requirements.</p>
						

								<p class="visa-questions-description" id="documentrequiredId"
								style="color: #1d3367; margin-right: 50px; font-size: 18px; margin-left: 50px;">Applicants must be nationals of eligible countries. Most nationalities can apply for a Pakistan e-Visa
								</p>

						

							<p class="visa-questions-description" id="documentrequiredId"
								style="color: #1d3367; margin-right: 50px; font-size: 18px; margin-left: 50px;">
								When completing the online Pakistan visa application form, applicants must provide the following:</p>
							<ul id="requirdoclist">
								<li class="visa-questions-description" id="documentrequiredId"
									style="color: #1d3367; margin-right: 50px; font-size: 18px; margin-left: 50px;">
										A valid passport issued by an eligible country.</li>

								<li class="visa-questions-description" id="documentrequiredId"
									style="color: #1d3367; margin-right: 50px; font-size: 18px; margin-left: 50px;">
										An email address to receive the approved Pakistan e-Visa.</li>

								<li class="visa-questions-description" id="documentrequiredId"
									style="color: #1d3367; margin-right: 50px; font-size: 18px; margin-left: 50px;">
										A method of payment, such as a credit or debit card, to pay the visa fee)</li>

								<li class="visa-questions-description" id="documentrequiredId"
									style="color: #1d3367; margin-right: 50px; font-size: 18px; margin-left: 50px;">
										Proof of legal residence</li>

								<li class="visa-questions-description" id="documentrequiredId"
									style="color: #1d3367; margin-right: 50px; font-size: 18px; margin-left: 50px;">
										A passport-style photograph</li>
							</ul>
							<p class="visa-questions-description" id="documentrequiredId"
								style="color: #1d3367; margin-right: 50px; font-size: 18px; margin-left: 50px;">
								Further supporting documents may be required depending on the type of Pakistan e-Visa requested.</p>

						</div>
					</section>
					
					<section class="gallery-big padding-rwd"
						style="margin: 35px 0px 0px 0px !important">
						<div class="steps" id="impinfo" style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3"
									style="color: #1d3367 !important; text-align: center; font-weight: 600;">
									Important Information</h2>
							</div>
							<ul id="impinfolist"
								style="padding-left: 100px; list-style-type: initial; padding-right: 100px; padding-bottom: 50px; color: #1d3367;">

								<li>Processing time may differ between the electronic
									Pakistan visa types.</li>

								<li>E-Visa to Pakistan is not a working permit.</li>

								<li>Every traveler must submit a separate e-Visa
									application</li>

								<li>Electronic visas are accepted only at theselected list
									of border crossing points</li>

								<li>Our support team is available to all applicants via
									email and phone</li>

								<li>Travelers must have a passport with a minimum of 6
									months validity to apply for their visa online</li>

								<li>Pakistan e-Visa must be printed out</li>
							</ul>
						</div>
					</section>
					

					<!-- <section class="gallery-big padding-rwd"
						style="background-color: #ffff;">
						<div class="d-flex">
							<div class="small-line">
								<strong>&nbsp;</strong>
							</div>
							<h2 class="description-steps-h3">Required Documents</h2>
							<p class="visa-questions-description"
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
					</section>
 -->
					<!-- <section class="required-documents padding"
						style="padding-bottom: 0px;">
						<div class="d-flex">
							<div class="small-line">
								<strong>&nbsp;</strong>
							</div>
							<h2 class="description-steps-h3">Important Information</h2>
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

					<section class="benefits-of-evisa padding"
						style="margin-bottom: 50px;">
						<div class="description-steps">
							<div class="d-flex">
								<div class="small-line"></div>
								<h3 class="description-steps-h3" id="benifitId"style="font-weight: 600;">Benefits
									of Evisa Express</h3>
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
											to get your e-Visa to Turkey. Any issues during the
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
					</section>

					<!-- <section class="gallery-big padding-rwd" id="documentvisa"
						style="background-color: #ffff;">
						<div class="d-flex">
							<div class="small-line">
								<strong>&nbsp;</strong>
							</div>
							<h2 class="description-steps-h3" style="font-weight: 600;">FAQ
								about the Pakistan e-Visa</h2>
						</div>
						<ul>
							<li class="toggle-li">

								<h3 class="visa-questions-click toggle-click-closed">What
									is the Pakistan e-Visa?</h3>
								<div class="height">

									<p class="visa-questions-description">– Pakistan e-Visa
										serves as an obligatory entry permit for foreign travelers
										visiting this country. It can be handled entirely online and,
										once approved, arrives at the applicant's email address in PDF
										form. Electronic visa for Pakistan comes in three different
										types.</p>
								</div>
							</li>

							<li class="toggle-li">
								<h3 class="visa-questions-click toggle-click-closed">Do I
									need an electronic visa for Pakistan?</h3>
								<div class="height">
									<p class="visa-questions-description">– Check if your
										country is listed in the 'List of eligible countries' section.
										If yes, you must obtain a Pakistan visa online prior to your
										travel to be able to cross the border. Make sure to use one of
										the selected border crossing points.</p>
								</div>
							</li>
							<li class="toggle-li">
								<h3 class="visa-questions-click toggle-click-closed">Do
									children need an e-Visa for Pakistan?</h3>
								<div class="height">
									<p class="visa-questions-description">– e-Visa is required
										for all underage applicants that travel to Pakistan.
										Children's parents/guardians should submit the applications on
										their behalf. Should you need assistance, do not hesitate to
										contact our support team.</p>
								</div>
							</li>
							<li class="toggle-li">
								<h3 class="visa-questions-click toggle-click-closed">Can I
									enter Pakistan without an online visa?</h3>
								<div class="height">
									<p class="visa-questions-description">– There are a few
										countries that can enter Pakistan visa-free, e.g., the
										Maldives or Bangladesh. Check which countries can enter
										without an entry permit and see if you need to make an online
										visa application.</p>
								</div>
							</li>
							<li class="toggle-li">
								<h3 class="visa-questions-click toggle-click-closed">How
									much does Pakistan e-Visa cost?</h3>
								<div class="height">
									<p class="visa-questions-description">– e-Visa to Pakistan
										costs 99 Euro. Applicants can use different online payment
										methods to cover the fees. Use your credit or debit card,
										PayPal account, PayU, or any other method. Should you need any
										help with registering the payment, do not hesitate to contact
										our support team.</p>
								</div>
							</li>
							<li class="toggle-li">
								<h3 class="visa-questions-click toggle-click-closed">What
									documents do I need for the electronic Pakistan visa?</h3>
								<div class="height">
									<p class="visa-questions-description">– Every traveler
										should prepare two elementary documents to attach to their
										electronic visa application form. Apply online with a valid
										passport on hand and a digital face photo taken with either a
										PC camera or your phone. Make sure that your travel document
										will stay valid for at least 6 months from the intended date
										of entering Pakistan.</p>
								</div>
							</li>
							<li class="toggle-li">
								<h3 class="visa-questions-click toggle-click-closed">How to
									apply for the Pakistan e-Visa?</h3>
								<div class="height">
									<p class="visa-questions-description">– First, select the
										type of entry permit you want to apply for (a tourist or a
										business e-Visa). Fill the application form with your data and
										make an online payment. Next, submit your application and wait
										for the approved permit to arrive at your email address.</p>
								</div>
							</li>
							<li class="toggle-li">
								<h3 class="visa-questions-click toggle-click-closed">How
									will I receive the approved online Pakistan visa?</h3>
								<div class="height">
									<p class="visa-questions-description">– Once approved, the
										online Pakistan visa is delivered to the applicant in PDF form
										at the provided email address. To receive your entry permit
										quickly, double-check if every piece of information in the
										application form is correct.</p>
								</div>
							</li>
							<li class="toggle-li">
								<h3 class="visa-questions-click toggle-click-closed">How
									long does it take to get the Pakistan e-Visa?</h3>
								<div class="height">
									<p class="visa-questions-description">– The processing time
										may differ between the various electronic Pakistan visa types.
										If you apply for the tourist entry permit valid for 30 days,
										your application will be processed within 72 hours (3 business
										days). However, approval of the second tourist entry permit
										takes up to 10 days. Online business visas can be processed
										from 24 hours up to 4 weeks.</p>
								</div>
							</li>
							<li class="toggle-li">
								<h3 class="visa-questions-click toggle-click-closed">Do I
									need to print the electronic Pakistan visa?</h3>
								<div class="height">
									<p class="visa-questions-description">– The customs
										officials will check if each traveler has a printed Pakistan
										e-Visa copy. Moreover, make sure to have your valid passport
										with you as well.</p>
								</div>
							</li>
							<li class="toggle-li">
								<h3 class="visa-questions-click toggle-click-closed">How
									long can I stay in Pakistan with an e-Visa?</h3>
								<div class="height">
									<p class="visa-questions-description">– It depends on which
										type of Pakistan entry permit have you submitted your online
										visa application for. Tourist e-Visas allow a one-month stay,
										and the business one serves as a multiple-entry permit and
										allows numerous 30-day stays in the country.</p>
								</div>
							</li>
							<li class="toggle-li">
								<h3 class="visa-questions-click toggle-click-closed">How
									long is an online visa for Pakistan good for?</h3>
								<div class="height">
									<p class="visa-questions-description">– Online visas for
										Pakistan stay valid for 30 days, 90 days, and 5 years. The
										tourist one serves as a single-entry permit, and the business
										one allows numerous visits to the country. Travel to Pakistan
										within the validity period and make sure that your passport
										will not expire throughout the duration of the trip.</p>
								</div>
							</li>
							<li class="toggle-li">
								<h3 class="visa-questions-click toggle-click-closed">Can I
									extend my stay in Pakistan with an electronic visa?</h3>
								<div class="height">
									<p class="visa-questions-description">– Once you are a
										holder of a Pakistan e-Visa, you can extend your visit.
										However, your passport must stay valid for the period of the
										intended extension.</p>
								</div>
							</li>
							<li class="toggle-li">
								<h3 class="visa-questions-click toggle-click-closed">What
									can I do if my Pakistan e-Visa is denied?</h3>
								<div class="height">
									<p class="visa-questions-description">– Applicants whose
										electronic visa application gets rejected should contact our
										support team via email or phone. Click the 'Contact' button
										located at the top of the page to get more information. We are
										happy to help and discuss your situation!</p>
								</div>
							</li>
						</ul>
					</section> -->

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