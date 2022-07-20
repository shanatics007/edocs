<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
 <%@ page import="com.edocs.Model.UserModel" %>
 <%@ page import="java.util.Date" %>
 <%@ page import=" java.time.LocalDate" %>
  <%@ page import="java.time.Month"%>
  <%@ page import="java.time.format.DateTimeFormatter "%>
  <%@ page import="java.util.Calendar"%>
  
 <%    
 String email = "";
 String fullName = "";
 long userId = 0;
 
 if (request.getSession(false).getAttribute("userLogin") != null) {
		HashMap<Object, Object> userDetails =(HashMap<Object, Object>) request.getSession(false).getAttribute("userLogin");
		UserModel user = (UserModel)userDetails.get("data");
		email= user.getUserEmail();
		fullName = user.getFullName();
		userId = user.getUserId();
 }
 
 %>
	

<!DOCTYPE html>

<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Edocs Travel</title>

<script src="/js/select2.min.js"></script>
<script src="/js/home.js"></script>
 <link rel="icon" href="/images/favicon-1.png" type="image/x-icon">
<link rel="stylesheet" href="/css/home.css" type="text/css">
<link rel="stylesheet" href="/css/india.css" type="text/css">
<link rel="stylesheet" href="/css/useraccount.css" type="text/css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>



@media ( min-width : 599px) {
	background-image: url('/images/background 2.jpg');
	
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
	list-style-type: initial !important;
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


.account-page .applications-wrapper .my-applications .my-applications-menu, .feedbackPage .applications-wrapper .my-applications .my-applications-menu {
    padding: 0;
    margin: 0;
    list-style: none;
    display: flex;
}

.account-page .applications-wrapper .my-applications .my-applications-menu li a.active, .feedbackPage .applications-wrapper .my-applications .my-applications-menu li a.active {
    background: #1c3367;
}

button.btn.btn--disabled {
    background: #1d3367;
}
.account-page .applications-wrapper .my-applications .my-applications-menu li a, .feedbackPage .applications-wrapper .my-applications .my-applications-menu li a {
    display: block;
    height: 48px;
    display: flex;
    align-items: center;
    padding: 0 20px;
    text-decoration: none;
    background: #D8D9CF;
    color: #fff;
    text-transform: uppercase;
    letter-spacing: 1px;
    font: 14px KonkretGroteskPro, Fallback, sans-serif;
    font-weight: 700;
}

.account-page .applications-wrapper .my-applications .applications-table, .feedbackPage .applications-wrapper .my-applications .applications-table {
    width: 100%;
    border: 1px solid #7C152A;
    font-family: 'Roboto', Fallback, sans-serif;
}


table {
    border-collapse: collapse;
    border-spacing: 0;
    background-color: transparent;
}

.account-page .applications-wrapper .my-applications .applications-table td:first-child, .account-page .applications-wrapper .my-applications .applications-table th:first-child, .feedbackPage .applications-wrapper .my-applications .applications-table td:first-child, .feedbackPage .applications-wrapper .my-applications .applications-table th:first-child {
    padding-left: 20px;
}



.account-page .applications-wrapper .my-applications .applications-table td:first-child, .account-page .applications-wrapper .my-applications .applications-table th:first-child, .feedbackPage .applications-wrapper .my-applications .applications-table td:first-child, .feedbackPage .applications-wrapper .my-applications .applications-table th:first-child {
    padding-left: 20px;
}
.account-page .applications-wrapper .my-applications .applications-table th, .feedbackPage .applications-wrapper .my-applications .applications-table th {
    padding: 10px 5px;
    background: #fff;
    font-size: 12px;
    font-weight: 400;
    color: #7C152A;
}

.account-page .applications-wrapper .my-applications .applications-table th, .feedbackPage .applications-wrapper .my-applications .applications-table th {
    padding: 10px 5px;
    background: #fff;
    font-size: 12px;
    font-weight: 400;
    color: #7C152A;
}

.account-page .applications-wrapper .my-applications .applications-table th, .feedbackPage .applications-wrapper .my-applications .applications-table th {
    padding: 10px 5px;
    background: #fff;
    font-size: 12px;
    font-weight: 400;
    color: #7C152A;
}

.account-page .applications-wrapper .my-applications .applications-table tbody tr:nth-child(2n+1), .feedbackPage .applications-wrapper .my-applications .applications-table tbody tr:nth-child(2n+1) {
    background: #F0F1ED;
    /* height: 20px; */
}
.account-page .applications-wrapper .my-applications .applications-table tbody tr td.status-red, .feedbackPage .applications-wrapper .my-applications .applications-table tbody tr td.status-red {
    color: #D81E44;
}

.account-page .applications-wrapper .my-applications .applications-table tbody tr, .feedbackPage .applications-wrapper .my-applications .applications-table tbody tr {
    background: #fff;
    height: 15px;
}

.account-page .applications-wrapper .new-application .application-creator, .feedbackPage .applications-wrapper .new-application .application-creator {
    position: relative;
    display: flex;
    min-height: 400px;
    margin-bottom: 10px;
}

.account-page .applications-wrapper .new-application .application-creator .input-box-bottom.button-container.button-container-open, .feedbackPage .applications-wrapper .new-application .application-creator .input-box-bottom.button-container.button-container-open {
    min-height: 400px;
    display:block !important;
}


}
.account-page .applications-wrapper .new-application .application-creator .button-container button, .feedbackPage .applications-wrapper .new-application .application-creator .button-container button {
    height: 48px;
    padding: 12px 15px;
}

