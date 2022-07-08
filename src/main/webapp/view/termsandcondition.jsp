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

<style>
@media ( max-width : 599px) {
}

@media ( min-width : 599px) {
	background-image:url('/images/background2.jpg');
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
background-color:#FF0000;
-webkit-box-shadow:0015px
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
background-color:#FF0000;
box-shadow:0015px

#FF0000;}100%
{
background-color:;
box-shadow:003px
#B20000
;
}
}
@keyframes glowing { 0% {
	background-color: #1d3367;
	box-shadow: 0 0 3px #1d3367;
}

50%
{
background-color:#FF0000;
box-shadow:0015px

#FF0000;
}
100%
{
background-color:#B20000;
box-shadow:003px

#B20000;
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
					
						<div class="description-steps">
							<p class="description-steps-eta-planning">
							<h1 id="definationId">
								Definitions
							</h1>
							<p><b>Regulations</b> – the regulations defining the rules of using the The
							Service and the rules of providing Services by IVS through it.</p>
							
							<p><b>The Service</b> – the website with www address EVISA.EXPRESS through
							which IVS operates to provide the Services.</p>
							<p><b>Services</b> – the visa
							services provided by IVS for Users of The Service.</p>
							<p><b>Agreement</b>–
							the agreement for provision of the visa services concluded
							between IVS and the User through The Service.</p>
							<p><b>Personal data</b> –
							information about an identified or identifiable natural person
							(“the data subject"); an identifiable natural person is a person
							who can be directly or indirectly identified, in particular on
							the basis of an identifier such as name, identification number,
							location data, internet identifier or one or more specific
							factors determining physical, physiological, genetic,
							psychological, economic, cultural or social identity of a natural
							person; for the purposes of the Regulations, the term personal
							data also includes data carriers such as documents and
							photographs.</p>
							<p> Sensitive personal data-data revealing racial or
							ethnic origin, political views, religious or ideological beliefs,
							trade union membership, genetic data, biometric data allowing to
							identify unequivocally a person or the data on the person's
							health, sexuality or sexual orientation.</p>
							<p><b>User</b> – a natural person
							who, through the form available on The Service concludes an
							agreement for provision of visa services.</p>
							<p> <b>IVS</b> - INTERNATIONAL
							VISA SERVICE spółka zograniczoną odpowiedzialnością spółka
							komandytowa (LLC LLP) with its registered office in Katowice, ul.
							Graniczna 29, 40-017 Katowice, NIP: 9542766476, REGON: 364718356,
							entered by the Katowice-Wschód District Court in Katowice, 8th
							Commercial Division, under the number KRS 0000623079</p>
							<p><b> GDPR</b> –
							Regulation (EU) 2016/679 of the European Parliament and the
							Council of 27 April 2016 relating to protection of natural
							persons with regard to the processing of personal data and rules
							relating to free flow of personal data and repealing of the
							Directive 95/46/EC (general regulation on data protection).</p>
					
							<p><b>Visa</b>– a written permission to cross the border or stay in a foreign
							country issued to foreigners by diplomatic or consular
							representatives (consulates) of the particular country.
							</p>

							<p><b>Profiling</b> - means any form of automated processing of
								personal data, which means the use of personal data to assess
								some of the personal constituents of a natural person, in
								particular to analyse or forecast aspects related to the effects
								of the work of that person, its economic situation, health,
								personal preferences, interests, credibility, behaviour,
								location or movement.</p>
							
								<h1 id="concluId"> Conclusion and performance of the</h1>
							
							<p><b>1</b>. By using The Service service, the User concludes the
								Agreement with IVS on provision of visa services, under which
								IVS undertakes to submit an application in the name and on
								behalf of the User to the relevant office to obtain a visa for
								the User, and the User undertakes to pay remuneration for IVS.</p>
							<p><b>2</b>. The User concludes the Agreement by completing the
								registration form on The Service and by paying remuneration to
								IVS. The remuneration includes the consular fee and the IVS
								commission. The remuneration is considered to have been paid
								when the money transfer is deposited in the IVS bank account.
								The User makes a payment by traditional bank transfer, by credit
								card or by means of electronic payment services. The detailed
								rules for the use of electronic payment services are described
								below:</p>
							<ul>
								<li><b>a) PayU</b></li>
								<li><b>b) Ingenic</b></li>
								<li><b>c) Klarna</b></li>
								<li><b>d) Paypal</b></li>
							</ul>
							<p>Regulations of mentioned payment services are available in
								Annex No. 2 to the Regulations.
							<p><b>3</b>. The User completing the registration form is obliged to
								provide all data required in the form. The given data should be
								true, current and correct. After concluding the Agreement to
								verify the User's data, IVS may contact the User on the
								telephone number provided by the User.</p>
							<p><b>4</b>. After the conclusion of the Agreement, IVS sends
								confirmation of the conclusion of the Agreement along with
								specification of its terms to the e-mail address of the User.</p>
							<p><b>5</b>. IVS reserves the right to request the User to
								supplement personal data, provide additional data or submit
								relevant documents, if such requests are submitted to IVS by the
								visa issuing authority.</p>
							<p><b>6</b>. IVS indicates that after providing the user with the
								IVS service, the User will lose the right to withdraw from the
								Agreement.</p>
							<p><b>7</b>. By concluding an Agreement for provision of visa
								services with the IVS, the User declares that:</p>
							<p>a) the data provided in the form are complete, true,
								current and free of errors, and other spelling mistakes;</p>
							<p>b) the User is entitled to use the indicated data, as well
								as providing the data by the User does not violate the rights of
								third parties;</p>
							<p>c) the User is familiar with the amount of the
								remuneration due to IVS and accepts it;</p>
							<p>d) the User is aware that providing untrue, incorrect or
								obsolete data results in impossibility of issuing a visa or
								impossibility of using a visa issued on the base of defective
								data,</p>
							<p>e) the User has read the following Regulations and
								consents to the content of all its provisions</p>
							<p>f) the User is aware that after fulfilling the service
								provided under the Visa Service Agreement by IVS, the User loses
								the right to withdraw from the Agreement;</p>
							<p>g) the User has voluntarily concluded an Agreement with
								IVS by using The Service.</p>
							<p><b>8</b>. Accepting the Regulations by the User constitutes the
								User's statement that the User has read the terms and conditions
								of using The Service.</p>
							<p><b>9</b>. Conclusion of the IVS Agreement by the User is
								tantamount to granting the IVS the proxy by the User to
								represent the User before the office competent to issue a visa
								in order to submit a visa application, pay an official fee for a
								visa and receipt of the visa, as well as other actions necessary
								in the process of issuing the subject visas and to the extent
								necessary to fulfil the Agreement.</p>
							<p><b>10</b>. The User's withdrawal from the Agreement is tantamount
								to the termination of the proxy granted to IVS to represent the
								User before the office competent to issue a visa.</p>
							<p><b>11</b>. IVS transfers the User's personal data to the office
								competent to issue a visa together with the application for the
								visa.</p>
							<p><b>12</b>. Immediately after receiving the visa from the
								competent visa authority, IVS sends the visa to the User by
								email to the email address provided by the User in the
								registration form. Instructions for using the visa will be sent
								to the User together with the visa.</p>
							<p><b>13</b>. If the visa application can not be submitted due to
								the provisions of international law or internal regulations of
								the country which visa the User has applied for, IVS retains the
								amount of € 15 (fifteen euros) for preparation and analysis of
								the data. The remaining amount paid by the User is immediately
								returned to the bank account of the User from which the payment
								was made. If it is not possible to return the funds in this
								manner, IVS returns it to the account indicated by the User.</p>

							<h1 id="ivsId">
								 IVS Responsibility
							</h1>
							<p><b>1</b>. IVS, ensuring correctness and continuity of The Service
								operation, conducts ongoing technical supervision of its
								performance.</p>
							<p><b>2</b>. IVS is responsible for the operation of The Service
								sub-pages or their content.</p>
							<p><b>3</b>. IVS shall not be responsible, inter alia, for:</p>


							<ul>
								<li>a) consequences of providing, by the User in the
									registration form, data inconsistent with the actual state,
									outdated or incomplete, moreover the Service Provider is not
									responsible for the consequences of the User's failure to
									update or improve the data;</li>

								<li>b) damages resulting from the User's violation of the
									rights of third parties which are due to the use of the
									website;</li>
								<li>c) damages caused by disruptions, interruptions or
									unavailability of the Service caused by force majeure;</li>
								<li>d) damages caused or being the result of disobeying the
									rules of the Regulations;</li>
								<li>e) damages resulting from defectiveness or
									incompatibility of the device used by the User;</li>
								<li>f) the consequences resulting from the decision of the
									office competent to issue a visa, to the extent that IVS can
									not bear the blame for the content of the decision.</li>
							</ul>
							<p><b>4</b>. IVS indicates that the date of performance of the
								Agreement, and in particular delivery of the visa to the User,
								depends on the decision of the office competent to issue a visa
								for which IVS is not liable to the extent that IVS can not bear
								the blame for delay of its issue.</p>
							<p><b>5</b>. The exemption of IVS from liability for damage
								specified in the Regulations takes place d in accordance with
								the provisions of the Act dated on 23rd April 1964, the Civil
								Code (Journal of Laws of 2018, position 1025 with further
								amendments) and the provisions of Chapter 3 of the Act of 18th
								July.2002, on provision of electronic services (Journal of Laws
								of 2002, No. 144, position 1204, with further amendments).</p>



							<h1 id="caluId">Information clause - protection of personal data</h1>
							
									

							<p>To comply with the obligations arising from the Regulation
								(EU) 2016/679 of the European Parliament and the Council of 27th
								April 2016 on protection of natural persons in relation to the
								processing of personal data and on free flow of such data and
								repealing Directive 95/46/EC (General Data Protection
								Regulation) hereinafter referred to as GDPR, INTERNATIONAL VISA
								SERVICE Limited Liability Company Limited Partnership with the
								registered office in Katowice, ul. Graniczna 29 (29 Graniczna
								St.), 40-017 Katowice, NIP: 9542766476, REGON: 364718356,
								entered by the Katowice-Wschód District Court in Katowice, 8th
								Commercial Division, under KRS number 0000623079 (hereinafter
								referred to as IVS), informs about the processing of the
								client's personal data and the rights the client is entitled to.
								The following rules are applicable as of May 25th, 2018.</p>

							<b>The controller of the personal data</b>

							<p>INTERNATIONAL VISA SERVICE Limited Liability Company
								Limited Partnership with the registered office in Katowice, ul.
								Graniczna 29 (29 Graniczna St.), 40-017 Katowice, NIP:
								9542766476, REGON: 364718356, entered by the Katowice-Wschód
								District Court in Katowice, Sth Commercial Division, under KRS
								number 0000623079 is the controller of the personal data.</p>
							<p><b>Telephone number: +44 2031 293 603</b></p>
							<p><b>E-mail address:support@evisa.express</b></p>

							<b>Data protection officer </b>
							<p>The data protection officer at IVS can be contacted by
								email sent to the address:<b> data-protection@ivs.travel</b></p>
							<b>Purpose and legal basis of the data processing </b>

							<p>IVS processes personal data for the purpose of executing a
								contract to which the person whose data are processed is a
								party, or to take actions at the request of the data subject
								before concluding the contract (Article 6 par. 1 letter b of the
								GDPR).</p>
							<p>In certain situations, IVS may process personal data due
								to the need to comply with legal obligations to which IVS is
								subject (Article 6 par. 1 letter c of the GDPR), or the
								processing is nec essary to protect the vital interests of the
								data subject or another natural person (Article 6 par. 1 letter
								d of the GDPR), or processing is necessary for the purposes of
								the legitimate interests pursued by IVS (Article 6 par. 1 letter
								f of the GDPR), in particular, for the purpose related to:</p>
							<p>marketing of products and services of IVS;</p>
							<ul>
								<li>monitoring and improvement of the quality of services
									provided by IVS, including monitoring of telephone
									conversations and meetings, carrying out customer satisfaction
									surveys of services provided;</li>
								<li>if applicable, the conduct of disputable proceedings,
									as well as proceedings before public authorities and other
									proceedings, including carrying on enquiry and defence against
									claims;</li>
								<li>improving the quality of services, which includes
									examining traffic on the website and profiling.</li>

							</ul>
							<p>In all other situations, personal data are processed
								solely on the basis of the consent granted for the purpose
								specified in its content (Article 6 par. 1 letter a of the
								GDPR).</p>
							<p>In all situations, your sensitive personal data are
								processed only on the basis of the consent granted for the
								purpose specified in it (Article 9 paragraph 2 letter a of the
								GDPR). Data collected by the site may be used for standard
								profiling, i.e. for statistical purposes and for purposes of
								internal marketing analysis, which does not cause any legal
								consequences for the person whose data have been collected or
								does not significantly affect the person in any other similar
								way.</p>
							<b>Recipients of data</b>
							<p>IVS discloses or may disclose personal data to the
								following recipients or categories of recipients, in particular
								to:</p>
							<ul>
								<li>public authorities and relevant state offices,
									competent to process visa applications and to issue visas;</li>
								<li>entities that participate in the processes necessary to
									perform contracts concluded with clients, including banks,
									credit card operators, electronic and online payment agents;</li>
								<li>entities which support IVS in business processes,
									including in particular entities processing personal data for
									IVS (so-called data processors), inter alia:</li>
								<li><b>-</b> hosting companies,</li>
								<li><b>-</b> legal services and accounting services,</li>
								<li><b>-</b> companies and external entities carrying out
									processes which are a part of the activi ties necessary to
									conclude the contract with a client.</li>
							</ul>
							<b>Time of data processing</b>
							<p>The client's personal data, including sensitive data
								provided on the basis of consent, are processed by IVS for the
								time necessary to achieve the objectives indicated in point 3,
								that is, until the contract is concluded. After that period, IVS
								may process the client's data for a period of time and to the
								extent specified by law or for the pursuit of the legitimate
								interest of the data controller as in point. 3, however, no
								longer than 6 years since their collection. Insensitive data
								processed on the basis of separate consent shall be kept until
								the consent is withdrawn.</p>

							<b>The rights of data subjects</b>
							<p>IVS guarantees all clients exercise of the data subject
								rights granted by the GDPR, including in particular:</p>
							<ul>
								<li><b>1</b>. The right to access the personal data;</li>

								<li><b>2</b>. The right to request correction of the personal data
									which are incorrect and the right to request supplementing of
									the incomplete personal data,</li>

								<li><b>3</b>. The right to request erasure of the personal data
									("the right to be forgotten"), when:</li>
								<li>a) the personal data are no longer necessary for the
									purposes for which they have been collected or otherwise
									processed;</li>
								<li>b) the data subject has withdrawn the consent on which
									the processing is based and there is no other legal ground for
									their processing;</li>
								<li>c) the data subject objects to the processing;</li>
								<li>d) the personal data have been unlawfully processed;</li>
								<li>e) the personal data have to be erased for compliance
									with a legal obligation provided by law;</li>
								<li>f) the personal data have been collected in relation to
									the offer of information society services.</li>

								<li><b>4</b>. The right to request restriction of processing of
									the personal data when:</li>
								<li>a) the data subject challenges correctness of the
									personal data;</li>
								<li>b) the processing is unlawful and the data subject
									opposes to erasure of the personal data, requesting to limit
									their use instead;</li>
								<li>c) the controller no longer needs the personal data for
									processing but it is necessary for the data subject to
									establish an enquiry or defend their claims;</li>
								<li>d) the data subject has objected to the processing -
									pending determination of whether the legitimate grounds on the
									part of the controller take precedence over the grounds of
									objection.</li>
								<li><b>5</b>. The right to transfer personal data if:</li>
								<li>a) the processing takes place on the basis of consent
									or on the basis of a contract, and;</li>
								<li>b) the processing is automated.</li>

								<li><b>6</b>. The right to object to the processing of personal
									data, if there are reasons related to the client's special
									situation and the processing results from indispensability for
									the purposes resulting from legally justified interests pursued
									by the controller.</li>
							</ul>

							<b>Withdrawal of consent to data processing</b>
							<p>To the extent of the client's consent to processing of
								their personal data, the client is entitled to withdraw the
								consent at any time. The withdrawal takes place without
								affecting the legality of the processing which was carried out
								on the basis of the consent prior to its withdrawal.</p>

							<b> The right to lodge a complaint with the supervisory
								authority</b>
							<p>In any situation, when the client considers that IVS
								processes personal data contrary to the provisions of the GDPR,
								the client has the right to lodge a complaint with the
								appropriate supervisory authority.</p>

							<b>Transfer of personal data to countries outside the
								European Economic Area</b>

							<p><b>1</b>. IVS may transfer personal data to international
								organizations and countries outside the European Economic Area
								for which the Commission has not found an adequate level of
								protection of personal data, in particular to the USA. The
								transfer of data takes place on the basis of standard
								contractual clauses agreed with the recipient, the content of
								which has been adopted by the European Commission and ensures
								the highest standards of personal data protection applied on the
								market.</p>

							<b>2. If you are applying for a visa to:</b>

							<p>
								<b>a) Australia</b> - IVS transfers personal data to countries
								outside the European Economic Area: Australia - the transfer of
								data is necessary for carrying out the contract of the visa
								agency.
							</p>

							<p>
								<b>b) Bahrain</b> - IVS transfers personal data to countries
								outside the European Economic Area: Bahrain – the transfer of
								data is necessary for carrying out the contract of the visa
								agency.
							</p>

							<p>
								<b>c) Canada</b> - IVS transfers personal data to countries
								outside the European Economic Area: Canada – the transfer of
								data is necessary for carrying out the contract of the visa
								agency. In addition, the Commission decision of 20th December
								2001 stated that the regulations in force in Canada ensure an
								adequate level of protection of personal data.
							</p>

							<p>
								<b>e) Egypt</b> - IVS transfers personal data to countries
								outside the European Economic Area: Egypt - the transfer of data
								is necessary for carrying out the contract of the visa agency.
							</p>
							<p>
								<b>f) India </b>- IVS transfers personal data to countries
								outside the European Economic Area: India – the transfer of data
								is necessary for carrying out the contract of the visa agency.
							</p>
							<p>
								<b>g) Kenya </b>- IVS transfers personal data to countries
								outside the European Economic Area: Kenya - the transfer of data
								is necessary for carrying out the contract of the visa agency.
							</p>
							<p>
								<b>h) Mjanma (Birma) </b>- IVS transfers personal data to
								countries outside the European Economic Area: Mjanma (Burma) -
								the transfer of data is necessary for carrying out the contract
								of the visa agency.
							</p>
							<p>
								<b>i) Oman </b>- IVS transfers personal data to countries
								outside the European Economic Area: Oman – the transfer of data
								is necessary for carrying out the contract of the visa agency.
							</p>
							<p>
								<b>j) Sri Lanka</b> - IVS transfers personal data to countries
								outside the European Economic Area: Sri Lanka – the transfer of
								data is necessary for carrying out the contract of the visa
								agency.

							</p>
							<p>
								<b>k) Tanzania </b>- IVS transfers personal data to countries
								outside the European Economic Area: Tanzania, the transfer of
								data is necessary for carrying out the contract of the visa
								agency.
							</p>
							<p>
								<b>1) Turkey </b>- IVS transfers personal data to countries
								outside the European Economic Area: Turkey- the transfer of data
								is necessary for carrying out the contract of the visa agency.
							</p>
							<p>
								<b>m) USA </b>- IVS transfers personal data to countries outside
								the European Economic Area: USA
							</p>
							<p><b>– the transfer of data:</b></p>
							<ul>
								<li>is necessary for carrying out the contract of the visa
									agency;</li>
								<li>and/or</li>
								<li>takes place on the basis of standard contractual
									clauses agreed with the recipient, the content of which has
									been adopted by the European Commission and ensures the highest
									standards of personal data protection applied on the market.</li>
							</ul>
							<p>
								<b>n) Vietnam </b> - IVS transfers personal data to countries
								outside the European Economic Area: Vietnam – the transfer of
								data is necessary for carrying out the contract of the visa
								agency.
							</p>
							<p><b>3</b>. The client has the right to obtain a copy of the data
								transferred by IVS.</p>

							<b>X.Obligation to provide personal data</b>
							<p>Providing personal data is entirely voluntary. Providing
								data is a condition for concluding a visa contract with IVS or
								it is necessary to achieve the objectives arising from the
								legitimate interests of IVS. Failure to provide all the data
								will prevent conclusion and execution of the indicated contract.
							</p>
                                      <h1 id="cokpoliId"> Cookie policy</h1>
                                      
                   <p>This policy defines the rules for storing information and accessing
 information already stored (cookies and other technologies including local storage) 
 by INTERNATIONAL VISA SERVICE Limited Liability Company Limited Partnership with 
 the registered office in Katowice, ul. Graniczna 29 (29 Graniczna St.), 40-017 Katowice, 
 NIP: 9542766476, REGON: 364718356, entered by the Katowice-Wschód District Court in Katowice, Sth 
 Commercial Division, under KRS number 0000623079 in the telecommunication device of the end user 
 (computer, smartphone, tablet) of the website and its sub-pages.</p>

