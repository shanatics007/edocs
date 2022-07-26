<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.HashMap" %>
 <%@ page import="com.edocs.Model.PaymentModel"%>
 <%@ page import="java.util.Date" %>
 <%@ page import=" java.time.LocalDate" %>
 <%@ page import="java.time.Month"%>
 <%@ page import="java.time.format.DateTimeFormatter"%>
 <%@ page import="java.util.Calendar"%>
 
 <%    
 int applicationId=0;
 String price=null;
 boolean checkUser=false;
 long userId ;
 String firstName = null;
 String lastName = null;
 String paymentId = null;
 
 if (request.getSession(false).getAttribute("paymentDetails") != null) {
		HashMap<Object, Object> paymentModel =(HashMap<Object, Object>) request.getSession(false).getAttribute("paymentDetails");
		//ApplicationForVisaModel test =request.getSession(false).getAttribute("formDetails");
		
		PaymentModel paymentData = (PaymentModel)paymentModel.get("data");
		if(paymentData!=null){
		
		 checkUser=true;
		 applicationId = paymentData.getPkid();
		 System.out.println("AppId:"+applicationId);
		 userId = paymentData.getUserId();
		 price = paymentData.getPrice();
		 firstName = paymentData.getFirstName();
		 lastName = paymentData.getLastName();
		 paymentId = paymentData.getPaymentId();
		}else{
			
			checkUser=false;
		}
	} 
 
%>


<!DOCTYPE html>

<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="icon" href="/images/favicon-1.png" type="image/x-icon">
<title>Edocs Travel</title>
<script src="/js/home.js"></script>
<script src="/js/select2.min.js"></script>
<link rel="stylesheet" href="/css/home.css" type="text/css">
<link rel="stylesheet" href="/css/india.css" type="text/css">
<link rel="stylesheet" href="/css/contact.css" type="text/css">
<script src="jquery-3.6.0.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style>


@media ( max-width : 599px) {

	
}
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
	
	color: #1d3367 !important;
	text-align: center; 
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
div#fristlabelId {
    background: #1d3367;
}
span#fristID {
    color: white;
}
span#frilabelId {
    color: white;
}
div#thirdlabelId {
    background: white;
}
span#thirdId {
    color: #1d3367 !important;
}
#secondId::before {
    background: white;
   
}
#secondId::After {
    background: white;
   
}
 div#subitID {
    width: 28% !important;
} 





.step-icon.step-icon-2 {
	margin-bottom: 15px;
	margin-top: 15px;
}

.step-icon.step-icon-3 {
	margin-bottom: 15px;
	margin-top: 15px;
}

.checkedConfirm {
    text-align: center;
}

#ApplicationNumberForConfirmationForm {
    border-bottom: 1px solid #1d3367;
}
#applicationId{
	border-bottom: 1px solid #1d3367;
}

#anchorButton {
    width: 40%;
    text-align: center;
    margin-bottom: 10px;
}

#imgelogoId{
display: block;
width: 25%;
margin: auto;
margin-top: 40px;
margin-bottom: 40px;
}
.description-steps {
    padding-right: 6rem;
    padding-left: 6rem;
}


</style>

</head>
<body>
	<div id="overlay" class="hidden mobileMenuOverlay"></div>
	<%@include file="header.jsp"%>
	<section class="main-site-content">
	<!-- <div class="top-background" style="background-image: url('/images/background 2.jpg');"></div> -->
		<div class="container">
			<div class="row" >
				<div class="col-sm-8">
					  <div class="top-content-text padding">
						<h1 id="headsection" style="color: #ffff; font-size: 50px; font-weight: 600; text-align: center;">
						</h1>
					</div> 
				   
					<section class="description padding mobile-pt-0" style="background-color: #ffffff; padding-top: 0px; padding-bottom: 50px; margin-bottom: 60px; padding-left: 0px !important;padding-right: 0px !important;">
						<p style="color: #1d3367; font-size: 30px;text-align: center; font-weight: 600;">
							<div class="ee-form-steps">
             <div class="form-step active-step" id="fristlabelId"><span class="form-step-number" id="frilabelId">
                  1
                  </span> <span class="form-step-label" id="fristID" >Basic info<br>and payment</span><span class="form-step-complete"><i class="icon-ok" style="display: none;"></i><img src="/images/check.png" style="width:25px; height:25px;"></span>
               </div> 
              
               <div class="form-step" id="secondId"><span class="form-step-number"  style="color:#fff">
                  2
                  </span> <span class="form-step-label" style="color:#fff">Additional<br>information</span> <span class="form-step-complete"><i class="icon-ok" style="display: none;"></i><img src="/images/check.png" style="width:25px; height:25px;"></span>
               </div>
               <div class="form-step" id="thirdlabelId"><span class="form-step-number"  style="color:#1c3367">
                  3
                  </span> <span class="form-step-label" style="color:#1c3367">Check<br>your email</span> <span class="form-step-complete"><i class="icon-ok" style="display: none;"></i></span>
               </div>
            </div>
				<!-- <a class="menu-logo"  href="/"><img src="/images/edocs-trave-logo.png"  class="desktop-logo"  id="edocId" style="width: 250px; height:60px;"><img src="/images/edocs-trave-logo.png" class="mobile-logo" loading="lazy" style="display:none;"></a>
					 -->
					 <img src="/images/edocs-trave-logo.png" id="imgelogoId">
						<div class="description-steps">
							<p class="description-steps-eta-planning" style="font-size:26px; line-height: 35px;">
							Your edocs Should be ready in 72h and send your email.
							 </p>
						
							<p class="description-steps-eta-planning" style="font-size:18px;">
								In some case processing time can take  longer.Waiting time  depends on the Government of <span id="visaCountry"></span></p>
							<p class="description-steps-eta-planning" style="font-size:18px; margin-bottom: 4rem;">
							<span id="ApplicationNumberForConfirmationForm">Application number   </span> 
							<span id="applicationId"></span>
							</p> 
							<div class="input-box-bottom button-container submit-input-container" >
                           		<a href="/" class="aclass" id="anchorButton">GET NEXT VISA</a>
                           </div>
                           <a href="/login" style="display: block;text-align: center;">or go to your account</a>
							
						</div> 
					</section>
					
					<input type="hidden" id="userId">
					<input type="hidden" id="paymentId">
					
					
				
				</div>
			</div>
		</div>
	</section>
	
	
	

	<%@include file="footer.jsp"%>
	
	<script>
	
	window.onload = function () {
		var applicationId = window.location.href;
		var spliturl =  applicationId.split('/');
		applicationId = spliturl[5];
		
		$('#applicationId').text(applicationId);
		
		getStep1ApplicationDetails(applicationId)

	}	
	
	 function getStep1ApplicationDetails(applicationId){
		 
	    
	        $.ajax({
	    		type : 'GET',
	    		url : '/application/getApplicationDetailsById/'+applicationId,	
	    		async : true,
	    		success : function(data) {
	    			
	    		
	    			$('#visaCountry').text(data.toCountry);
	    			$('#userId').val(data.userId);
	    		},	
	    		error : function(data) {
	    			console.log("error when gettig data");
	    		}
	    	}); 
	    }
	</script>

</body>
</html>