.account-page .applications-wrapper .new-application .button-container button.active, .account-page .applications-wrapper .new-application .button-container a.active, .feedbackPage .applications-wrapper .new-application .button-container button.active, .feedbackPage .applications-wrapper .new-application .button-container a.active {
    background: #1c3367;
    border-color:#1c3367;
}
.account-page .button-green, .feedbackPage .button-green {
    border: 2px solid #4C967D;
    background: #4C967D;
}
.account-page .button-no-arrow, .feedbackPage .button-no-arrow {
    text-align: center;
    background-image: none;
    text-transform: uppercase;
}
.button-container button, .button-container a, .button-container .btn {
    display: block;
    outline: none;
    border: none;
    padding: 15px;
    width: 100%;
    background: #7C152A;
    text-align: left;
    color: #fff;
    font-family: KonkretGroteskPro, Fallback, sans-serif;
    font-weight: 700;
    letter-spacing: 1px;
    background-image: url(/img/icon/16/arrow_right_white.svg);
    background-repeat: no-repeat;
    background-position: 97%;
    cursor: pointer;
}
button, input {
    overflow: visible;
}
input, button, select, textarea {
    font-family: inherit;
    font-size: inherit;
    line-height: inherit;
}
button, html input[type="button"], input[type="reset"], input[type="submit"] {
    -webkit-appearance: button;
    cursor: pointer;
}
button, select {
    text-transform: none;
}
button, input, select, textarea {
    color: inherit;
    font: inherit;
    margin: 0;
}


.account-page .applications-wrapper .new-application .application-creator .application-creator-content, .feedbackPage .applications-wrapper .new-application .application-creator .application-creator-content {
    display: flex;
    flex-direction: column;
    flex: 1;
    z-index: 10;
    width: 100%;
    padding: 10px 30px 30px 30px;
    background: #fff;
    border: 1px solid #B08F6F;
}

* {
    box-sizing: border-box;
}
user agent stylesheet
div {
    display: block;
}
.account-page, .feedbackPage {
    font-family: 'Roboto', Fallback, sans-serif;
}

.account-page .applications-wrapper .new-application .application-creator .application-creator-content header, .feedbackPage .applications-wrapper .new-application .application-creator .application-creator-content header {
    font: 500 16px 'Roboto', Fallback, sans-serif;
    margin: 10px 0;
}

.account-page .applications-wrapper .new-application .application-creator .application-creator-content .input-box, .feedbackPage .applications-wrapper .new-application .application-creator .application-creator-content .input-box {
    width: 100%;
    margin: 0;
}
.input-box {
    margin-left: 64px;
    margin-bottom: 32px;
    width: 80%;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    font-family: Roboto;
}