<p>Cookies are small text files created by a web server, stored on the user's end device. Cookies, specifically the information stored in them, are read primarily by the server that created them. The purpose of saving cookies is to store the website user's data in the browser-saving the user's information, including the frequency of the user's visits to the website. Local storage files are used to facilitate the use of registration forms on the website because they save the data entered into the registration forms. Local storage files may store personal data. Only the website that generated cookies or local storage has access to them. The most important cookies:</p>
<ul>
<li><p>A cookie native to PHP applications – this cookie is used to collect and recognize a users' exceptional session ID to manage user session on the website. The cookie is deleted when a user closes all the browser windows.</p></li>

<li><p>A cookie is used to collect a user's language preferences to serve up content in that collected language during future visits of the user on the website.</p></li>
</ul>

<p><b>The cookies installed by Google Analytics:</b></p>

<ul>
<li><p>
A cookie is used to calculate data such as: visitors, sessions, campaign and to keep track of site usage for the site's analytics report. Information stored by a cookie is anonymous, because the cookie assigns a randomly generated number to identify every visitor.
</p></li>
<li><p>
A cookie is used to collect information about visitors' ways of using a website. The cookie is needed to create an analytics report of the website results. The data includes the number of visitors, where do they come from, the pages visited in an anonymous form.

</p></li>
</ul>

