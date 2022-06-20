<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

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
<link rel="stylesheet" href="/css/india.css" type="text/css">

<style>
@media ( max-width : 992px) {
	.top-background {
		background-color: #c3b19e;
	}
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
    margin-left: 50px;
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
#airports{
    margin-right: 30px;
     margin-left: 30px;
     color: #1d3367;
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

						<li><a href="#">India</a></li>

						<li><a href="#">Turkey</a></li>

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
			style="background-image: url('../images/indiabanner.jpg'); width: auto; height: 500px;">

			<div class="top-content-follow-card-h2">APPLY FOR INDIAN VISA
				ONLINE</div>
			<h4
				style="color: rgb(176, 143, 111); width: 100%; text-align: center; font-size: 20px;"></h4>

			<div class="top-content-follow-card-logo" style="margin: auto;"></div>
			<div class="top-content-follow-card-destination"
				style="width: 30%; margin: auto; padding-top: 40px;">

				<a href="/en/india/applicationform">
					<button type="button" class="btn btn-primary">APPLY ONLINE</button>
				</a>

			</div>

		</section>
	</div>
	<section class="main-site-content">
		<div class="top-background"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-4 padding-card">
					<div class="top-content-follow-card follow-card-upper"
						style="display: none;">
						<div class="top-content-follow-card-logo-2"></div>
						<div class="top-content-follow-card-h2">APPLY FOR INDIAN
							VISA ONLINE</div>

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

									<li class="drop-down-ul-element"><a href="#"
										class="a-no-active"><span data-key="india">India</span></a></li>

									<li class="drop-down-ul-element"><a href="#"
										class="a-no-active"><span data-key="turkey">Turkey</span></a></li>

								</ul>
							</div>
						</div>
						<div class="top-content-follow-card-icon"></div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="top-content-text padding">
						<h1
							style="color: #ffff; font-size: 50px; font-weight: 600; text-align: center;">India
							e-Visa Information</h1>

					</div>

					<a href="/en/india/applicationform"><button type="button"
							id="applyhere">APPLY ONLINE</button></a>
					<section class="description padding mobile-pt-0"
						style="background-color: #ffff; padding:50px !important;">
						<div class="description-steps">
							<p class="description-steps-eta-planning">
								<b>India e-Visa</b> is an electronic visa introduced by the
								Government of India in 2014 to speed up the time of obtaining a
								visa and allow all eligible travelers to enter the country for
								visits related to tourism, business, and medical treatment.  
							</p>
							<p class="description-steps-eta-planning">There are five
								types of the Indian e-Visa available that differ according to
								the traveler's purpose of visit or the length of the validity
								period. The tourist Indian e-Visa is a single-entry travel
								authorization that stays effective for one month (30 days) from
								issuing and allows its holders to visit India for up to 30 days.
							</p>
							<p class="description-steps-eta-planning">The remaining types
								of the Indian e-Visa are multiple-entry visas that allow a stay
								from 60 to 180 days with a validity period ranging from 4 months
								up to 5 years from the date of issue, depending on the selected
								type (Business/Medical/One-Year/Five-Year e-Visa).  </p>
							<p class="description-steps-eta-planning">Applicants need to
								fill out the application form with personal and passport
								information, upload a few supporting documents, and make a
								secure online payment to complete the process of applying
								online.</p>
							<p class="description-steps-eta-planning">The approved online
								visa to India will be sent to the applicant's email address in
								72 hours or even less.</p>
							<p class="description-steps-eta-planning">For almost all
								eligible citizens, Indian e-Visa costs 129 Euro; for citizens of
								Russia, Ukraine, the United States, Great Britain, and
								Mozambique, the fee is 149 Euro.</p>
						</div>
					</section>
					<section class="description padding" style="padding: 50px !important; background: #ffff;">
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
					</section>

					<section class="gallery-big padding-rwd" style="margin: 35px 0px 0px 0px !important">
						<div class="steps" style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3"
									style="color: #1d3367 !important; text-align: center;">
									India e-Visa types</h2>
							</div>
							<p class="description-steps-eta-planning"
								style="padding-right: 80px; padding-left: 80px;">
								There are <b>five types of e-Visa for India: </b> Tourist,
								Business, Medical, One-Year, and 5-Year one. Continue reading to
								learn more about each travel authorization available.
							</p>

							<ul style="padding-left: 100px; padding-right: 100px; padding-bottom: 50px; color:#1d3367;">
								<li>
									<p>
										The<b>e-Tourist Visa is a single-entry visa,</b> issued for
										purposes of tourism, such as holiday trips and visiting family
										or friends. It stays <b>valid for 30 days</b> from issuing and
										makes it possible for its holders to stay in India for up to <b>30
											days.</b>
									</p>
								</li>
								<li>
									<p>
										The <b>e-Business Visa is a multiple-entry visa</b> that
										allows you to participate in business meetings, conferences,
										or negotiations, as well as other business activities. It is
										valid for 1 year from the date of issue. A business traveler
										may stay up to <b>180 days total</b> during that period,
										either consecutively or throughout <b>numerous visits.</b>
									</p>
								</li>
								<li>
									<p>
										The<b>e-Medical Visa</b>is<b>a triple-entry visa</b> that
										allows the holder to undergo medical treatment in India. It is
										valid for 4 months from the date of issue. Its holders may
										stay in India for up to <b>60 days in total,</b> either
										consecutively or spread over <b>3 visits.</b>
									</p>
								</li>
								<li>
									<p>
										<b>One-Year eVisa for 129 EUR</b> - is a multiple-entry travel
										authorization that allows <b>numerous leisure-related </b>
										visits to India within its one-year validity period.
									</p>
								</li>

								<li>
									<p>
										<b>Five-Year eVisa for 149 EUR</b> - is a multiple-entry
										travel authorization that allows numerous 90-day
										leisure-related visits during its five-year validity period.
										Citizens from <b>the USA and Japan</b> can stay in India with
										the 5-year eVisa for 180 days with each visit.

									</p>
								</li>
							</ul>
						</div>

					</section>


					<section class="description padding"
						style="background-color: white; margin-top: 35px;">
						<div class="d-flex">
							<div class="small-line"></div>
							<h2 class="description-steps-h3"
								style="color: #1d3367 !important; text-align: center;">
								List of eligible countries</h2>
						</div>

						<p style="color: #1d3367; font-size: 20px;">
							All citizens of countries on the following list <b>are
								required to carry an India e-Visa</b> in order to enter this country
							for purposes of tourism, business, or medical treatment.
						</p>

						<span style="font-size: 20px; color:#1d3367;"> <b>Eligible countries include:</b>
						</span>

						<div class="row" style="color:#1d3367;">

							<div class="col-sm-3">
								<ul>
									<li>Albania</li>
									<li>Andorra</li>
									<li>Angola</li>
									<li>Antigua and Barbud</li>
									<li>Argentina</li>
									<li>Armenia</li>
									<li>Australia</li>
									<li>Austria</li>
									<li>Azerbaijan</li>
									<li>Bahamas</li>
									<li>Barbados</li>
									<li>Belize</li>
									<li>Belgium</li>
									<li>Bolivia</li>
									<li>Bosnia and Herzegovina</li>
									<li>Botswana</li>
									<li>Brazil</li>
									<li>Brunei</li>
									<li>Bulgaria</li>
									<li>Burundi</li>
									<li>Cambodia</li>
									<li>Cameroon</li>
									<li>Cape Verde</li>
									<li>Chile</li>
									<li>Colombia</li>
									<li>Comoros</li>
									<li>Costa Rica</li>
									<li>Cote D'Ivoire</li>
									<li>Croatia</li>
									<li>Cuba</li>
									<li>Cyprus</li>
									<li>Czech Republic</li>
									<li>Denmark</li>
									<li>Djibouti</li>
									<li>Dominica</li>
									<li>Dominican Republic</li>
									<li>Ecuador</li>
									<li>El Salvado</li>
									<li>Eritrea</li>
									<li>Estonia</li>
								</ul>
							</div>
							<div class="col-sm-3">
								<ul>
									<li>Eswatini</li>
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
									<li>Guyana</li>
									<li>Haiti</li>
									<li>Honduras</li>
									<li>Hong Kong</li>
									<li>Hungary</li>
									<li>Iceland</li>
									<li>Indonesia</li>
									<li>Iran</li>
									<li>Ireland</li>
									<li>Israel</li>
									<li>Italy</li>
									<li>Jamaica</li>
									<li>Japan</li>
									<li>Jordan</li>
									<li>Kazakhstan</li>
									<li>Kenya</li>
									<li>Kiribati</li>
									<li>Kyrgyzstan</li>
									<li>Laos</li>
									<li>Latvia</li>
									<li>Lesotho</li>
									<li>Liberia</li>
									<li>Liechtenstein</li>
									<li>Lithuania</li>
									<li>Luxembourg</li>
									<li>Macau</li>
									<li>Macedonia</li>
									<li>Madagascar</li>
								</ul>
							</div>
							<div class="col-sm-3">
								<ul>
									<li>Malawi</li>
									<li>Malaysia</li>
									<li>Mali</li>
									<li>Marshall Islands</li>
									<li>Mauritius</li>
									<li>Mexico</li>
									<li>Micronesia</li>
									<li>Moldova</li>
									<li>Monaco</li>
									<li>Mongolia</li>
									<li>Montenegro</li>
									<li>Mozambique</li>
									<li>Myanmar</li>
									<li>Namibia</li>
									<li>Nauru</li>
									<li>Netherlands</li>
									<li>New Zealand</li>
									<li>Cook Islands</li>
									<li>Niue</li>
									<li>Nicaragua</li>
									<li>Niger</li>
									<li>Norway</li>
									<li>Oman</li>
									<li>Palau</li>
									<li>Palestine</li>
									<li>Panama</li>
									<li>Papua New Guinea</li>
									<li>Paraguay</li>
									<li>Peru</li>
									<li>Philippines</li>
									<li>Poland</li>
									<li>Portugal</li>
									<li>Qatar</li>
									<li>Romania</li>
									<li>Russia</li>
									<li>Rwanda</li>
									<li>Saint Kitts and Nevis</li>
									<li>Saint Lucia</li>
									<li>Saint Vincent and the Grenadines</li>
									<li>Samoa</li>
								</ul>

							</div>
							<div class="col-sm-3">
								<ul>
									<li>San Marino</li>
									<li>Senegal</li>
									<li>Serbia</li>
									<li>Seychelles</li>
									<li>Sierra Leone</li>
									<li>Singapore</li>
									<li>Slovakia</li>
									<li>Slovenia</li>
									<li>Solomon Islands</li>
									<li>South Africa</li>
									<li>South Korea</li>
									<li>Spain</li>
									<li>Suriname</li>
									<li>Sweden</li>
									<li>Switzerland</li>
									<li>Taiwan</li>
									<li>Tajikistan</li>
									<li>Tanzania</li>
									<li>Thailand</li>
									<li>Timor-Leste</li>
									<li>Tonga</li>
									<li>Trinidad and Tobago</li>
									<li>Tuvalu</li>
									<li>Uganda</li>
									<li>Ukraine</li>
									<li>United Arab Emirates</li>
									<li>United Kingdom</li>
									<li>United States</li>
									<li>Uruguay</li>
									<li>Uzbekistan</li>
									<li>Vanuatu</li>
									<li>Vatican City</li>
									<li>Venezuela</li>
									<li>Vietnam</li>
									<li>Zambia</li>
									<li>Zimbabwe</li>
								</ul>
							</div>
						</div>
						<div class="countyListedinfo" style="padding-bottom: 50px;">
						<p style="color:#1d3367; font-size: 18px;"> 
							<b>If your country of citizenship is not listed, it is
								necessary to apply for a standard embassy visa in order to visit
								India.</b>
						</p>
						</div>
					</section>

					<section class="destinations-list-section" style="background: #ffff; margin: 35px 0px 0px 0px !important;">
						<div class="d-flex" style="text-align: center; color: #1d3367;">
							<div class="small-line"></div>
							<h2 class="description-steps-h3" style="color: #1d3367;">India e-Visa application
								form</h2>
						</div>
						<div class="formdetails">
						<p>At Evisa Express, our mission is simple: to connect you
							with the e-Visa you need.</p>

						<p>
							We've developed <b>a simple and efficient application process</b>
						</p>
						to maximize ease and security. 96% of the submitted applications
						by travelers using our services are successfully approved!
						</div>
						<h3 style="font-size: 20px; color: #1d3367; font-weight: 600; margin-left: 50px;">The application form</h3>
						<p style="color: #1d3367; font-size: 18px; text-align: start; margin-left: 50px;">Select the purpose of your travel (business,
							medical/hospitalization, or tourism) and click "Apply Online."</p>
						<ul id="formprocesslist">
							<li>
								<p>
									<b>First, provide basic information</b> in the application
									form, including your email address, planned dates of arrival
									and departure, and the port of entry you have chosen.

								</p>

							</li>
							<li>
								<p>
									<b>Next, upload a photo of your passport's bio-data page
										and the applicant's face photo</b> (that can be taken using a
									phone or a PC camera).
								</p>
							</li>
						</ul>
						<div class="imponotice">
							<p>
								<b>Important! </b>our passport must stay valid for <b>at
									least 6 months</b>from the planned date of arrival to India.
							</p>
						</div>

						<h3 style="font-size: 20px; color: #1d3367; font-weight: 600;margin-left: 50px;">Payment and processing</h3>
						<div class="pymnetprocessing">
							<p>
								When you've finished entering information and uploading the
								supporting documents, you'll be directed to <b>complete an
									online payment.</b> Then, a confirmation number will be sent
								directly to the email address provided in the application form.
							</p>

							<p>
								The entire India e-Visa processing time will take a maximum of <b>3
									business days.</b> However, the average time of application
								approval when using our services is just <b>51 hours!</b>

							</p>
						</div>
					</section>

					<section class="gallery-big padding-rwd">
						<div class="steps" style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3">Validity period</h2>
							</div>
							<p class="description-steps-eta-planning">
								The electronic Indian visa for <b>business purposes </b> stays
								valid for <b>one year</b> from the issue date. However, <b>the
									medical one</b> has <b>a 4-month validity period.</b>
							</p>

							<p class="description-steps-eta-planning">
								Single-entry e-Visa for India stays valid for <b>one month</b>
								from issuing, but there's also <b>a one-year and five-year
									India e-Visa</b>available.
							</p>
							<p class="description-steps-eta-planning" style="padding-bottom: 50px;">
								Make sure that your passport will not expire for <b>at least
									6 months from</b> the intended date of entering India and choose a
								preferred e-Visa type to apply for.
							</p>
						</div>
					</section>


					<section class="gallery-big padding-rwd">
						<div class="steps" style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3">Transit information</h2>
							</div>
							<p class="description-steps-eta-planning">
								Are you flying to India simply for the purpose of immediately
								continuing on to another country? If so, you <b>do not need
									an electronic visa, as long as: </b>
							<ul id="transieninfo">
								<li>
									<p>
										You are in possession of <b>an onward ticket</b> to the
										country of your final destination
									</p>

								</li>
								<li>
									<p>
										Your layover time in India <b>does not exceed 24 hours</b>
									</p>
								</li>
								<li>
									<p>
										You <b>will not leave the transit area </b> of the Indian
										airport while waiting for your connecting flight
									</p>
								</li>

							</ul>
							<div>
								<p class="description-steps-eta-planning" style="padding-bottom: 50px;">
									Travelers who do not meet the requirements above <b>must
										apply for an e-Visa</b> in order to transit through India.
								</p>
							</div>
						</div>
					</section>


					<section class="gallery-big padding-rwd">
						<div class="steps" style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3">Requirements on arrival</h2>
							</div>
							<p style=" color: #1d3367; font-size: 18px; margin-right: 50px; margin-left: 50px;">Travelers are required to have the following documents
								upon entering India:
							<ul id="transieninfo"> 
								<li>
									<p>

										<b>a valid passport.</b> Please note that the passport must be
										<b>alid for at least six months</b> past the planned date of
										arrival to India.
									</p>

								</li>
								<li>
									<p>
										<b>a print-out copy of your e-Visa.</b> You will receive the
										approved entry permit at your email address <b>in PDF form
										</b> within a maximum of <b>72 hours.</b>
									</p>
								</li>

							</ul>
							<div>
								<p class="description-steps-eta-planning" style="padding-bottom: 50px;">Present these
									documents at the Indian airport, seaport, or any border
									crossing through which you enter the country. The Indian
									customs officials will give your passport a new stamp
									confirming your entry into the country.</p>
							</div>
						</div>
					</section>



					<section class="gallery-big padding-rwd">
						<div class="steps" style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3">Ports accepting e-Visas</h2>
							</div>
							
							<div class="listofports">
							<p>
								Due to an ongoing modernization, <b>not every</b> Indian airport
								or seaport is yet able to process the electronic visas.
							</p>
								<p>Below is a list of airports and seaports that accept
									online India visas to use.</p>
							</div>
							<h3 style="color: #1d3367; margin-right: 50px; font-size: 20px;margin-left: 50px">Airports:</h3>
							<div class="row" id="airports">
								<div class="col-sm-4">
									<ul>
										<li>Ahmedabad</li>
										<li>Amritsar</li>
										<li>Bagdogra</li>
										<li>Bengaluru</li>
										<li>Bhubaneshwar</li>
										<li>Calicut</li>
										<li>Chandigarh</li>
										<li>Chennai</li>
										<li>Cochin</li>
										<li>Coimbatore</li>

									</ul>

								</div>
								<div class="col-sm-4">
									<ul>
										<li>Delhi</li>
										<li>Gaya</li>
										<li>Goa</li>
										<li>Guwahati</li>
										<li>Hyderabad</li>
										<li>Jaipur</li>
										<li>Kolkata</li>
										<li>Lucknow</li>
										<li>Madurai</li>
										<li>Mangalore</li>

									</ul>

								</div>
								<div class="col-sm-4">
									<ul>
										<li>Mumbai</li>
										<li>Nagpur</li>
										<li>Portblair</li>
										<li>Pune</li>
										<li>Tiruchirapalli</li>
										<li>Trivandrum</li>
										<li>Varanasi</li>
										<li>Vishakhapatnam</li>
									</ul>

								</div>

							</div>
							<h3 style="color: #1d3367; margin-right: 50px; font-size: 20px;margin-left: 50px">Seaports:</h3>
							<div class="row" id="airports">
								<div class="col-sm-4">
									<ul>
										<li>Chennai</li>
										<li>Cochin</li>

									</ul>

								</div>
								<div class="col-sm-4">
									<ul>
										<li>Goa</li>
										<li>Mangalore</li>

									</ul>

								</div>
								<div class="col-sm-4">
									<ul>
										<li>Mumbai</li>
									</ul>

								</div>

							</div>
						</div>
					</section>


					<section class="gallery-big padding-rwd">
						<div class="steps" style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3">Indian e-Visa Sample</h2>
							</div>
							<p style="color: #1d3367; margin-right: 50px; font-size: 18px;margin-left: 50px;">
								The following document is an <b>India e-Visa sample</b> that is
								presented below to give you an insight on how will the entry
								permit look like once you receive it.
							</p>
							<p class="visa-questions-description" style="padding-bottom: 50px;margin: auto; width: 50%">
								<img alt="India e-Visa" src="/images/india-evisa.png"
									style="width: 100%; height: 100%;">
							</p>
						</div>
					</section>

					<section class="gallery-big padding-rwd" style="background-color: #ffff;">
						<div class="d-flex">
							<div class="small-line">
								<strong>&nbsp;</strong>
							</div>
							<h2 class="description-steps-h3">Required Documents</h2>
							<p class="visa-questions-description" style="color: #1d3367; margin-right: 50px; font-size: 18px;margin-left: 50px;">
								Citizens of the eligible countries&nbsp;are required to attach <strong>the
									following documents</strong> to their applications:
							</p>
						</div>
						<ul class="toggle-box">
							<li class="toggle-li">
								<h3 class="visa-questions-click toggle-click-closed">the
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
								<h3 class="visa-questions-click toggle-click-closed">the
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
								<h3 class="visa-questions-click toggle-click-closed">the
									e-Medical visa</h3>
								<div class="height">
									<p class="visa-questions-description">
										– a photo of the <strong>bio-data page</strong> of the
										applicant's passport<br> – a&nbsp;<strong>photograph
											of the applicant's face</strong> that can be taken using a phone or a
										PC camera<br> – a&nbsp;<strong>written document
										</strong>from the hospital or other institution confirming cooperation
										and providing basic details of the stay length and type of
										treatment that the applicant is going to undergo
									</p>
								</div>
							</li>
						</ul>
					</section>

					<section class="required-documents padding"
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
					</section>

					<section class="benefits-of-evisa padding"
						style="margin-bottom: 50px;">
						<div class="description-steps">
							<div class="d-flex">
								<div class="small-line"></div>
								<h3 class="description-steps-h3">Benefits of Evisa Express</h3>
							</div>
							<ul class="description-steps-ul">
								<li class="description-steps-ul-step display-flex" style="display: block !important;">
									<div class="step-icon step-icon-1" style="margin: auto; background-image: url(../images/document.png);"></div>
									<div class="description-steps-text" style="margin: auto;">
										<span class="description-steps-text-main">Easy
											application process</span><span
											class="description-steps-text-bottom" style="text-align: center;">There are three
											easy steps to get your e-Visa to India. Any issues during the
											application process can be addressed by contacting our
											support team</span>
									</div>
								</li>
								<li class="description-steps-ul-step display-flex" style="display: block !important;">
									<div class="step-icon step-icon-2"  style="margin: auto; background-image: url(../images/team.png);"></div>
									<div class="description-steps-text" style="margin: auto;">
										<span class="description-steps-text-main padding-right50">Qualified
											team of experts</span>
											<span class="description-steps-text-bottom" style="text-align: center;">A
											qualified team oversees the processing of each and every
											application</span>
									</div>
								</li>
								<li class="description-steps-ul-step display-flex" style="display: block !important;">
									<div class="step-icon step-icon-3" style="margin: auto;   background-image: url(../images/guarantee.png);"></div>
									<div class="description-steps-text" style="margin: auto;">
										<span class="description-steps-text-main">Guarantee of
											service</span><span class="description-steps-text-bottom" style="text-align: center;">If
											an application is unable to be processed, reimbursement is
											provided according to the conditions set out by our Terms of
											Service</span>
									</div>
								</li>
							</ul>
							
						</div>
					</section>

				

					<section class="description padding" style="margin-bottom: 50px; background: #ffffff;">
						<div class="description-steps" style="padding-bottom: 50px;">
							<div class="d-flex">
								<h2 class="description-steps-h3" style="color: rgb(29 51 103); text-align: center; padding-bottom: 50px;">
								Three easy steps to get your e-Visa
								</h2>
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
											out the additional documents as essential.&nbsp;</span>
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
											the next step.&nbsp;</span>
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
											without any delay or issues.&nbsp;</span>
									
							</div>
							</div>
						
							
						</div>
					</section>



				</div>
			</div>
		</div>
	</section>


	<%@include file="footer.jsp"%>

	<script src="js/home.js"></script>
	<script src="js/select2.min.js"></script>
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