.main-site-content{
	background:none !important;
}

.account-menu-wrapper {
    
    background-color:#1c3367;
}

.account-page .applications-wrapper .new-application .application-creator .application-creator-content .button-container button, .account-page .applications-wrapper .new-application .application-creator .application-creator-content .button-container a, .feedbackPage .applications-wrapper .new-application .application-creator .application-creator-content .button-container button, .feedbackPage .applications-wrapper .new-application .application-creator .application-creator-content .button-container a {
    margin-top: 25px;
    text-transform: uppercase;
}
.account-page .applications-wrapper .new-application .application-creator .button-container button, .feedbackPage .applications-wrapper .new-application .application-creator .button-container button {
    height: 48px;
    padding: 12px 15px;
}
.button-container .btn--disabled {
    background: #D8D9CF;
}
.button-container .btn--disabled {
    background: #D8D9CF;
}

.account-page .applications-wrapper .new-application .application-creator .application-creator-content .input-box .actual-input, .feedbackPage .applications-wrapper .new-application .application-creator .application-creator-content .input-box .actual-input {
    width: 100%;
}
.input-box .input-box-bottom .actual-input {
    width: 85%;
    display: flex;
    justify-content: space-between;
    position: relative;
}

.account-page .applications-wrapper .new-application .application-creator .application-creator-content .button-container, .feedbackPage .applications-wrapper .new-application .application-creator .application-creator-content .button-container {
    margin-bottom: 0;
}
.account-page .applications-wrapper .new-application .application-creator .application-creator-content>:last-child, .feedbackPage .applications-wrapper .new-application .application-creator .application-creator-content>:last-child {
    margin-top: auto;
}
.account-page .applications-wrapper .new-application .application-creator .button-container:not(.button-container-open), .feedbackPage .applications-wrapper .new-application .application-creator .button-container:not(.button-container-open) {
    align-self: flex-start;
}
.account-page .applications-wrapper .new-application .application-creator .button-container, .feedbackPage .applications-wrapper .new-application .application-creator .button-container {
    margin-bottom: 0;
}
.account-page .applications-wrapper .new-application .button-container, .feedbackPage .applications-wrapper .new-application .button-container {
    margin-bottom: 30px;
    flex-direction: column;
}

.account-page .applications-wrapper .my-applications .my-applications-menu li, .feedbackPage .applications-wrapper .my-applications .my-applications-menu li {
    padding: 0;
    flex: 1;
}

.account-page .mtb-30, .feedbackPage .mtb-30 {
    margin-top: 30px;
    margin-bottom: 30px;
}

.top-content-follow-card-destination {
  
    padding: 0px 0px !important;
   
}

a#countryDropDown {
    background: white;
}

#countryHref{
    background: white;
}

.top-content-follow-card-destination .drop-down .drop-down-ul .a-no-active {
    background: white;
}

ul.e-visa-footer-links {
    float: left;
    padding-left: 15px;
}


.account-page .mtb-30, .feedbackPage .mtb-30 {
    margin-top: 30px;
    margin-bottom: 30px;
}

.account-page .settings-header, .feedbackPage .settings-header {
    /* font: 26px KonkretGroteskPro, Fallback, sans-serif; */
    font-weight: 500;
    margin-bottom: 12px;
}

.account-page .settings-section, .feedbackPage .settings-section {
    width: 710px;
    border-top: 2px solid #1c3367;
    padding: 25px 0;
    display: flex;
    align-items: flex-start;
}

.account-page .settings-section .settings-icon, .feedbackPage .settings-section .settings-icon {
    width: 80px;
}

.account-page .settings-section .settings-content, .feedbackPage .settings-section .settings-content {
    width: 100%;
    display: flex;
}

.account-page .settings-section .settings-content .settings-fields, .feedbackPage .settings-section .settings-content .settings-fields {
    width: 300px;
    display: flex;
    flex-direction: column;
}

.account-page .settings-section .settings-content .settings-fields header, .feedbackPage .settings-section .settings-content .settings-fields header {
    font-size: 16px;
    line-height: 24px;
    font-weight: 500;
    margin-bottom: 12px;
}