<p> A cookie installed by Google Universal Analytics to reduce the request rate to limit the storage of date on high traffic websites.</p>

<p>A cookie installed by Yadex Metrica - this cookie is used to calculate data such as:</p>

<p>visitors, sessions, campaign and to keep track of site usage for the site's analytics report. Information stored by a cookie is anonymous, because the cookie assigns a randomly generated number to identify every visitor.
</p>

<p>IVS uses cookies and other technologies for statistical purposes to calculate the number of user visits per page and to optimally match the content of the website to user's preferences and easier usage of the website by users. ETACANADAONLINE.COM  </p>

<p>IVS website uses session cookies that are deleted immediately after leaving the website or its sub-pages by the user, as well as persistent cookies, which are stored on the user's end device, and which are not automatically removed after the end of the session. Local storage files are generally not automatically deleted and they are saved in the user's browser memory. </p>

<p><b>A user who does not want cookies and files from other technologies to be stored in the browser's memory should:</b></p>

<p>clear the browser's memory,</p>
<p>in the browser settings disable the option of saving cookies and files from other technologies, or specify the time after which cookies are automatically removed from the browser's memory. Completely preventing the saving of cookies may significantly impede use of some websites.</p>

<h1 id="withagreId"> Withdrawal from the Agreement</h1>

