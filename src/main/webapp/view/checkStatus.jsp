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

<script src="/js/select2.min.js"></script>
<link rel="stylesheet" href="/css/home.css" type="text/css">
<link rel="stylesheet" href="/css/india.css" type="text/css">
<link rel="stylesheet" href="/css/contact.css" type="text/css">
<link rel="icon" href="/images/favicon-1.png" type="image/x-icon">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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
     font-weight: 700;
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

select#dayDOB {
    width: 100%;
    height: 50px;
    padding: 8px;
    font-size: 18px;
    background: #f0f1ed;
}
select#dayMonth{
 	width: 100%;
    height: 50px;
    padding: 8px;
    font-size: 18px;
    background: #f0f1ed;

}
select#yearlistdob{
	width: 100%;
    height: 50px;
    padding: 8px;
    font-size: 18px;
    background: #f0f1ed;
}
input#name {
    height: 50px;
}
input#nationality {
    height: 50px;
}
.left-side {
    width: 80%;
    margin: auto;
}
h3#statusId {
    text-align: justify;
    font-size: 30px;
    margin-left: 10px;
}
.visatstausdiv{
display: flex;
font-size: 30px;
    color: #2b1569;
    font-weight: 700;
}
.visadescriptiondiv{
display: flex;
font-size: 30px;
    color: #2b1569;
    font-weight: 700;
}
p#statusdescription {
    font-size: 20px;
    color: #2b1569;
    margin-left: 10px;
}

</style>