.account-page .settings-section .settings-content .settings-fields .input-box:last-child, .feedbackPage .settings-section .settings-content .settings-fields .input-box:last-child {
    margin-bottom: 0;
}

.account-page .settings-section .settings-content .settings-fields .input-box .input-box-top, .feedbackPage .settings-section .settings-content .settings-fields .input-box .input-box-top {
    margin-bottom: 2px;
}
.input-box .input-box-top {
    width: 85%;
    display: flex;
    flex-direction: column;
    margin-bottom: 8px;
}

.account-page .settings-section .settings-content .settings-fields .input-box .input-box-top .input-box-label, .feedbackPage .settings-section .settings-content .settings-fields .input-box .input-box-top .input-box-label {
    font-size: 12px;
}
.input-box .input-box-top .input-box-label {
    font-weight: 500;
    font-size: 16px;
}

.account-page .settings-section .settings-content .settings-fields .input-box .input-box-bottom, .feedbackPage .settings-section .settings-content .settings-fields .input-box .input-box-bottom {
    position: relative;
}
.input-box .input-box-bottom {
    display: flex;
    position: relative;
}

.account-page .settings-section .settings-content .settings-fields .input-box .input-box-bottom .actual-input, .feedbackPage .settings-section .settings-content .settings-fields .input-box .input-box-bottom .actual-input {
    width: 100%;
    flex-direction: column;
}
.input-box .input-box-bottom .actual-input {
    width: 85%;
    display: flex;
    justify-content: space-between;
    position: relative;
}

.input-box .input-box-bottom .actual-input .text-input-single {
    width: 100%;
}

.input-box .input-box-bottom .actual-input .text-input-single input {
    border: 1px solid black;
    height: 48px;
    width: 100%;
}
.input-box input {
    font-size: 16px;
    padding: 12px 16px;
    font-weight: 400;
}

.account-page .settings-section .settings-content .settings-button-wrapper, .feedbackPage .settings-section .settings-content .settings-button-wrapper {
    width: 240px;
    margin-left: 90px;
    align-self: flex-end;
}

.account-page .settings-section .input-box, .feedbackPage .settings-section .input-box {
    margin: 0;
    width: 100%;
}
.input-box {
    margin-left: 64px;
    margin-bottom: 32px;
    width: 80%;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    font-family: Roboto;
}

.account-page .settings-section .settings-content .settings-button-wrapper .input-box .submit-input-container, .feedbackPage .settings-section .settings-content .settings-button-wrapper .input-box .submit-input-container {
    width: 100%;
    margin: 0;
}
.input-box .input-box-bottom {
    display: flex;
    position: relative;
}
.submit-input-container {
    width: 100%;
    margin: 0 auto;
    text-transform: uppercase;
}

.button-container .btn--disabled {
    background: #D8D9CF;
}


.account-page .settings-section .settings-content .settings-fields .input-box, .feedbackPage .settings-section .settings-content .settings-fields .input-box {
    margin-bottom: 16px;
}
.account-page .settings-section .input-box, .feedbackPage .settings-section .input-box {
    margin: 0;
    width: 100%;
}

.submit-input-container.button-container .btn {
    width: 60%;
    text-align: center;
}


.e-visa-footer-links a {
    font: 700 14px KonkretGroteskPro, Fallback, sans-serif;
    letter-spacing: 1px;
    color: white;
}


.settings-icon img {
    border: 0;
    vertical-align: middle;
    width: 25px;
}
@media (min-width: 600px){
	.top-content-follow-card-destination {
    width: 100% !important;
}
}

@media (max-width: 599px){
.top-content-follow-card-destination {
    width: 100% !important;
   
}
}
@media screen and (max-width: 768px){

    .account-page .settings-section .settings-content {
    flex-direction: column;
}

}

@media screen and (max-width: 768px){

    .account-page .settings-section .settings-content .settings-button-wrapper {
    width: 300px;
    align-self: flex-start;
    margin: 30px 0 0 0;
}
}


@media (max-width: 768px){

    .container {
    margin-right: auto;
    margin-left: auto;
    padding-left: 16px;
    padding-right: 16px;
}
}

