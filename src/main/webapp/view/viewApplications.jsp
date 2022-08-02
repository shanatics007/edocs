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
								<div class="application-status expanded" id="unpaidStatusExpandId">
									<div class="status-title active">
										
										<a data-toggle="collapse" class="title-click" id="unpaidStatus" href="#unpaid-status-link">
										<header id="cusorEvent;">UNPAID</header>
									</a>
									</div>
									<div class="status-content" id="unpaid-status-link" >
										<div class="img-wrapper">
											<img src="/images/unpaid.png" alt="unpaid"
												class="status-icon">
										</div>
										<div>
											<header>UNPAID</header>
											<p>Order is not paid.
											<p>You can make a payment right now.</p>
											</p>
										</div>
									</div>
								</div>
								
							</div>
							
							
							<!-- <div></div> -->
							
							
							<div class="application-status subsequent" id="paidStatusExpandId">
							<div class="status-title">
											<img src="/images/down-arrow12.png" id="arrowroatetId" style="width:25px; height:25px;">
								<a data-toggle="collapse" class="title-click"  id="paidReceivedStatus" href="#Paid-status-link">
									<header id="cusorEvent;">PAID</header>
								</a>
								</div>
								
								
								
								<div class="status-content" id="Paid-status-link"  style="display:none;" >
										<div class="img-wrapper">
											<img src="/images/paid.png" alt="paid"
												class="status-icon">
										</div>
										<div>
											<header>PAID</header>
											<p>Order is paid.
											<p>We received your payment.</p>
											</p>
										</div>
									</div>
								
							</div>
							
							<!-- <div></div> -->
							
							
							<div class="application-status subsequent" id="unfinishedStatusExpandId">
							<div class="status-title">
											<img src="/images/down-arrow12.png" id="arrowroatetId" style="width:25px; height:25px;">
								<a data-toggle="collapse" class="title-click"  id="unfinihedReceivedStatus" href="#Unfinihed-status-link">
									<header id="cusorEvent;">UNFINISHED</header>
								</a>
								</div>
								
								
								
								<div class="status-content" id="Unfinihed-status-link"  style="display:none;" >
										<div class="img-wrapper">
											<img src="/images/unfinished.png" alt="Unfinished"
												class="status-icon">
										</div>
										<div>
											<header>UNFINISHED</header>
											<p>Your application is not finished</p>
											<p>You can finish it now.</p>
											
										</div>
									</div>
								
							</div>
							
							<!-- <div></div> -->
							
							
							<div class="application-status subsequent" id="verificationStatusExpandId">
							<div class="status-title">
											<img src="/images/down-arrow12.png" id="arrowroatetId" style="width:25px; height:25px;">
								<a data-toggle="collapse" class="title-click"  id="verificationReceivedStatus" href="#Verification-status-link">
									<header id="cusorEvent;">VERIFICATION</header>
								</a>
								</div>
								
								
								
								<div class="status-content" id="Verification-status-link"  style="display:none;" >
										<div class="img-wrapper">
											<img src="/images/verification.png" alt=""
												class="status-icon">
										</div>
										<div>
											<header>VERIFICATION</header>
											<p>Your application has been received.</p>
											<p>It is currently under verification.</p>
											
										</div>
									</div>
								
							</div>
								<!-- <div></div> -->
								
								<div class="application-status subsequent" id="missingDocStatusExpandId">
							<div class="status-title">
											<img src="/images/down-arrow12.png" id="arrowroatetId" style="width:25px; height:25px;">
								<a data-toggle="collapse" class="title-click"  id="missingDocumetReceivedStatus" href="#missingDocumet-status-link">
									<header id="cusorEvent;">MISSING DOCUMENT</header>
								</a>
								</div>
								
								
								
								<div class="status-content" id="missingDocumet-status-link"  style="display:none;" >
										<div class="img-wrapper">
											<img src="/images/missdoc.png" alt="MissingDocument"
												class="status-icon">
										</div>
										<div>
											<header>MISSING DOCUMENT</header>
											<p>The additional documents are required to fulfil your eVisa process. You can upload documents using the "Upload Documents" button on the right. You can also provide them via email.
											 Check your inbox and spam box for instructions.</p>
											<p>If you have not received any messages, please do contact our Customer Service Department.</p>
											</p>
										</div>
									</div>
								
							</div>
								<!-- <div></div> -->
								
								
								
							
							<div class="application-status subsequent" id="applicationReceivedStatusExpandId">
							<div class="status-title">
											<img src="/images/down-arrow12.png" id="arrowroatetId" style="width:25px; height:25px;">
								<a data-toggle="collapse" class="title-click"  id="applicationReceivedStatus" href="#Application-status-link">
									<header id="cusorEvent;">APPLICATION RECEIVED</header>
								</a>
								</div>
								
								
								
								<div class="status-content" id="Application-status-link"  style="display:none;" >
										<div class="img-wrapper">
											<img src="/images/received.png" alt="Received"
												class="status-icon">
										</div>
										<div>
											<header>APPLICATION RECEIVED</header>
											<p>Your application has been received.
											<p>It is currently under verification.</p>
											</p>
										</div>
									</div>
								
							</div>
							
							
							<!-- <div></div> -->
								<div class="application-status subsequent" id="verificationCompletedStatusExpandId" style="pointer-events: none;">
							<div class="status-title">
											<!-- <img src="/images/down-arrow12.png" id="arrowroatetId" style="width:25px; height:25px;"> -->
								<a data-toggle="collapse" class="title-click"  id="verficationCompleteStatus" href="#VerficationComplete-status-link">
									<header id="cusorEvent;">VERIFICATION COMPLETE</header>
								</a>
								</div>
								
								
								
								<div class="status-content" id="VerficationComplete-status-link"  style="display:none;" >
										<div class="img-wrapper">
											<img src="/img/icon/status/unpaid.svg" alt=""
												class="status-icon">
										</div>
										<div>
											<header>PAID</header>
											<p>Order is not paid.
											<p>You can make a payment right now.</p>
											</p>
										</div>
									</div>
								
							</div>
							
							
							<!-- <div></div> -->
							
								<div class="application-status subsequent" id="decisionStatusExpandId" style="pointer-events: none;"">
							<div class="status-title">
										<!-- <img src="/images/down-arrow12.png" id="arrowroatetId" style="width:25px; height:25px;"> -->
								<a data-toggle="collapse" class="title-click"  id="decisonStatus" href="#Decison-status-link">
									<header id="cusorEvent;">DECISON</header>
								</a>
								</div>
								
								
								
								<div class="status-content" id="Decison-status-link"  style="display:none;" >
										<div class="img-wrapper">
											<img src="/img/icon/status/unpaid.svg" alt=""
												class="status-icon">
										</div>
										<div>
											<header>PAID</header>
											<p>Order is not paid.
											<p>You can make a payment right now.</p>
											</p>
										</div>
									</div>
								
							</div>
							
							
							<!-- <div></div> -->
							
						
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
									
									<div class="input-box-bottom button-container" id="makependingPaymentButtonId" style="display: none;">
										<a target="_blank"
											href=""
											class="button-no-arrow button-green" onclick="makePendingPayment();">MAKE PAYMENT</a>
									</div>
									
									
									<div class="input-box-bottom button-container" id="continueApplicationButtonId" style="display: none;">
										<a target="_blank"
											href=""
											class="button-no-arrow button-green" onclick="continueYourApplication();">CONTINUE YOUR APPLICATION</a>
									</div>
									
									<div class="input-box-bottom button-container" id="uploadDocumentButtonId" style="display: none;">
										<a target="_blank"
											href=""
											class="button-no-arrow button-green" onclick="uploadDocument();">UPLOAD YOUR DOCUMENT</a>
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
		<input type="hidden" id="applicationStatus">




	</section>
	<%@include file="footer.jsp"%>
	<script>


	$(document).on(
			
			"click",
			".status-title",
			function(e) {
				var activeclass=true;
				 if($(".status-title").hasClass("active")){
					
					$(".status-title").removeClass("active");
					$(".status-content").css("display","none");
						return  false;
				}  
				var sectionId = $(this).children("a").attr("id");
				var section = $(this).children("a").attr(
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
		$("#" + secid).parent().addClass("active");
		
		
	}

	
	
	function makePendingPayment(){
		var authUrl = window.location.href;
		var authKey = authUrl.split('=')[1];
		
		var param ="hash="+authKey;
		window.open("/payment/?"+param);
	}

	function uploadDocument(){
		var authUrl = window.location.href;
		var authKey = authUrl.split('=')[1];
		var param = "?hash="+authKey;
		window.open("/en/upload-document/"+param);
		
	}

	function continueYourApplication(){
		var authUrl = window.location.href;
		var authKey = authUrl.split('=')[1];
		var param ="hash="+authKey;
		window.open("/en/additional-information/"+param);
		
	}
	
	</script>
	
	<script>
	
	

	window.onload = function () {
		getApplicationDetails();
		
	}

	
	
	function getApplicationDetails(){
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
				$('#applicationStatus').val(data.checkApplicationStatus);
				checkApplicationStatus();
				
			},	
			error : function(data) {
				console.log("error when gettig data");
			}
		}); 
		
		}

		function checkApplicationStatus(){
			
			var applicationStatus = $('#applicationStatus').val();
			
			if(applicationStatus=="Unpaid"){
				$('#makependingPaymentButtonId').show();
				$('#paidStatusExpandId').hide();
				$('#unfinishedStatusExpandId').hide();
				$('#verificationStatusExpandId').hide();
				$('#missingDocStatusExpandId').hide();
				$('#applicationReceivedStatusExpandId').hide();
				
				
				
			}else if(applicationStatus=="Unfinished"){
				$('#Unfinihed-status-link').show();
			
				$('#continueApplicationButtonId').show();
				$('#unpaidStatusExpandId').hide();
				$('#paidStatusExpandId').show();
				$('#unfinishedStatusExpandId').show();
				$('#verificationStatusExpandId').hide();
				$('#missingDocStatusExpandId').hide();
				$('#applicationReceivedStatusExpandId').hide();
			}else if(applicationStatus=="Missing documents"){
				
				$('#missingDocumet-status-link').show();
				$('#uploadDocumentButtonId').show();
				$('#paidStatusExpandId').show();
				$('#unpaidStatusExpandId').hide();
				$('#unfinishedStatusExpandId').hide();
				$('#verificationStatusExpandId').show();
				$('#missingDocStatusExpandId').show();
				$('#applicationReceivedStatusExpandId').hide();
			}else if(applicationStatus=="Application Received"){
				$('#Application-status-link').show();
				$('#paidStatusExpandId').show();
				$('#unpaidStatusExpandId').hide();
				$('#unfinishedStatusExpandId').hide();
				$('#verificationStatusExpandId').hide();
				$('#missingDocStatusExpandId').hide();
				$('#applicationReceivedStatusExpandId').show();
				
				
				
			}
		}
	
	

</script>

</body>
</html>