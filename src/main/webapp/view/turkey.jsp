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
button#applyhere {
display:block;
font-weight: 600;
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
			style="background-image: url('/images/turkeybanner.jpg'); width: auto; height: 500px;">

			<div class="top-content-follow-card-h2">APPLY FOR TURKEY VISA
				ONLINE</div>
			<h4
				style="color: rgb(176, 143, 111); width: 100%; text-align: center; font-size: 20px;"></h4>

			<div class="top-content-follow-card-logo" style="margin: auto;"></div>
			<div class="top-content-follow-card-destination"
				style="width: 30%; margin: auto; padding-top: 40px;">

				<a href="/en/turkey/applicationform">
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
							style="color: #ffff; font-size: 50px; font-weight: 600; text-align: center;">Turkey
							e-Visa Information</h1>

					</div>

					<a href="/en/turkey/applicationform"><button type="button"
							id="applyhere">APPLY ONLINE</button></a>
					<section class="description padding mobile-pt-0"
						style="background-color: #ffff; padding:50px;">
						<div class="description-steps">
							<p class="description-steps-eta-planning">
							
							The Electronic Visa (e-Visa) Application System was 
							launched on 17 April 2013 by the Ministry of Foreign 
							Affairs of the Republic of <b>Turkey.</b> This system allows 
							visitors travelling to Turkey to easily obtain their 
							e-Visas online (www.evisa.gov.tr), in approximately three minutes.
							</p>
							<p class="description-steps-eta-planning">
							It is possible to obtain e-Visa 7/24 at everywhere with internet connection. The applicants can obtain their visa after they fill in the necessary information concerning their identity, passport and travel dates and pay visa fee online.
							</p>
							
							<p class="description-steps-eta-planning">
							Please note that e-visa is only valid when the purpose of travel is tourism or commerce. For other purposes, such as work and study, visas are given by Turkish Embassies or Consulates.
							  </p>
							<p class="description-steps-eta-planning">
							The term "official passports" covers diplomatic, service, special and official passports
							</p>
							<p class="description-steps-eta-planning">
							You are kindly advised to have a travel document/passport valid for at least 6 months as from the date of your arrival in Turkey.
							</p>
							
						</div>
					</section>
					<section class="description padding" style="padding: 50px; background: #ffff;">
						<div class="description-steps">
							<div class="d-flex">
								<h2 class="description-steps-h3"
									style="color: rgb(29, 51, 103); text-align: center; font-weight: 600;">
									IMPORTANT UPDATE </h2>
							</div>
							<div class="stepsdescription">
								<p class="description-steps-eta-planning">
									<b>Please note!</b>  <a href="#">  Form for Entry to Turkey.</a>
									The newly introduced health form must be presented along with a valid Turkey e-Visa upon arrival.
								</p>
								<p class="description-steps-eta-planning">
								The Entry Form was introduced due to the ongoing Covid-19 pandemic to help reduce the virus spread.
								</p>

								<p class="description-steps-eta-planning">
								<b>Don’t</b> forget to apply for the Entry Form online within 72 hours prior to the planned departure date.
								</p>


							</div>

						</div>
					</section>





					<section class="gallery-big padding-rwd" style="margin: 35px 0px 0px 0px !important">
						<div class="steps" id="impinfo" style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3"
									style="color: #1d3367 !important; text-align: center; font-weight: 600;">
									Important Information</h2>
							</div>
							<p class="description-steps-eta-planning"
								style="padding-right: 50px; padding-left: 50px;">
								The Turkey e-Visa is available as a single entry visa - for a 30-day stay and a multiple entry visa - for a 90-day stay. Both types stay valid for 90 days from the date of issue.
							</p>
							<p class="description-steps-eta-planning"
								style="padding-right: 50px; padding-left: 50px;">
								Turkish e-Visa processing time can take up to 3 business days or less, with an average of just 19 hours!
							</p>
							<p class="description-steps-eta-planning"
								style="padding-right: 50px; padding-left: 50px;">
								Travelers must enter Turkey within one month from the date of issue of the e-Visa and not later than 90 days after the issue date.
								
							</p>

							<ul id="impinfolist" style="padding-left: 100px; list-style-type: initial; padding-right: 100px; padding-bottom: 50px; color:#1d3367;">
								<li>
								Travelers transiting through Turkey are not required to obtain an electronic visa. However, transiters must remain within the transit area of the airport while awaiting their connecting flight. Otherwise, you need an electronic entry permit
								
								</li>
								<li>
								All travelers must carry a printed copy of their online visa and present it, along with a valid passport, at their entry point into Turkey
								
								</li>
								<li>
								The validity of the Turkey e-Visa (6 months) begins on the date of issue
								
								</li>
								<li>
								Travelers must apply for their electronic visa at least 3 business days in advance of the travel
								</li>

								
							</ul>
						</div>

					</section>
					




			





					<!-- <section class="gallery-big padding-rwd" style="margin: 35px 0px 0px 0px !important">
						<div class="steps" style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3"
									style="color: #1d3367 !important; text-align: center;">
									Types Of India e-Visa Information</h2>
							</div>
							<p class="description-steps-eta-planning"
								style="padding-right: 80px; padding-left: 80px;">
								The Indian Government issues various types of visa for foreign nationals,
								 depending on the purpose of travel to India. 
								In this article, we look at the different types of Indian visa.
							</p>

							<ul style="padding-left: 100px; padding-right: 100px; padding-bottom: 50px; color:#1d3367;">
								<li>
								<h3 style="font-size: 20px; color: #1d3367; font-weight: 600; ">
								Business Visa
								</h3>
									<p>
										<b> Indian business visa</b> 
										s provided to foreign nationals travelling to India for business 
										purposes like exploring business opportunities,
										 incorporation of an Indian company, attending meetings, etc., 
										 the Business visa is initially granted for a period of six months 
										 to one year, five years or ten year – based on the requirement of 
										 the visa applicant. Anyone travelling on a business visa to India can 
										 only stay for a maximum of six months for each visit. To obtain an Indian 
										 business visa, a letter from the sponsor is required, indicating the nature 
										 of the applicant’s business, duration of stay and a guarantee to meet 
										 maintenance expense.
									</p>
								</li>
								<li>
								<h3 style="font-size: 20px; color: #1d3367; font-weight: 600;">
								Tourist Visa
								</h3>
									<p>
										The <b>Indian tourist visa</b> 
										is provided for travellers visiting India for exploring places 
										or visiting family members or friends. Also, the tourist visa holds 
										a validity of six months to ten years. The maximum amount of stay 
										permitted in each visit 
										is six months, irrespective of the visa duration.
									</p>
								</li>
								<li>
								<h3 style="font-size: 20px; color: #1d3367; font-weight: 600;">
								Employment Visatypes Of Indian Visa
								</h3>
									<p>
										Any applicants who wish to work in India can obtain an
										<b>employment visa.</b>
										Application for employment vis must 
										be accompanied by an appointment letter, 
										employment contract and proof of registration of 
										company/entity in India. Employment visa is provided 
										for a period of one year, with provision for extension. 
										The maximum period for an employment visa is five years 
										from the date of issue of visa.
									</p>
								</li>
								<li>
								<h3 style="font-size: 20px; color: #1d3367; font-weight: 600;">
								Student Visa
								</h3>
									<p>
									Any students wishing to pursue an education in India can obtain a
									<b>student visa.</b>
									 To obtain a student visa requires a letter confirming admission from an educational institution in India. However, for admission to medical or paramedical courses and for admission to graduate or post-graduate courses, requires a letter of approval or a “no objection” certificate 
									 from the Ministry of Health or Ministry of Human Resources Development.
									</p>
								</li>

								<li>
								<h3 style="font-size: 20px; color: #1d3367; font-weight: 600;">
								Research Visa
								</h3>
									<p>
										Any travelers engaged in research and development activities can obtain
										<b>research visa.</b>
										To obtain a research visa, the application must 
										be made with approval from the Ministry of Human 
										Resources Development. Therefore, research visas 
										are provided with validity as required to complete 
										the research or development activities in India.

									</p>
								</li>
							</ul>
						</div>

					</section> -->


					<!-- <section class="description padding"
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
						<p>To apply for an e-Tourist visa for India, travelers complete the online form. The following basic information is required:</p>
						</div>
						<ul id="formprocesslist">
							<li>Full name</li>
							<li>
								Date and place of birth
							</li>
							<li>
								Contact information
							</li>
							<li>
								Passport details
							</li>
						</ul>
						<div class="imponotice">
							<p>
								<b>Important! </b>our passport must stay valid for <b>at
									least 6 months</b>from the planned date of arrival to India.
							</p>
						</div>

						
						<div class="pymnetprocessing">
							<p>
								There are also a series of eligibility and security questions. To finalize the request, the tourist visa fees are paid securely online by debit or credit card.
							</p>

							<p>
								Most e-Tourist visa applications are approved in 2-4 business days. Travelers receive the visa for India by email.
							</p>
						</div>
					</section> -->

					<!-- <section class="gallery-big padding-rwd">
						<div class="steps" style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3">Validity period</h2>
							</div>
							<p class="description-steps-eta-planning">
								The tourist visa for India that you can apply for on this website is valid for 30 days. This means that you can arrive in India within a period of 30 days, which starts from the moment your application is approved. The validity period is also stated on the visa.
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
 -->

					<!-- <section class="gallery-big padding-rwd">
						<div class="steps" style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3">Transit information</h2>
							</div>
							<p class="description-steps-eta-planning">
								Indian visa requirements state that all non-visa-exempt travelers who are passing through an Indian airport for more than 24 hours, or who intend to leave the airport Transit Area, are required to have a visa to transit through India. 
								</p>
							<div>
								<p class="description-steps-eta-planning">
									Therefore, an India transit visa is required for connecting flights with a wait time of over 24 hours, as determined by scheduled arrival and departure times. 
									
								</p>
								<p class="description-steps-eta-planning">
									Even though the traveler has a connecting flight within 24 hours of 
									arriving in India, they may be required to leave the airport Transit 
									Area for one reason or another. For example, it may be necessary to clear immigration to recheck luggage for the connecting flight, or because the 
									travel wishes to stay in a hotel outside the transit area. 
									
								</p>
								<p class="description-steps-eta-planning" style="padding-bottom: 50px;">
									In such cases, it will be necessary to obtain a transit visa for India in advance through the Indian electronic visa application online.
									
								</p>
							</div>
						</div>
					</section> -->


					<!-- <section class="gallery-big padding-rwd">
						<div class="steps" style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3">Requirements on arrival</h2>
							</div>
							<p style=" color: #1d3367; font-size: 18px; margin-right: 50px; margin-left: 50px;">
							The visa on arrival is part of the e-Visa India program. Every traveler that arrives in India with a valid India e-Visa will also receive a visa on arrival in the form of a sticker. The sticker is placed on a page in the passport when going through immigration control.
							<ul id="transieninfo"> 
								<li>
									<p>

										<b>A valid passport.</b> Please note that the passport must be
										<b>valid for at least six months</b> past the planned date of
										arrival to India.
									</p>

								</li>
								<li>
									<p>
										<b>A print-out copy of your e-Visa.</b> You will receive the
										approved entry permit at your email address <b>in PDF form
										</b> within a maximum of <b>72 hours.</b>
									</p>
								</li>

							</ul>
							<div>
								<p class="description-steps-eta-planning" style="padding-bottom: 50px;">
								In order to receive the visa on arrival for India sticker, the traveler must show their printed copy of their e-Visa for India along with the passport. Be mindful that there are three main categories of e-Visa for India: the e-Tourist visa, e-Business visa, and the e-Medical visa.
								</p>
							</div>
						</div>
					</section> -->