@media screen and (max-width: 400px){

    .account-page .settings-section .settings-icon, .feedbackPage .settings-section .settings-icon {
    width: 40px;
    margin-right: 10px;
}
}

@media screen and (max-width: 768px){
    .account-page .settings-section .settings-content {
    flex-direction: column;
}
}

@media screen and (max-width: 768px){
    .account-page .settings-section .settings-content .settings-button-wrapper {
    width: 300px;
    align-self: flex-start;
    margin: 30px 0 0 0;
}

}

@media screen and (max-width: 425px){
    .submit-input-container.button-container {
    display: flex;
    flex-direction: column;
}
}

@media screen and (max-width: 425px){
    .submit-input-container.button-container .btn {
    width: 100%;
}
}

@media screen and (max-width: 768px){
    .account-page .settings-section .settings-content {
    flex-direction: column;
}
}

@media screen and (max-width: 768px){
    .account-page .settings-section .settings-content .settings-button-wrapper {
    width: 300px;
    align-self: flex-start;
    margin: 30px 0 0 0;
}
}

@media screen and (max-width: 710px){
    .account-page .settings-section {
    width: 100%;
}
}

@media screen and (max-width: 650px){
    .account-page .account-menu-wrapper .e-visa-footer-links {
    text-align: left;
    justify-content: flex-start;
    margin: 0 0 12px 0;
}
}
@media screen and (max-width: 460px){
    .account-page .account-menu-wrapper .e-visa-footer-links li {
    margin-right: 0;
    padding-left: 15px;
}
}


#showsUserSetting{
display: none;
}
.top-content-follow-card-destination .drop-down .drop-down-ul li:hover .a-no-active{
		color:black !important;
}
.main-site-content{
	height: auto;
}
ul.drop-down-ul.display-none.display-block {
    z-index: 999999;
}
</style>