<p>The user who has concluded an Agreement with the IVS for provision of visa services may withdraw from it within 14 days without giving any reason and without incurring
costs.</p>

<p>If the User withdraws from the Agreement, it is considered void.</p>

<p>If the User made a statement on withdrawal from the Agreement before IVS accepted the User's offer, the offer ceases to be binding.</p>

<p>The period of withdrawal from the Agreement starts from the date of concluding the Agreement.</p>

<p>The User may withdraw from the Agreement by submitting a statement of withdrawal from the Agreement to IVS. The statement may be submitted on the form, a template
of which is included in Annex No. 1 to the Regulations, but it is not mandatory.</p>

<p>To meet the deadline, it is enough to send a statement before the expiry date of the period by post to the address of the IVS office or by e-mail to the address: <b>support@ evisa.express</b></p>

<p>IVS confirms receiving the withdrawal from the Agreement by an e-mail sent to the User.</p>

<p>IVS shall immediately, but not later than within 14 days from the date of receiving the statement sent by the User-consumer on withdrawal from the Agreement, return the User all payments made by them.</p>

<p>IVS returns the payment using the same method of payment as the one used by the User, unless the User has explicitly agreed to a different method of return, which does not involve any costs for them.
</p>

<p>The User shall not be entitled to withdraw from the Agreement from the moment of complete performance of the service by IVS - provision of the visa agency service.</p>