<!-- 
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
					</section> -->


					<!-- <section class="gallery-big padding-rwd">
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
 -->
					<!-- <section class="gallery-big padding-rwd" style="background-color: #ffff;">
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
										</strong>from the  institution confirming cooperation
										and providing basic details of the stay length and type of
										education that the applicant is going to undergo
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
					</section>
 -->
					<section class="benefits-of-evisa padding"
						style="margin-bottom: 50px;">
						<div class="description-steps">
							<div class="d-flex">
								<div class="small-line"></div>
								<h3 class="description-steps-h3" style="font-weight: 600;">Benefits of Evisa Express</h3>
							</div>
							<ul class="description-steps-ul">
								<li class="description-steps-ul-step display-flex" style="display: block !important;">
									<div class="step-icon step-icon-1" style="margin: auto; background-image: url(/images/easy-application-process.png);"></div>
									<div class="description-steps-text" style="margin: auto;">
										<span class="description-steps-text-main">Easy
											application process</span><span
											class="description-steps-text-bottom" style="text-align: center;">There are three
											easy steps to get your e-Visa to Turkey. Any issues during the
											application process can be addressed by contacting our
											support team</span>
									</div>
								</li>
								<li class="description-steps-ul-step display-flex" style="display: block !important;">
									<div class="step-icon step-icon-2"  style="margin: auto; background-image: url(/images/qualified-team-of-experts.png);"></div>
									<div class="description-steps-text" style="margin: auto;">
										<span class="description-steps-text-main padding-right50">Qualified
											team of experts</span>
											<span class="description-steps-text-bottom" style="text-align: center;">A
											qualified team oversees the processing of each and every
											application</span>
									</div>
								</li>
								<li class="description-steps-ul-step display-flex" style="display: block !important;">
									<div class="step-icon step-icon-3" style="margin: auto;   background-image: url(/images/guarantee-of-service.png);"></div>
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
								<h2 class="description-steps-h3" style="color: rgb(29 51 103); text-align: center; font-weight: 600; padding-bottom: 50px;">
								Three easy steps to get your e-Visa
								</h2>
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
											<span class="description-steps-text-bottom">You
											need to mention the data like email address, aim to visit the
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
											<span class="description-steps-text-bottom">Pay
											the handling for the EDOCS Travel fee for using available
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
										<span class="description-steps-text-main">Check For The Inbox</span> 
										</div>
										<div id="stepsparagraph">
											<span class="description-steps-text-bottom">EDOCS
											Travel will instantly make out approval for the application
											with an email box. Make sure for the email address after the
											application form once you receive it. All of these would come
											without any delay or issues.&nbsp;</span>
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