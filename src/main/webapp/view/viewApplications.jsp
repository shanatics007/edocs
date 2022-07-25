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
 
 int applicationNumber=0;
 String price=null;
 boolean checkUser=false;
 long userId=0 ;
 String firstName = null;
 String lastName = null;
 boolean paymentStatus = false;
 String from_country="";
 String email = "";
 
 if (request.getSession(false).getAttribute("userLogin") != null) {
		HashMap<Object, Object> userDetails =(HashMap<Object, Object>) request.getSession(false).getAttribute("userLogin");
		UserModel user = (UserModel)userDetails.get("data");
		email= user.getUserEmail();
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
<link rel="stylesheet" href="/css/contact.css" type="text/css">
<link rel="stylesheet" href="/css/viewApplications.css" type="text/css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


</head>
<body>
	<div id="overlay" class="hidden mobileMenuOverlay"></div>
	<%@include file="header.jsp"%>
		<section class="main-site-content account-page white-bg">
		<div class="account-menu-wrapper">
			<div class="container">
				<ul class="e-visa-footer-links">
					<li><a id="myApplications-menu" class="col-xs-3	col-sm-3 col-md-3 col-lg-3 my-account-tab active" href="/en/account">My applications</a></li>
					<li><a id="settingId-menu" class="col-xs-3 col-sm-3 col-md-3 col-lg-3 my-account-tab " href="/en/account#setting">Settings</a></li>
					<li><a id="LogoutId" class="col-xs-3 col-sm-3 col-md-3 col-lg-3 my-account-tab " href="/logout">Log Out</a></li>
					
				</ul>
			</div>
		</div>

		<div class="container">
			<div class="mtb-30">
				<div class="application-view">
					<div class="application-status-container">
						<header class="main-header">Application Status</header>
						<div class="statuses-wrapper">
							<div class="statuses-expandable">
								<div class="application-status expanded">
									<div class="status-title active" id="unpaidStatus" href="#unpaid-status-link">
										<img src="">
										<header id="cusorEvent;">Unpaid</header>
									</div>
									<div class="status-content" id="unpaid-status-link" >
										<div class="img-wrapper">
											<img src="/img/icon/status/unpaid.svg" alt=""
												class="status-icon">
										</div>
										<div>
											<header>Unpaid</header>
											<p>Order is not paid.
											<p>You can make a payment right now.</p>
											</p>
										</div>
									</div>
								</div>
								<!---->
								<!---->
								<!---->
							</div>
							<div class="application-status subsequent">
								<a class="status-title" id="applicationReceivedStatus" href="#Application-status-link">
									<header id="cusorEvent;">Application received</header>
								</a>
								
							</div>
							<div class="application-status subsequent">
								<a class="status-title" id="verificationCompleteStatus" href="#Verification-status-link">
									<header id="cusorEvent;">Verification complete</header>
								</a>
							</div>
							<div class="application-status subsequent">
								<a class="status-title" id="decisionStatus" href="#decision-status-link">
									<header id="cusorEvent;">decision</header>
								</a>
							</div>
						</div>
					</div>
					<div class="application-information">
						<div class="visa-information">
							<header>Application number: <span id="applicationNumber"></span></header>
							<div class="information-content">
								<div class="information-data">
									<p class="data-row">
										<span> India e-Visa Application Online <!----></span>
									</p>
									<p class="data-row">
										Flight date: <span id="flightDate"></span>
									</p>
									<p class="data-row">
										Name: <span id="firstName"></span>
									</p>
									<p class="data-row">
										Surname: <span id="lastName"></span>
									</p>
									<p class="data-row">
										Visa Type: <span id="visaType"></span>
									</p>
								</div>
								<div class="information-navigation">
									
									<div class="input-box-bottom button-container">
										<a target="_blank"
											href=""
											class="button-no-arrow button-green" onclick="makePendingPayment()">Make payment</a>
									</div>
									<!---->
									<!---->
									<!---->
									<!---->
								</div>
							</div>
						</div>
						
					</div>
				</div>
				
			</div>
		</div>




	</section>
	<%@include file="footer.jsp"%>
	<script>


	$(document).on(
			
			"click",
			".status-title",
			function(e) {
				
				var sectionId = $(this).attr("id");
				var section = $(this).attr(
						"href");
				$(".status-content").css("display",
						"none");
				$(".status-title").removeClass("active")
				displaySection(sectionId, section);
				e.preventDefault();
				e.stopPropagation();
			});

	function displaySection(secid, sec){
		$(sec).show();
		$("#" + secid).addClass("active");
		
	}


	
	function makePendingPayment(authKey){
		var param ="hash="+authKey;
		window.location.href = "/payment/?"+param;
	}

	
	</script>
	
	<script>
	
	

	window.onload = function () {
		var authUrl = window.location.href;
		var authKey = authUrl.split('=')[1];
	   
	    $.ajax({
			type : 'GET',
			url : '/application/getApplicationDetails/'+authKey,	
			async : true,
			success : function(data) {
				$('#applicationNumber').text(data.pkid);	
				$('#flightDate').text(data.plannedDateOfTravel);
				$('#firstName').text(data.firstName);
				$('#lastName').text(data.lastName);
				$('#visaType').text(data.purposeForTravel);
				
			},	
			error : function(data) {
				console.log("error when gettig data");
			}
		}); 
		
		
	}
	function makePendingPayment(){
		var authUrl = window.location.href;
		var authKey = authUrl.split('=')[1];
		
		var param ="hash="+authKey;
		window.location.href = "/payment/?"+param;
	}
	
	

</script>

</body>
</html>