<h1 id="invocId">Invoices</h1>

<p><b>1</b>. At the User's request, IVS issues an invoice in connection with the performance of the Agreement and sends it to the e-mail address indicated by the User.</p>

<p><b>2</b>. The User declares to agree to issuing an electronic invoice by IVS in accordance with art. 106n par. 1 of the Act of 11th March 2004 on Value Added Tax (Journal of Laws of 2017, position 1221, with further amendments).</p>

<h1 id="complainfinalId"> Complaints and final provisions</h1>

<p><b>The User may submit complaints about services provided by IVS, as per the Agreement, by:</b></p>

<ul>
<li> <b>a)</b> posting a letter to the following address: <b>INTERNATIONAL VISA SERVICE</b> spółka z ograniczoną odpowiedzialnością spółka komandytowa z siedzibą w Katowicach, ul. Graniczna 29, 40-017 Katowice, Polska,  </li>
<li> <b>b)</b> sending an email to -<b> support@evisa.express</b>  </li>
</ul>

<p>IVS deals with the complaint within 14 days since its delivery and sends the response to the address of the sender - User. IVS reserves the right to send a request to the person lodging the complaint in order to clarify the relevant circumstances regarding the complaint. The deadline for considering the complaint may be extended accordingly, due to the waiting time for the User's response.</p>

