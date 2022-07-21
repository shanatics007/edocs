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
<link rel="stylesheet" href="/css/thailand.css" type="text/css">
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
	font-size: 16px !important;
	color: #1d3367 !important;
	text-align: start !important;

   
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
	
	margin-right: 50px;
}
.pymnetprocessing1 {
	color: #1d3367;
	font-size: 18px;
	text-align: start;
	margin-left: 50px;
	margin-bottom:50px;
	margin-right: 50px;
	padding-bottom: 35px;
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
	 padding-top: 50px;

}

ul#transieninfo {
	color: #1d3367;
	margin-left: 80px;
	margin-right: 80px;
	line-height: 3px;
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

ul {
	list-style-type: disc !important;
}
</style>

</head>
<body>
	<div id="overlay" class="hidden mobileMenuOverlay"></div>
	<%@include file="header.jsp"%>
	<div>
		<section class="applyonline" id="onlineapplysection"
			style="background-image: url('/images/Thailand-banner.jpg'); width: auto; height: 500px;">

			<div class="top-content-follow-card-h2">APPLY FOR THAILAND VISA
				ONLINE</div>
			<h4
				style="color: rgb(176, 143, 111); width: 100%; text-align: center; font-size: 20px;"></h4>

			<div class="top-content-follow-card-logo" style="margin: auto;"></div>
			<div class="top-content-follow-card-destination"
				style="width: 30%; margin: auto; padding-top: 40px;">

				<a href="/en/thailand/applicationform">
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
							style="color: #ffff; font-size: 50px; font-weight: 600; text-align: center;">Thailand
							e-Visa Information</h1>

					</div>

					<a href="/en/thailand/applicationform"><button type="button"
							id="applyhere">APPLY ONLINE</button></a>
					<section class="description padding mobile-pt-0">
						<div class="description-steps">
							<p class="description-steps-eta-planning" id="description-steps-first">
								<B>The Thai tourist eVisa</B> is a single-entry electronic visa
								that allows its holders to stay in Thailand for <B>up to 60
									days</B> and stays valid for either <B>3 or 6 months from
									issuing.</B>
							</p>
							<p class="description-steps-eta-planning" style="padding-left: 26px;padding-right: 26px;">
								The <B>electronic visa for Thailand</B> can be used for all
								tourism-related purposes, including making family visits but
								also for medical treatment or participation in meetings,
								conventions, exhibitions, or incentives.
							</p>

							<p class="description-steps-eta-planning" style="padding-left: 26px;padding-right: 26px;">
								Thailand officially implemented <B>a new stickerless eVisa
									system</B> on the 26th of September, 2021 to ease the process of
								obtaining a visa before one's visit to Thailand, offering <B>nine
									different eVisa types</B> for foreign travelers.
							</p>
							<p class="description-steps-eta-planning" style="padding-left: 26px;padding-right: 26px;">
								The new eVisa system no longer requires travelers to submit
								their visa supporting documents at the Thai Embassy or
								Consulate; therefore switching to an entirely <B>online
									system of applying.</B>
							</p>
							<p class="description-steps-eta-planning" id="description-steps-last" style="padding-left: 26px;padding-right: 26px;">
								Citizens of 37 eligible countries can <B>submit their Thai
									eVisa applications online </B>15 business days ahead of the planned
								departure to Thailand to receive the approved document via email
								in PDF form.
							</p>

						</div>
					</section>
					
					

					 <section class="gallery-big padding-rwd">
						<div class="steps" id="thailnadsteps">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3"
									style="color: #1d3367 !important; text-align: center;">
									Thailand e-Visa types</h2>
							</div>
							<p class="description-steps-eta-planning">
								Thailand's Government introduced an extremely extensive <B>eVisa system</B> that offers nine 
								different <B>online visa types</B> for eligible travelers to choose from.
							</p>
							<p class="description-steps-eta-planning">
							The main type of <B>electronic visa for Thailand</B> is the tourist one that serves as a single-entry travel 
							authorization document allowing its holders to stay in Thailand for up to two months.</p>

                            <p class="description-steps-eta-planning">
                                  The approved tourist Thai eVisa can be used for the <B>following purposes:</B></p>

                                  <ul class="TypesThailandEvisa">
                                  <li>leisure-related activities, e.g., a short vacation stay</li>
                                  <li>making family visits</li>
                                  <li>undergoing medical treatment at one of the registered hospitals in Thailand</li>
                                  <li>MICE participation (Meetings, Incentives, Conventions,
                                      Exhibitions)  supported by the Thailand Convention and Exhibition Bureau (TCEB)</li>
                                      </ul>
                                  
                                  
                                 <p class="description-steps-eta-planning">
                                  Thailand offers also <B> 8 additional eVisa types:</B></p>
                                   
                                   <ul class="typeofEvisa">
                                   <li>a business  investor visa (non-immigrant B/IB)</li>
                                   <li>a study visa (non-immigrant ED) </li>
                                   <li>a family visit visa (non-immigrant O)</li>
                                   <li>a transit visa </li>
                                   <li> a long-stay visa (issued for one or five years with the possibility of further extension)</li>
                                   <li> a SMART visa (for investors and entrepreneurs who wish to invest in one 
                                        of the 10 S-Curve industries in Thailand, e.g., the agriculture and biotechnology sector.</li>
                                   <li> a government/diplomatic mission visa (non-immigrant F)</li>
                                   <li> a diplomatic/official visa</li>
                                     </ul>
                                    <p class="description-steps-eta-planning" id="escription-steps-eta-Evisa">
                                  The specific characteristics (such as the validity period or the length of the maximum stay),
                                   as well as the required documents,
                                   differ between the various Thai eVisa types, 
                                   some requiring officially issued documents to be provided.</p>
                                  
                              </div>
                              
                              </section>  
                                
                      <section class="description padding" id="eligible-countries-id">
						<div class="d-flex">
							<div class="small-line"></div>
							<h2 class="description-steps-h3"
								style="color: #1d3367 !important; text-align: center;">
								List of eligible countries</h2>
						</div>

						<p class="ListEligibleCountriesHeading">
							Citizens of the following countries are eligible to apply for the Thai eVisa online:
						</p>

						
						<div class="row" style="color:#1d3367;">

							<div class="col-sm-3 col-md-3 col-xs-6" >
								<ul>
								<li>Albania</li>
								<li>Andorra</li>
								<li>Angola</li>
								<li>Antigua</li>
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
								<li>Bosnia</li>
								<li>Botswana</li>
								<li>Brazil</li>
								<li>Brunei</li>
								<li>Bulgaria</li>
								<li>Burundi</li>
								<li>Cambodia</li>
								<li>Cameroon</li>
								<li>CapeVerde</li>
								<li>Chile</li>
								<li>Colombia</li>
								<li>Comoros</li>
								<li>CostaRica</li>
								<li>CoteD'Ivoire</li>
								<li>Croatia</li>
								<li>Cuba</li>
								<li>Cyprus</li>
								<li>Czech</li>
								<li>Denmark</li>
								<li>Djibouti</li>
								<li>Dominica</li>
								<li>Dominican</li>
								<li>Ecuador</li>
								<li>El Salvado</li>
                                <li>Eritrea</li>
								<li>Estonia</li>
								</ul>
							</div>
							<div class="col-sm-3 col-md-3 col-xs-6">
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
									
								</ul>
							</div>
							<div class="col-sm-3 col-md-3 col-xs-6">
								<ul>
									<li>Madagascar</li>
									<li>Malawi</li>
									<li>Mali</li>
									<li>Marshall</li>
									<li>Mauritius</li>
									<li>Mexico</li>
									<li>Micronesia</li>
									<li>Moldova	</li>
									<li>Monaco</li>
									<li>Mongolia</li>
									<li>Montenegro</li>
									<li>Mozambique</li>
									<li>Myanmar	</li>
									<li>Namibia</li>
									<li>Nauru</li>
									<li>Netherlands</li>
									<li>NewZealand</li>
									<li>CookIslands</li>
									<li>Niue</li>
									<li>Nicaragua</li>
									<li>Niger</li>
									<li>Norway</li>
									<li>Oman</li>
									<li>Palau</li>
									<li>Palestine</li>
									<li>Panama</li>
									<li>Papua </li>
									<li>Paraguay</li>
									<li>Peru</li>
									<li>Philippines</li>
									<li>Poland</li>
									<li>Portugal</li>
									<li>Qatar</li>
									<li>Romania</li>
									<li>Russia</li>
									<li>Rwanda</li>
									<li>SaintKitts</li>
									<li>SaintLucia</li>
									<li>SaintVincent</li>
									<li>Samoa</li>
									
								</ul>

							</div>
							<div class="col-sm-3 col-md-3 col-xs-6">
								<ul>
								
								<li>SanMarino</li>
								<li>Senegal</li>
								<li>Serbia</li>
								<li>Seychelles</li>
								<li>SierraLeone</li>
								<li>Singapore</li>
								<li>Slovakia</li>
								<li>Slovenia</li>
								<li>Solomon </li>
								<li>SouthAfrica</li>
								<li>SouthKorea</li>
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
								<li>Trinidad </li>
								<li>Tuvalu</li>
								<li>Uganda</li>
								<li>Ukraine</li>
								<li>UAE</li>
								<li>UnitedKingdom</li>
								<li>UnitedStates</li>
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
						<div class="countyListedinfo">
						<p style="color:#1d3367; font-size: 18px;"> 
							<b>Travelers whose country is not listed above should apply for their Thai
							visa directly at the Royal Thai Embassy or Consulate in person.
								</b>
						</p>
						</div>
					</section>

					<section class="destinations-list-section">
						<div class="d-flex">
							<div class="small-line"></div>
							<h2 class="description-steps-h3">Thailand e-Visa application
							form</h2>
						</div>
						<div class="formdetails">
						<p>Eligible travelers who wish to <B>visit Thailand using the electronic visa</B> system should first choose
						      <B>the specific Thai eVisa type</B> that goes with their purpose of visit to Thailand.</p>
						</div>
						
						<div class="imponotice">
							<p>
								All applications for the Thai eVisa (no matter the selected type) should be submitted at least 15 business days 
								ahead of the planned trip to Thailand to allow for appropriate visa processing time.
							</p>
						</div>

						
						<div class="pymnetprocessing">
							<p>
								
								<B>To apply online</B> prepare your valid passport along with the details 
								of your planned trip to Thailand and follow these steps:
                                 </p>   
								
							<ol class="stepAppliForm" id="stappli">
                               <li> <p> <b>Fill the Thailand eVisa application form</b> by providing the required 
                                    details and double-check the completed form to make sure it does not contain any errors. </p></li>
                                    
                                   <li><p><b> Cover the service fee</b> using any preferred method of online
                                       payment choosing from several secure methods available. </p></li>
                                       
                               <li><p> <b>Wait for the confirmation email</b> to arrive and print out the received in PDF file eVisa. </p> </li>
                              </ol>
							</div>
							
							
                              
						<div id="evisathailandform">
							<p>
								<B>The electronic visa for Thailand</B> gets processed within 15 business days. 
								That is why it's crucial to submit one's application at least 
								15 business days before the planned departure to Thailand to receive the approved document on time..</p>
								</div>
								
					</section> 

					 <section class="gallery-big padding-rwd">
						<div class="steps" id="thailandvalidity">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3">Validity period</h2>
							</div>
							<p class="description-steps-eta-planning" style="padding-left: 26px;padding-right: 26px;">
		                        The approved <B>Thailand tourist eVisa stays valid for either three or six months</B> onward from the issuing date.
		                         The Thai eVisa is a single-entry travel authorization document;
		                          therefore, allowing one visit to Thailand within its validity period.
                                 </p>

							<p class="description-steps-eta-planning" style="padding-left: 26px;padding-right: 26px;">
								All eligible travelers who wish to enter Thailand with an electronic visa must have passports, 
								which validity period will extend beyond six months from the planned date of arrival in Thailand.
							</p>
							<p class="description-steps-eta-planning" style="padding-left: 26px;padding-right: 26px;">
								<B>Please note! </B> The validity period, as well as the length of the maximum stay,
								 may differ between the various Thai eVisa types available.
								
							</p>
						</div>
					</section>
 

					<section class="gallery-big padding-rwd">
						<div class="steps" id="transitinfo" style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3">Transit information</h2>
							</div>
							<p class="description-steps-eta-planning TransitClass">
								
								Travelers whose itinerary includes a layover in Thailand <B>do not have to apply for a transit visa</B> if:
                                    </p>
                                    
                                    <ul class="tranIdfrom">
                                    
                                    <li><p>their connecting flight is to set off within less than 12 hours of arrival in Thailand </p></li>
                                    
                                    <li><p>they won't leave the designated transit area at the airport</p></li>
                                    
                                    <li><p> they have the required documents for the final destination prepared </p></li>
                                    
                                    <li><p> their flight is booked on the same ticket </p></li>
                                    
                                    </ul>
                                     <div>
								<p class="description-steps-eta-planning">
									This exemption may not apply to Pakistani nationals or travelers who plan on using specific airlines. 
									
								</p>
								<p class="description-steps-eta-planning">
									<b>Transit Thai eVisa</b> serves as a single-entry 30-day travel authorization that stays valid for three months from 
									issuing and can be used for transit, sports activities,
									 or transport-related trips
									
								</p>
								<p class="description-steps-eta-planning" style="padding-bottom: 50px;">
									If you do need a transit visa to take a stopover in Thailand, 
									apply for the transit <b>Thai eVisa online</b> 15 business days before departure.
								</p>
							</div>
						</div>
					</section> 


					 <section class="gallery-big padding-rwd">
						<div class="steps"  id="arrivalstepsid" style="background-color: #ffffff;">
							<div class="d-flex">
								<div class="small-line"></div>
								<h2 class="description-steps-h3">Requirements on arrival</h2>
							</div>
							<p id="arrivalrequirement" style=" color: #1d3367; font-size: 18px;">
						     	Travelers from the <b>37 eligible for the Thailand e-Visa countries</b>
							 must have a few documents upon their arrival in Thailand, including:
							<ul id="transieninfo"> 
								<li><p class="description-steps-eta-planning" id="transieninfo-Id">a printed copy of their approved Thai eVisa</p>
								</li>
								<li><p class="description-steps-eta-planning" id="transieninfo-Id"> their valid passport that will not expire for at least six months forward
								</p>
								</li>

							</ul>
							<div>
								<p class="description-steps-eta-planning" style="padding-bottom: 50px;">
								 
								 Please note! Starting on the 1st of November,
								  2021, all travelers arriving in Thailand by air must register their visit in the Thailand Pass
								  system available on the official Thai Government website at <strong><a href="#">https://tp.consular.go.th/.</a></strong>
								  
								</p>
								
							</div>
						</div>
					</section> 

						<section class="description padding"
						style="padding: 50px; background: #ffff; margin-top: 35pxs;">
						<div class="description-steps">
							<div class="d-flex">
								<h2 class="description-steps-h3"
									style="color: rgb(29, 51, 103); text-align: center; font-weight: 600;">
									Required Documents </h2>
							</div>
							<div class="stepsdescription">
								<p class="description-steps-eta-planning">
									To complete the <b>Thai electronic visa application process</b>,
									eligible travelers should prepare a few documents, including:
								</p>
								<ul class="requridacs">
									<li><p class="description-steps-eta-planning" id="reqireddocumnet">
									<b>a valid passport</b> with a minimum validity period
										of six months from the planned date of arrival in Thailand</p></li>
									
									<li><p class="description-steps-eta-planning" id="reqireddocumnet">
									<b>the applicant's face photograph</b> (that can be
										easily taken using a phone or a PC camera)</p></li>
									
									<li><p class="description-steps-eta-planning" id="reqireddocumnet"> 
									<b>a copy of their return ticket home</b></p></li>
									
									<li><p class="description-steps-eta-planning" id="reqireddocumnet">
									<b>proof of having sufficient funds</b> for the stay
										in Thailand, i.e., $600 per person or $1200 per family</p></li>
									
								</ul>
								<p class="description-steps-eta-planning" id="reqireddocumnet">
									<b>Please note!</b> The above-listed documents apply to the
									tourist Thai eVisa type. Should you choose a different type
									from the nine available, the required documents may differ.
								</p>
								<p class="description-steps-eta-planning" id="reqireddocumnet">Our support team
									will get in touch with every applicant who needs to provide
									additional documents for their application so that it's
									successfully approved.</p>
								
							</div>

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
							<ul class="UlClassFroImptant">
							
								<li><p class="description-steps-eta-planning" id="description-steps-Ids">
								Thailand e-Visa applicants must be holders of passports with
									a minimum validity of six months from the planned date of
									arrival</p></li>
								
								
								
								<li><p class="description-steps-eta-planning" id="description-steps-Ids">
									There are nine types of the Thai eVisa available, each
									one correlating to a specific purpose of visit to Thailand.</p></li>
								
								
							     <li><p class="description-steps-eta-planning" id="description-steps-Ids">
									The electronic tourist visa for Thailand is a
									single-entry travel authorization document that allows a 60-day
									stay in Thailand.</p></li>
						
								
								
								<li><p class="description-steps-eta-planning" id="description-steps-Ids">
									   The validity period of an approved tourist Thailand e-Visa
									extends to three or six months from its issue date.</p></li>
								
								
							
									<li><p class="description-steps-eta-planning" id="description-steps-Ids">
									Thailand e-Visa can get processed up to 15 business days
									from submitting one's application online.</p></li>
							
									<li><p class="description-steps-eta-planning" id="description-steps-Ids">
									   The tourist Thailand e-Visa can be used for tourism
									purposes, including family and friends visits, participation in
									MICE events, and medical treatment</p>
							     
								<li><p class="description-steps-eta-planning" id="description-steps-Ids">
									Approved eVisa gets delivered to each applicant via
									email in PDF form and should be printed before entering
									Thailand</p></li>
									
							</ul>
						</div>

					

						</section>





					

					<section class="benefits-of-evisa padding"
						style="margin-bottom: 35px;">
						<div class="description-steps">
							<div class="d-flex">
								<div class="small-line"></div>
								<h3 class="description-steps-h3" style="font-weight: 600;">Benefits
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
											to get your e-Visa to Thailand. Any issues during the
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
					</section> -->
<!-- 
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
									of arrival in India	</li>
							
								<li>the Indian e-Visa <strong>does not entitle you
										to seek or hold employment in India</strong></li>
								<li>an e-Visa to&nbsp;India&nbsp;<strong>cannot be
										extended</strong></li>
								<li>the electronic visa for India is digitally linked to
									the passport of the holder; <strong>any change in
										your&nbsp;passport results in the online visa&nbsp;becoming
										invalid</strong>. In other words, if your passport expires or is
									updated, you must apply for a new entry permit.</li>
								
								<li>the online Indian visa processing time&nbsp;can take <strong>up
										to&nbsp;72 hours</strong> (3 business days); however, the average time
									of approval when using our services is just <strong>51&nbsp;hours</strong></li>
									
							</ul>
						</div>
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