</head>
<body>
	<div id="overlay" class="hidden mobileMenuOverlay"></div>
	<%@include file="header.jsp"%>
	<section class="main-site-content">
		<div class="top-background" style="background-image: url('/images/banner_Entry-and-Travel-2.jpg');"></div>
		<div class="container">
			<div class="row">
		
				<div class="col-md-12">
					<div class="top-content-text padding">
					</div>
					<section class="gallery-big padding-rwd">
						<div class="steps" id="typesetpedvisa" style="background-color: #ffffff;margin:50px 0 50px 0;">
							<section class="contact-form padding">
								<div class="left-side">
									<h3 class="description-steps-h3">
										Check application status
										
									</h3>
									<div class="contact-form-container" style="position: relative">
											<div class="row" style="margin-top: 3rem;">
												<div class="col-sm-12">
													<div class="input-container">
														<label class="drop-down-label" for="name">Application ID</label>
														<div class="input text">
															<input type="text"
																class="initial-input input-normal"
															placeholder="Your Application ID" id="applicationId" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" required onchange="validate();"/>
										</div>
									<span class="error-message" id="applicationErrorId" style="display: none; color: red;">Please take your application id</span>
									</div>
									</div>
												
											</div>
									<div class="row" style="margin-top: 3rem;"> 
						              <div class="col-sm-4">
						              <label class="drop-down-label" for="dayDOB">Day of birth</label>
						             <select id="dayDOB" onchange="validate();">
									<option value="Day">Day</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
									<option value="13">13</option>
									<option value="14">14</option>
									<option value="15">15</option>
									<option value="16">16</option>
									<option value="17">17</option>
									<option value="18">18</option>
									<option value="19">19</option>
									<option value="20">20</option>
									<option value="21">21</option>
									<option value="22">22</option>
									<option value="23">23</option>
									<option value="24">24</option>
									<option value="25">25</option>
									<option value="26">26</option>
									<option value="27">27</option>
									<option value="28">28</option>
									<option value="29">29</option>
									<option value="30">30</option>
									<option value="31">31</option>
									</select>
						            </div>
						            
					             <div class="col-sm-4">
					               <label class="drop-down-label" for="dayMonth">Month of birth</label>
					             <select id="dayMonth" onchange="validate();">
								<option value="Month">Month</option>
								<option value="Jan">Jan</option>
								<option value="Feb">Feb</option>
								<option value="March">March</option>
								<option value="April">April</option>
								<option value="May">May</option>
								<option value="June">June</option>
								<option value="July">July</option>
								<option value="Aug">Aug</option>
								<option value="Sept">Sept</option>
								<option value="Oct">Oct</option>
								<option value="Nov">Nov</option>
								<option value="Dec">Dec</option>
								</select>
					            </div>
		            
						            <div class="col-sm-4">
						             <label class="drop-down-label" for="yearlistdob">Year of birth</label>
						              <select id="yearlistdob" onchange="validate();"> 
									<option value="Year">Year</option>
									
									</select>
						            </div>
			            <!--  <div class="col-sm-2">
			             
			             <div class="error-mark" id="dobError" style="display:none;"><i class="icon-error"></i></div>
			            <div class="success-mark" id="dobSucess" style="display:none;"><i class="icon-ok"></i></div>
			            
			            </div> -->
			            <span class="error-message" id="doberrorr" style="display: none; color: red; margin-left:32px;">Please choose date of birth</span>
         			   </div>
											<div class="row" style="margin-top: 3rem;">
												<div class="col-sm-12">
													<div class="input-container">
														<label class="drop-down-label">Surname(s)</label>
														<div class="input text">
															<input type="text" 
																class="initial-input input-normal"
																placeholder="Your Surname(s)" id="surnameId" onkeydown="return /^[a-zA-Z\s]*$/i.test(event.key)" required onchange="validate();"/>
														</div>
														<span class="error-message" id="surnameErrorId" style="display: none; color: red;">Please take your surname</span>
													</div>
												</div>
											</div>
											
											<div class="row zero">
												<div class="contact-button-wrapper">
													<div class="button-container">
														<button id="checkStstusButtonId"  onclick="checkApplicationStatus();">CHECK STATUS</button>
													</div>
												</div>
											</div>
									</div>
								</div>
							</section>
						</div>
						<div class="response-message">
										<div class="visatstausdiv">Your Visa Status:<h3 class="description-steps-h3" id="statusId">
										</h3></div>
										<p id="statusdescription"></p>
										
										<div class="buttonsforstatus">
										</div>
									</div>
					</section>
					
				</div>
			</div>
		</div>
	</section>


	<%@include file="footer.jsp"%>
	
	<script>
	window.onload = function () {
		getYearList()
	}
	
	

	function getYearList(){
		 var ddldobyears = document.getElementById("yearlistdob");	
	        var currentYear = (new Date()).getFullYear();
	        for (var i = 1950; i <= currentYear; i++) {
		        
	            var option = document.createElement("OPTION");
	            option.innerHTML = i;
	            option.value = i;
	            ddldobyears.appendChild(option);
	           
	        }    

	}

	function checkApplicationStatus(){

		var applicationId = $('#applicationId').val();
			
		var dateofBirth = $('#dayDOB').val()+'-'+$('#dayMonth').val()+'-'+$('#yearlistdob').val();
		var surName = 	 $('#surnameId').val();

		 $.ajax({
				type : 'GET',
				url : '/application/getApplicationStatus/'+applicationId+'/'+dateofBirth+'/'+surName,	
				async : true,
				success : function(data) {
					if(data.status==true){
						$('#statusId').text(data.data.checkApplicationStatus)
						var Applicationstatus = data.data.checkApplicationStatus;
						if(Applicationstatus=="Unpaid"){
							$('#statusdescription').text("Your application is unpaid and cannot be processed until we receive a payment from you. Please use the following link to complete a payment:")

						}else if(Applicationstatus == "Unfinished"){
							$('#statusdescription').text("Your application is not finished. You can finished it now using following link:")
							

						}else if(Applicationstatus == "Missing documents"){
							$('#statusdescription').text("The additional documents are required to fulfil your eVisa process. You can upload documents using the Upload Documents button. You can also provide them via email. Check your inbox and spam box for instructions.")
							
						}else if(Applicationstatus == "Application Received"){
							$('#statusdescription').text("Your application has been received. It is currently under verification.")
							

						}
						
						
					}else{
						Swal.fire({
							  title: "<img src='/images/fail1234.png' style='width:150px;'>", 
							  html: "Application not found",  
							  confirmButtonText: "Ok", 
							 
							});
						
						}
						
				},	
				error : function(data) {
					console.log("error when gettig data");
				}
			}); 
			

	}
	function validate(){
		var isvalidated =true;
		
		if($('#applicationId').val()==""){
			
		    $("#applicationErrorId").show();
		    isvalidated =false;
		    return false;  
		} else{
			$("#applicationErrorId").hide();
					
		}
		if($('#dayDOB').val()!="Day" && $('#dayMonth').val()!="Month" && $('#yearlistdob').val()!="Year" ){
			var birthdate = new Date($('#dayDOB').val()+'-'+$('#dayMonth').val()+'-'+$('#yearlistdob').val());
			var currentDate = new Date();
			if(birthdate >= currentDate){
				
			$('#doberrorr').text("The provided date is too early");
			isvalidated =false;
		    return false;  
			}
			else{
				$('#doberrorr').hide();
			}		
		}else{
			$('#doberrorr').show();
			isvalidated =false;
		    return false;
		}
		
		if($('#surnameId').val()==""){
			
			$('#surnameErrorId').show();
			isvalidated=false;
			return false;
		}else{
			$('#surnameErrorId').hide();
			
		}
		
		return isvalidated;
	}
	
	

	</script>
</body>
</html>