<p>The Service, together with the constituting elements, including graphic, multimedia, text files, source code of the programs, are subject to the exclusive rights of IVS. Without the consent of IVS, it is forbidden to copy, reproduce or to use the components of the website in any other way in a manner inconsistent with its aim or purpose. </p>

<p>When using The Service, it is forbidden for Users and Guests to use software that harms or may cause potentially damage to IVS or Users, or violate their rights, in particular, it is prohibited to use worms, spyware, viruses, etc..</p>

<p>IVS is entitled to change the Regulations for important reasons at any time, in particular when changes are due to technical or legal reasons. IVS will inform the Users about the introduced changes by presenting information about the changes on the Service, publication of the updated text of the Regulations and sending messages about changes to the Regulations to the Users' e-mail addresses. Changes to the Regulations come into force within 14 days from the date of posting the information about them on the Service along with the updated text of the Regulations.</p>

<p>Polish law is the law applicable to relations arising from the Agreement. Disputes arising from the Agreement are subject to the jurisdiction of Polish common courts.</p>

<p>The Users who are consumers may try to reach out-of-court resolution of any IVS disputes before the Permanent Consumer Mediation Court at the Provincial Inspector of Trade Inspection in Katowice (Stały Polubowny Sąd Konsumencki przy Wojewódzkim Inspektorze Inspekcji Handlowej w Katowicach). </p>

<p>Consumer disputes regarding services provided online within the European Union may also be resolved through the ODR platform at https://ec.europa.eu/consumers/odr.</p>

<p>The User may obtain free assistance in resolving a dispute with IVS, also using the gratuitous help of the poviat (municipal) consumer ombudsman or a social organization, whose statutory tasks include consumer protection (including the Consumer Federation, Association of Polish Consumers – Federacja Konsumentów, Stowarzyszenie Konsumentów Polskich).</p>

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
					<ul class="drop-down-ul display-none" style="bottom: initial; max-height: 300px;">
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


						</div>
				</div>
			</div>
	</section>


	<%@include file="footer.jsp"%>
	<script>
		document.querySelector('#select-country').addEventListener(
				'change',
				function() {
					var destinationKey = this.getAttribute('data-key').toLowerCase();;
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