</head>
<body>
	<div id="overlay" class="hidden mobileMenuOverlay"></div>
	<%@include file="header.jsp"%>
		<section class="main-site-content account-page white-bg">
		<div class="account-menu-wrapper">
			<div class="container">
				<ul class="e-visa-footer-links">
					<li><a id="myApplications-menu" class="col-xs-3	col-sm-3 col-md-3 col-lg-3 my-account-tab active" href="#myApplications">My applications</a></li>
					<li><a id="settingId-menu" class="col-xs-3 col-sm-3 col-md-3 col-lg-3 my-account-tab " href="#setting">Settings</a></li>
					<li><a id="LogoutId" class="col-xs-3 col-sm-3 col-md-3 col-lg-3 my-account-tab " href="/logout">Log Out</a></li>
					
				</ul>
			</div>
		</div>

		<section id="myApplications" class="my-account-section-setting" >
				<div class="container" id="container1">
			<div class="mtb-30">
				<div>
					<div class="applications-wrapper">
						<div class="my-applications col-md-8">
							
							<ul class="my-applications-menu">
									<li><a class="my-account-tab-menu active"
										id="actived-menu" href="#actived"> active <span
											id="activeTotalId"></span></a></li>
									<li><a class="my-account-tab-menu " id="finished-menu"
										href="#finished"> finished <span id="finishedTotalId"></span>
									</a></li>
								</ul>
							<div class="tab-content my-account-section" id="actived">
								<div>
									<table class="applications-table">
										<thead>
											<tr>
																								<th>ID</th>
												<th class="pl-10"><span>COUNTRY</span></th>
												<th><span>STATUS</span></th>
												<th class="hide-465"><span>APPLICANT</span></th>
												<th class="hide-465"><span>DATE</span></th>
												<th>ACTIONS</th>
											</tr>
										</thead>
										<tbody id="activetBody">
											
										</tbody>
										
									</table>
								</div>
							</div>
							<div class="tab-content my-account-section" id="finished" style="display: none;">
								<div>
									<table class="applications-table">
										<thead>
											<tr>
												<th>ID</th>
												<th class="pl-10"><span>COUNTRY</span></th>
												<th><span>STATUS</span></th>
												<th class="hide-465"><span>APPLICANT</span></th>
												<th class="hide-465"><span>DATE</span></th>
												
											</tr>
										</thead>
										<tbody id="finishtBody">
											
										</tbody>
										
									</table>
								</div>
							</div>
						</div>
						<div class="new-application col-md-4">
							<div class="application-creator">
								<div
									class="input-box-bottom button-container button-container-open">
									<button class="active button-no-arrow button-green">New
										Application</button>
									<div class="application-creator-content" style="">
								
										<header>Destination:</header>
										<div class="top-content-follow-card-destination"
											style="margin-top: -5px;">

											<div class="drop-down">
											<form autocomplete="off">
												<input type="text"  id="select-country"
													placeholder="Select a country"
													class="initial-input input-drop-down" autocomplete="nope"
													style="border-bottom: 1px solid;">
												<ul class="drop-down-ul display-none"
													style="bottom: initial; max-height: 300px;padding-left: 20px;">

													<li class="drop-down-ul-element" id="countryHref"><a href="/en/india"
														class="a-no-active" id="countryDropDown"><span>India</span></a></li>

													<li class="drop-down-ul-element" id="countryHref"><a href="/en/turkey"
														class="a-no-active" id="countryDropDown"><span>Turkey</span></a></li>

													<li class="drop-down-ul-element" id="countryHref"><a
														href="/en/pakistan" class="a-no-active" id="countryDropDown"><span>Pakistan</span></a></li>

													<li class="drop-down-ul-element" id="countryHref"><a
														href="/en/thailand" class="a-no-active" id="countryDropDown"><span>Thailand</span></a></li>

													<li class="drop-down-ul-element" id="countryHref"><a
														href="/en/united-arab-emirates" class="a-no-active" id="countryDropDown"><span>United-Arab-Emirates</span></a></li>

												</ul>
												</form>
											</div>
										</div>
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		</section>
		<section id="setting" class="my-account-section-setting" style="display:none;">
				<div class="container">
			<div class="mtb-30">
				<div>
					<h2 class="settings-header">Personal account</h2>
					<div class="settings-section">
						<div class="settings-icon">
							<img src="/images/user.png">
							<!---->
						</div>
						<div class="settings-content">
							<div class="settings-fields">
								<header>Account Information:</header>
								<div class="input-box">
									<div class="input-box-top">
										<div class="input-box-label">Full Name</div>
									</div>
									<div class="input-box-bottom">
										<div class="actual-input">
											<div class="text-input-single">
											<form autocapitalize="off">
												<input type="text" id="updateUserNameId" autocomplete="off" value="<%=fullName%>">
											</form>
											</div>
											
										</div>
										
									</div>
								</div>
							</div>
							<div class="settings-button-wrapper">
								<div class="input-box">
									<div
										class="input-box-bottom button-container submit-input-container">
										<button  class="btn btn--disabled" onclick="updateUserFullName();">Save
											Data</button>
									</div>
								</div>
							</div>
						</div>
						
						
					</div>
					<div class="dataSucess">&#10004; Data updated successfully</div>
					<!---->
					<div class="settings-section">
						<div class="settings-icon">
							<img src="/images/padlock.png">
						</div>
						<div class="settings-content">
							<div class="settings-fields">
								<div class="input-box">
								<form autocomplete="off">
									<header>Change password</header>
									<!---->
									<div class="input-box">
										<div class="input-box-top">
											<div class="input-box-label">Current password</div>
										</div>
										<div class="input-box-bottom">
											<div class="actual-input">
												<div class="text-input-single">
													<input type="password" id="currentPasswordId" autocomplete="off" onchange="validate();">
													<span id="currentPassId">Please enter the correct password</span>
												</div>
												<!---->
											</div>
											<!---->
										</div>
									</div>
									<div class="input-box">
										<div class="input-box-top">
											<div class="input-box-label">Password</div>
											<div class="input-box-hint">At least 8 characters,
												including at least 1 uppercase letter, 1 lowercase letter
												and a number.</div>
										</div>
										<div class="input-box-bottom">
											<div class="actual-input">
												<div class="text-input-single">
													<input type="password" id="newPassWordId" autocomplete="off" onchange="validate();">
													<span id=newPassId>Please enter the correct password</span>
												</div>
												<!---->
											</div>
											<!---->
										</div>
									</div>
									<div class="input-box">
										<div class="input-box-top">
											<div class="input-box-label">Confirm password</div>
											<div class="input-box-hint">The two passwords must
												match.</div>
										</div>
										<div class="input-box-bottom">
											<div class="actual-input">
												<div class="text-input-single">
													<input type="password" id="confirmPassId" autocomplete="off" onchange="validate();">
													<span id="confPassId">Password not matched please enter correct password</span>
												</div>
												<!---->
											</div>
											<!---->
										</div>
									</div>
									</form>
								</div>
							</div>
							<div class="settings-button-wrapper">
								<div class="input-box">
									<div
										class="input-box-bottom button-container submit-input-container">
										<button  class="btn btn--disabled" onclick="updateUserPassword();">
											<span>Change Password</span>
											<!---->
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="dataSucess" id="passwordUpdaetedmsg">&#10004; Password updated successfully</div>
				</div>
				
			</div>
		</div>
		</section>

	</section>
	<%@include file="footer.jsp"%>
	<script>
	document.querySelector('#select-country').addEventListener('change', function () {
        var destinationKey = this.getAttribute('data-key').toLowerCase();
        if (destinationKey !== null) {
            window.location.href = '/en/india/applicationform'.replace("india", destinationKey);
        }
    });


	$(document).on(
			"click",
			".my-account-tab-menu",
			function(e) {
				var sectionId = $(this).attr("id");
				var section = $(this).attr(
						"href");
				$(".my-account-section").css("display",
						"none");
				$(".my-account-tab-menu").removeClass("active")
				displaySection(sectionId, section);
				e.preventDefault();
				e.stopPropagation();
			});

	function displaySection(secid, sec){
		$(sec).show();
		$("#" + secid).addClass("active");
		
	}


	$(document).on(
			"click",
			".my-account-tab",
			function(e) {
				var sectionId = $(this).attr("id");
				var section = $(this).attr(
						"href");
				$(".my-account-section-setting").css("display",
						"none");
				$(".my-account-tab").removeClass("active")
				displayHedaerSection(sectionId, section);
				e.preventDefault();
				e.stopPropagation();
			});

	function displayHedaerSection(secid, sec){
		$(sec).show();
		$("#" + secid).addClass("active");
		
		}
	function makePendingPayment(authKey){
		var param ="hash="+authKey;
		window.location.href = "/payment/?"+param;
	}

	function updateUserFullName(){
		var param = "userId=<%=userId%>"
			if($('#updateUserNameId').val() != ""){
				$('#updateUserNameId').css('border','1px solid black');
		$.ajax({
			type : 'POST',
			url : '/user/updateUserFullName/?'+param,	
			headers: {
                 'Content-Type': 'application/json'
             },
			data: JSON.stringify ({
			"fullName": $('#updateUserNameId').val(),
			}),
			success : function(data) {
				
				$('#userUpdateMessageId').css('display','block');
				$('#updateUserNameId').val(data.fullName);
					setTimeout(() => {
					$('.dataSucess').css('display','none');
					}, "1000")
								
			},
			error : function(data) {
				console.log("error when gettig data");
			
			}
		}); 
			}else{
				$('#updateUserNameId').css('border','1px solid red')
				
				}
	}


	function updateUserPassword(){
		var userId = <%=userId%>
		var newPassword = $('#newPassWordId').val();
			if(validate()){
				
			$.ajax({
				type : 'POST',
				url : '/user/updateUserPassword/'+userId+'/'+newPassword,	
				headers: {
	                 'Content-Type': 'application/json'
	             },
				data: JSON.stringify ({
				"userPassword": $('#currentPasswordId').val(),
				}),
				success : function(data) {
					
					$('#passwordUpdaetedmsg').css('display','block');
					$('#updateUserNameId').val(data.fullName);
						setTimeout(() => {
						$('.dataSucess').css('display','none');
						$('#currentPasswordId').val(null);
						$('#newPassWordId').val(null);
						$('#confirmPassId').val(null);
						
						}, "1000")
									
				},
				error : function(data) {
					console.log("error when gettig data");
				
				}
			}); 
				}else{
					validate();
					
					}
	}
	
	
	</script>
	<script>
	function validate() {
		var isValidated = true;
		var currentPass = $('#currentPasswordId').val();
		var newpass = $('#newPassWordId').val();
		var confirmPass = $('#confirmPassId').val();

		if (currentPass.match(/[a-z]/g) && currentPass.match(/[A-Z]/g)
				&& currentPass.match(/[0-9]/g) && currentPass.match(/[^a-zA-Z\d]/g)
				&& currentPass.length >= 8) {

			isValidated = true
			$('#currentPassId').css('display','none');

		} else {
			$('#currentPassId').css('display','block');
		
		}
		if (newpass.match(/[a-z]/g) && newpass.match(/[A-Z]/g)
				&& newpass.match(/[0-9]/g) && newpass.match(/[^a-zA-Z\d]/g)
				&& newpass.length >= 8) {

			isValidated = true
			$('#newPassId').css('display','none');

		} else {
			$('#newPassId').css('display','block');
		
		}
		if (confirmPass == newpass) {
			
			isValidated = true;
			$('#confPassId').css('display','none');
			
		} else{
			
			isValidated = false;
			$('#confPassId').css('display','block');

		}
		return isValidated;

	}

		
	</script>
	
	<script>
	
	

	window.onload = function () {
		var some_id = $('#select-country');
	    some_id.prop('type', 'text');
	    some_id.removeAttr('autocomplete');
		$('#loginLinkId').css('display','none')
		var param = "email=<%=email%>"
		$.ajax({
			type : 'GET',
			url : '/user/getUnpaidApplication/?'+param,	
			async : true,
			success : function(data) {
				$('#activeTotalId').text(' ('+data.length+')')
				 $.each(data, function(index,element) {
					 
					 if(element.payment==0){
						 element.payment="Unpaid";
					}else{
						element.payment="Paid";
						}
				 $('#activetBody').append(
						 
						 '<tr><td>'+element.pkid+'</td><td>'+element.toCountry+'</td>'
						 +'<td style="color:red;">'+element.payment+'</td><td>'+element.firstName+' '+element.lastName+'</td>'
						 +'<td>'+element.plannedDateOfTravel+'</td><td><img src="/images/view.png" style="width:20px; height:20px;" onclick="getViewPage(\''+element.confirmAuthKey+'\');">'
						 +'<span id="makePaymentDollerId" onclick="makePendingPayment(\''+element.confirmAuthKey+'\');">&#36;</span></td>'
						 +'</tr>'
	
						 )
						
					 });
					
			},	
			error : function(data) {
				console.log("error when gettig data");
			}
		}); 

		$('#loginLinkId').css('display','none')
		var param = "email=<%=email%>"
		$.ajax({
			type : 'GET',
			url : '/user/getPaidApplication/?'+param,	
			async : true,
			success : function(data) {
				$('#finishedTotalId').text(' ('+data.length+')')
				 $.each(data, function(index,element) {
					 
					 if(element.payment==0){
						 element.payment="Unpaid";
					}else{
						element.payment="Paid";
						}
				 $('#finishtBody').append(
						 
						 '<tr><td>'+element.pkid+'</td><td>'+element.toCountry+'</td>'
						 +'<td style="color:red;">'+element.payment+'</td><td>'+element.firstName+' '+element.lastName+'</td><td>'+element.plannedDateOfTravel+'</td></tr>'
	
						 )
						
					 });
					
			},	
			error : function(data) {
				console.log("error when gettig data");
			}
		}); 
		
		
		var checkSetting = window.location.href;
		var splittedCheckUrl = checkSetting.split('#');
		checkSetting =  splittedCheckUrl[1];
		if(checkSetting=="setting"){
			$('#settingId-menu').click();

			
		}
	}
	
	

</script>
<script>
	function getViewPage(authKey){
		var param = "?hash="+authKey;
		window.location.href = "/en/view/"+param
	}
</script>

</body>
</html>