<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.HashMap" %>
 <%@ page import="com.edocs.Model.ApplicationForVisaModel" %>
 <%@ page import="java.util.Date" %>
 <%@ page import=" java.time.LocalDate" %>
  <%@ page import="java.time.Month"%>
  <%@ page import="java.time.format.DateTimeFormatter "%>
  <%@ page import="java.util.Calendar"%>
  
 <%    
 String travelAirports=null;
 int pkId;
 String applicationId=null;
 String plannedDateOfTravel=null;
 String travelPurpose = null;
 String firstName = null;
 String lastName = null;
 String email = null;
 String contactPhoneNumber = null;
 String nationality=null;
 String price=null;
 String dateOfBirth=null;
 boolean checkUser=false;
 
 String dayDOB = null;
 String dayMonth = null;
 String yearlistdob = null;
 
 String dayArrival = null;
 String montharrival = null;
 String yearlist = null;
 String authKey = null;
 long userId=0;

 
if (request.getSession(false).getAttribute("formDetails") != null) {
	HashMap<Object, Object> appVisamodel =(HashMap<Object, Object>) request.getSession(false).getAttribute("formDetails");
	//ApplicationForVisaModel test =request.getSession(false).getAttribute("formDetails");
	System.out.println("AppData:"+appVisamodel.get("data"));
	ApplicationForVisaModel ApplnFormData = (ApplicationForVisaModel)appVisamodel.get("data");
	if(ApplnFormData!=null){
	
	checkUser=true;
	
	 pkId = ApplnFormData.getPkid();
	 applicationId = Integer.toString(pkId);
	 travelAirports = ApplnFormData.getTravelAirports();
	 plannedDateOfTravel = ApplnFormData.getPlannedDateOfTravel();
	 String [] dateOfTravel = plannedDateOfTravel.split("-");
	
	 dayArrival = dateOfTravel[0];
	 montharrival = dateOfTravel[1];
	 yearlist = dateOfTravel[2];
	
	 travelPurpose = ApplnFormData.getPurposeForTravel();
	 firstName = ApplnFormData.getFirstName();
	 lastName =  ApplnFormData.getLastName();
	 email = ApplnFormData.getEmail();
	 contactPhoneNumber = ApplnFormData.getContactPhoneNumber();
	nationality = ApplnFormData.getNationality();
	 userId = ApplnFormData.getUserId();
	 price = ApplnFormData.getPrice();
	 authKey = ApplnFormData.getConfirmAuthKey();

   	dateOfBirth = ApplnFormData.getDateOfBirth();
	String [] dateBirth =  dateOfBirth.split("-");
	 
	 dayDOB = dateBirth[0];
	 dayMonth = dateBirth[1];
	 yearlistdob = dateBirth[2];
	 
	}else{
		
		checkUser=false;
	}
} 
String userEmail = "";
String userfullName = "";
long userId1 = 0;
String userFirstName = "";
String userLastName = "";
boolean userCheckslogin=false;
if (request.getSession(false).getAttribute("userLogin") != null) {
		HashMap<Object, Object> userDetails =(HashMap<Object, Object>) request.getSession(false).getAttribute("userLogin");
		UserModel user1 = (UserModel)userDetails.get("data");
		userEmail= user1.getUserEmail();
		userfullName = user1.getFullName();
		String [] fullNameSplitted = userfullName.split(" ");
		userFirstName = fullNameSplitted[0];
		userLastName = fullNameSplitted[1];
		userId1 = user1.getUserId();
		checkUser=true;
		userCheckslogin=true;
}
%> 
    <!DOCTYPE html>
 
<html lang="en">
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
      <title>Edocs Travel</title>
       
       <link rel="stylesheet" href="/css/default.css"> 
    <link rel="stylesheet" href="/css/home.css">
        <link rel="stylesheet" href="/css/additionalInfoFrom.css">
      <link rel="icon" href="/images/favicon-1.png" type="image/x-icon">
      
      <script src="jquery-3.6.0.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
     
       <script async="" src="/js/home.js"></script>
       <script async="" src="/js/tag.js"></script>
       <script async="" src="/js/vendor.js"></script>
       
 <style>
       
 .newform {
   width: 80%;
   margin: auto;
	}
	.row {
    margin-bottom: 0px;
    margin-top: 1rem;
}
select{
	width: 100%;
    height: 50px;
    padding: 8px;
    font-size: 18px;
}
input[type="radio"] {
    display: block !important;
}
input[type="text"] {
    width: 100%;
    height: 50px;
  font-size: 18px;
}
label {
    font-size: 18px;
    font-weight: 500;
    color: #1d3367;
}
div#VisaandpriceId {
    border-bottom: 1px solid #D8D9CF;
    display: none;
}

span#priceidinDoller {
    display: flex;
    align-items: center;
    font-weight: 700;
    font-size: 22px;
    color: #1d3367;
}
#formheadrId{
    font-size: 20px;
    font-weight: 500;
    color: #1d3367;
}
#radiorow .col-sm-5:first-child {
    padding-left: 32px;
}
#radiorow .col-sm-5:last-last {
    padding-right: 32px;
}

input#no {
   height: 24px;
    width: 18px;
    margin-top: 10px;
}
input#yes {
    height: 24px;
    width: 18px;
    margin-top: 10px;
}
label#radiolabel {
    margin-left: 20px;
    margin-top: 10px;
}

.radioborder {
    display: flex;
    border: 1px solid;
    padding: 0 10px;
    height: 50px;	
}
.col-sm-5 {
    height: 50px;
    padding: 0;
    
}
.success-mark{
	text-align: inherit !important;

}
.error-mark{
	text-align: inherit !important;
}
.notValidVisa {
    font-size: 18px;
    color: red;
    display: none;
}

.ee-form-actual{
    margin-left: 0px !important;

}

@media (max-width: 599px){
	.container{
	 margin-left: 30px !important;
    margin-right: 30px !important;
	}
	.ee-form-actual {
    padding-bottom: 50px !important;
	}
	select#dayArrival {
    margin-bottom: 20px;
 }	
 select#montharrival{
  margin-bottom: 20px;
 }
 select#dayDOB{
 margin-bottom: 20px;
 }
 select#dayMonth{
 margin-bottom: 20px;
 }
 .input-box[type="FileInput"], .input-box[type="SubmitInput"]{
 	width: 50% !important;
 	margin: auto;
 }
 #formheadrId{
 margin-left: 20px;
 }
 .col-sm-2{
 display: none !important;
 }
 .ee-form-sidebar{
 width: 100% !important;
 }
  
}

@media (max-width: 599px){
	.row.ee-form-container {
    display: block !important;
}

}

 </style>
   </head>
   <body>
      <div id="overlay" class="hidden mobileMenuOverlay"></div>
 	<%@include file="header.jsp"%>
  
      

   
 <div id="ee-apply-form" class="ee-apply-form">
  
   <div class="container">
      <div class="row ee-form-container">
         <div class="ee-form-actual">
           
            <div class="ee-form-inner">
               <div id="ee-form-step1">
   </div>
   		
   		        
         <h1 id="formheadrId"> Necessary documents</h1>  
    <div class="newform" id="necessaryDocId">
    
    	<p>Document may be obtained by two options:through digital camera/webcam or by scanning the physical phptograph. 
    	 </p>
  
   </div>   
   <div class="newform" id="documentsuploadsFormId">
    
     <label>Photography</label> 
    
     <p>The photo should present a full face, front view, eyes open.
    		No black&amp;white photos, no blurred photos.
    	 </p>
    	 <div class="row" id="documentUploadFormId">
    	 <div class="col-sm-4" id="photographyUploadID">
    	<button type="button" class="btn btn-primary">UPLOAD</button>
    	 </div>
    	  <div class="col-sm-2">
    	 or
    	 </div>
    	 <div class="col-sm-4" id="photographyTakephotoId">
    	  <button type="button" class="btn btn-primary">TAKE A PHOTO</button>
    	 </div>
    	 <div class="col-sm-2">
         <div class="error-mark" id="phoneError" style="display:none;"><i class="icon-error"></i></div>
         <div class="success-mark" id="phoneSucess" style="display:none;"><i class="icon-ok"></i></div>
       </div>
    	</div>
    	
    	
    	<label>Biographical page of passport</label> 
    	
    	
	     <p>All four corners should be shown up on the final scanned image. 
	     The image must be clear and legible.
    	 </p>
    	 <div class="row" id="documentUploadFormId">
    	 <div class="col-sm-4" id="photographyPassportUploadId">
    	<button type="button" class="btn btn-primary">UPLOAD</button>
    	 </div>
    	  <div class="col-sm-2">
    	 or
    	 </div>
    	 <div class="col-sm-4" id="photographyPassportTakephotoId">
    	  <button type="button" class="btn btn-primary">TAKE A PHOTO</button>
    	 </div>
    	 <div class="col-sm-2">
         <div class="error-mark" id="phoneError" style="display:none;"><i class="icon-error"></i></div>
         <div class="success-mark" id="phoneSucess" style="display:none;"><i class="icon-ok"></i></div>
       </div>
    	</div>
    	
    	<label>Hotel Booking</label> 
    
    	 <p></p>
    	 <div class="row" id="documentUploadFormId">
    	 <div class="col-sm-4" id="hoteluploadId">
    	<button type="button" class="btn btn-primary">UPLOAD</button>
    	 </div>
    	  <div class="col-sm-2">
    	 or
    	 </div>
    	 <div class="col-sm-4" id="hotelTakeaphotoId">
    	  <button type="button" class="btn btn-primary">TAKE A PHOTO</button>
    	 </div>
    	 <div class="col-sm-2">
         <div class="error-mark" id="phoneError" style="display:none;"><i class="icon-error"></i></div>
         <div class="success-mark" id="phoneSucess" style="display:none;"><i class="icon-ok"></i></div>
       </div>
    	</div>
    	
    	<label>Residence proof or ID</label> 
     	<p></p>
    	 <div class="row" id="documentUploadFormId">
    	 <div class="col-sm-4" id="residenceuploadId">
    	<button type="button" class="btn btn-primary">UPLOAD</button>
    	 </div>
    	  <div class="col-sm-2">
    	 or
    	 </div>
    	 <div class="col-sm-4" id="residenceTakephotoId">
    	  <button type="button" class="btn btn-primary">TAKE A PHOTO</button>
    	 </div>
    	 <div class="col-sm-2">
         <div class="error-mark" id="phoneError" style="display:none;"><i class="icon-error"></i></div>
         <div class="success-mark" id="phoneSucess" style="display:none;"><i class="icon-ok"></i></div>
       </div>
    	</div>
    	 
    	 
   </div>
   		

                  </div>
                  <div>
                     <div>
                    
                        <div class="input-box" type="SubmitInput" name="go-to-step-2" label="SEND AND PAY" hint="" required="required" validations="" options="" reactions="[object Object]" possiblereactions="" possibledisablingreactions="" possibleemits="">
                           <div class="input-box-bottom button-container submit-input-container">
                              <button class="btn" style="text-align: center;" onclick="submitApplication();">SEND AND DOCUMENT</button> <!---->
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
          <div class="ee-form-sidebar" id="desktopViewId">
            <div class="ee-form-info ee-form-info--hidden">
               <div class="ee-errors" style="display: none;">
                  <div class="error-title">
                     Attention
                  </div>
                  <ul></ul>
               </div>
               <div class="form-infobox-mobile form-infobox">
                  
               </div>
           
              
            </div>
         </div>
            </div>
           
         </div>
       
      </div>
            

     
  	<%@include file="footer.jsp"%>
  	
  	<script>
  	
  	
  	function submitApplication(){
  	  	
  		var urlString  = window.location.href.split('/');
    	var country = urlString[4];
		
		if($('#accept-terms-track').prop('checked') && $('#accept-gdpr-track').prop('checked')){
			$('.checkmark').css('border','1px solid black');
			if(validate()){
				var checkprice = $('#priceidinDoller').text();
				var splittedPrice = checkprice.split("USD");
				checkprice = splittedPrice[0];
				if(checkprice!=0){
				
				var url ="/application/saveApplication";
				var dateofArrival = $('#dayArrival').val()+'-'+$('#montharrival').val()+'-'+$('#yearlist').val();
				var dateofBirth = $('#dayDOB').val()+'-'+$('#dayMonth').val()+'-'+$('#yearlistdob').val();
				$.ajax({
					type : "POST",
					url : url,	
					 headers: {
		                    'Content-Type': 'application/json'
		                },
					data: JSON.stringify ({
						"plannedDateOfTravel": dateofArrival,
						"travelAirports": $('#portArrival').val(),
						"firstName": $('#firstNameID').val(),
						"lastName": $('#lastNameID').val(),
						"dateOfBirth": dateofBirth,
						"email": $('#emailID').val(),
						"contactPhoneNumber":$('#phoneNoId').val(),
						"purposeForTravel": $('#purposeTraval').val(),
						"nationality": $('#countrylist').val(),
						"price": $('#priceidinDoller').text(),
						"isPayment":false,
						"pkid":$('#applicationId').val(),
						"confirmAuthKey":$('#authKeyId').val(),
						"userId":$('#usersId').val(),
						"toCountry":country
						
						
					}),
					async : true,
					success : function(data) {
						if(data.status==false){
							Swal.fire({
								  title: "<img src='/images/fail1234.png' style='width:150px;'>", 
								  html: "Register before apply",  
								  confirmButtonText: "Ok", 
								 
								}).then(function() {
									
									localStorage.setItem("dayArrival", $('#dayArrival').val());
									localStorage.setItem("monthArrival", $('#montharrival').val());
									localStorage.setItem("yearArrival", $('#yearlist').val());
									localStorage.setItem("portArrival", $('#portArrival').val());
									localStorage.setItem("firstname", $('#firstNameID').val());
									localStorage.setItem("lastName", $('#lastNameID').val());
									localStorage.setItem("dayDOB", $('#dayDOB').val());
									localStorage.setItem("dayMonth", $('#dayMonth').val());
									localStorage.setItem("yearlistdob", $('#yearlistdob').val());
									localStorage.setItem("email", $('#emailID').val());
									localStorage.setItem("phoneNo", $('#phoneNoId').val());
									localStorage.setItem("purposeTraval", $('#purposeTraval').val());
									localStorage.setItem("nationality", $('#countrylist').val());
									
								    window.location = "/register/"+country;
								    
								});

						}else{
							var param ="hash="+data.hash;
							localStorage.removeItem("dayArrival");
							localStorage.removeItem("monthArrival");
							localStorage.removeItem("yearArrival");
							localStorage.removeItem("portArrival");
							localStorage.removeItem("firstname");
							localStorage.removeItem("lastName");
							localStorage.removeItem("dayDOB");
							localStorage.removeItem("dayMonth");
							localStorage.removeItem("yearlistdob");
							localStorage.removeItem("email");
							localStorage.removeItem("phoneNo");
							localStorage.removeItem("purposeTraval");
							localStorage.removeItem("nationality");
							
							localStorage.setItem("dayArrival", "Day");
							localStorage.setItem("monthArrival", "Month");
							localStorage.setItem("yearArrival", "Year");
							localStorage.setItem("dayDOB", "Day");
							localStorage.setItem("dayMonth", "Month");
							localStorage.setItem("yearlistdob", "Year");
							
							 window.location.href = "/payment/?"+param;
							
							
							}
						
					},	
					error : function(data) {
						console.log("error when gettig data");
					}
				});
			}else{
				Swal.fire({
					  title: "<img src='/images/fail1234.png' style='width:150px;'>", 
					  html: "Sorry, E-visa not available. please contact the nearest embassy",  
					  confirmButtonText: "Ok", 
					 
					})
				}

			}else{
					validate();
				}
		}else{
				
			$('#accept-terms-track').blur();
     		 $('#accept-gdpr-track').blur();
     		$('.checkmark').css('border','1px solid red');


			}


		}


  	function changePricing(){
  	  	
  		var urlString  = window.location.href.split('/');
  	  	var toCountry = urlString[4]; 
  	  	var fromCountry = $("#countrylist").val();
  	  	var travel_purpose = $('#purposeTraval').val(); 	  	
  	  	var param = "?fromCountry="+fromCountry+"&toCountry="+toCountry+"&travel_purpose="+travel_purpose;
  		 $.ajax({
  			type : 'GET',
  			url : '/country/getCountryVisaPrices'+param,
  			async : true,
  			success : function(data) {
  				console.log(data)
  				if(data!=0){
	  				$('.notValidVisa').css('display','none');
	  				$('#priceidinDoller').text(data +" USD");
	  				$('#priceidinDollerVisa').text(data +" USD");
	  				$('#VisaandpriceId').css('display','flex');
  				}else{
					$('.notValidVisa').css('display','block');
					$('#priceidinDoller').text(data +" USD");
	  				$('#priceidinDollerVisa').text(data +" USD");
  	  				}	
  			},	
  			error : function(data) {
  				console.log("error when gettig data");
  			}
  		}); 
	
  	 }

	 function setSessionValues(){
		
		$('#portArrival').val('<%=travelAirports%>');
		$('#firstNameID').val('<%=firstName%>');
		$('#lastNameID').val('<%=lastName%>');
		$('#emailID').val('<%=email%>');
		$('#phoneNoId').val('<%=contactPhoneNumber%>');
		$('#dayArrival').val('<%=dayArrival%>');
		$('#montharrival').val('<%=montharrival%>');
		$('#yearlist').val('<%=yearlist%>');
		$('#dayDOB').val('<%=dayDOB%>');
		$('#dayMonth').val('<%=dayMonth%>');
		$('#yearlistdob').val('<%=yearlistdob%>');
		$('#applicationId').val('<%=applicationId%>');
		$('#authKeyId').val('<%=authKey%>');
		$('#usersId').val('<%=userId%>');
	

	}
	 function setLoginSessionValues(checkFormStatus){
		 if(checkFormStatus=="true"){
			
			
			$('#firstNameID').val('<%=userFirstName%>');
			$('#lastNameID').val('<%=userLastName%>');
			$('#emailID').val('<%=userEmail%>');
			$('#phoneNoId').val();
			$('#dayArrival').val("Day");
			$('#montharrival').val("Month");
			$('#yearlist').val("Year");
			$('#dayDOB').val("Day");
			$('#dayMonth').val("Month");
			$('#yearlistdob').val("Year");
		
		 }
		}
	 function getAppDetailsLocalStorage(){

	    	$('#dayArrival').val(localStorage.getItem("dayArrival"));
	    	$('#montharrival').val(localStorage.getItem("monthArrival"));
	    	$('#yearlist').val(localStorage.getItem("yearArrival"));
	    	$('#portArrival').val(localStorage.getItem("portArrival"));
	    	$('#firstNameID').val(localStorage.getItem("firstname"));
	    	$('#lastNameID').val(localStorage.getItem("lastName"));
	    	$('#dayDOB').val(localStorage.getItem("dayDOB"));
	    	$('#dayMonth').val(localStorage.getItem("dayMonth"));
	    	$('#yearlistdob').val(localStorage.getItem("yearlistdob"));
	    	$('#emailID').val(localStorage.getItem("email"));
	    	$('#phoneNoId').val(localStorage.getItem("phoneNo"));
	    	$('#purposeTraval').val(localStorage.getItem("purposeTraval"));
	    	$('#countrylist').val(localStorage.getItem("nationality"));
	    	        
	       }
	
	  	

  	</script>
  	
  	<script>
	function validate(){
	var isvalidated =true;
	
			
			if($('#dayArrival').val()!="Day" && $('#montharrival').val()!="Month" && $('#yearlist').val()!="Year" ){
			var arrivalDate = new Date($('#dayArrival').val()+'-'+$('#montharrival').val()+'-'+$('#yearlist').val());
			var currentDate = new Date();
			if(arrivalDate<=currentDate){
			$('#datearrivalerror').text("The provided date is too early")
			$('#dateofArrivalError').css('display','block');
			return false;
				
			}else{
				 $('#dateofArrivalSucess').css('display','block');
				 $('#dateofArrivalError').css('display','none');
				 $('#datearrivalerror').css('display','none');

				}	

			}else{
				
				$('#datearrivalerror').text("Please choose Day, Month and Year")
				 $('#dateofArrivalError').css('display','block');
				 $('#dateofArrivalSucess').css('display','none');
				 $('#datearrivalerror').css('display','block');
				 isvalidated=false;
				 return false;
				}
			
			if(window.location.href.includes("india")){
			
			if($('#portArrival').val()!='port'){
				 $('#portofArrivalError').css('display','none');
				 $('#portofArrivalSucess').css('display','block');
				 $('#arrirvalporsterrors').css('display','none');
			
				}else{
					
					 $('#portofArrivalSucess').css('display','none');
					 $('#portofArrivalError').css('display','block');
					 $('#arrirvalporsterrors').css('display','block');
					 
					 isvalidated=false;
					 
				}
			}

			if($('#firstNameID').val()=="" || $('#firstNameID').val().length==0){
				 $('#firstNameError').css('display','block');
				 $('#firstNameSucess').css('display','none');
				 $('#nameerrors').css('display','block');
				 isvalidated=false;
				 return false;

				}else{
					
					 $('#firstNameSucess').css('display','block');
					 $('#firstNameError').css('display','none');
					 $('#nameerrors').css('display','none');
					 

					}

			if($('#lastNameID').val()=="" || $('#lastNameID').val().length==0){
				 $('#lastNameError').css('display','block');
				 $('#lastNameSucess').css('display','none');
				 $('#surnameeorr').css('display','block');
				 isvalidated=false;
				 return false;
				}else{
					
					 $('#lastNameSucess').css('display','block');
					 $('#lastNameError').css('display','none');
					 $('#surnameeorr').css('display','none');
					 
					}
			
			if($('#dayDOB').val()!="Day" && $('#dayMonth').val()!="Month" && $('#yearlistdob').val()!="Year" ){
				 $('#dobSucess').css('display','block');
				 $('#dobError').css('display','none');
				 $('#doberrorr').css('display','none');

				}else{

					 $('#dobError').css('display','block');
					 $('#dobSucess').css('display','none');
					 $('#doberrorr').css('display','block');
					 isvalidated=false;
					 return false;
					}
			
				var emailvalidate = $('#emailID').val();
				
			 	var validRegex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
				
				 if (validRegex.test(emailvalidate)==true && emailvalidate.length !=0 ) {
					 $('#emailError').css('display','none');
					 $('#emailSucess').css('display','block');
					 $('#emailerrors').css('display','none');
					 
				
				 }else{
		
					 $('#emailError').css('display','block');
					 $('#emailSucess').css('display','none');
					 $('#emailerrors').css('display','block');
					 isvalidated=false;
					 return false;
					 
							 
				}
				if($('#cnfEmail').val()==emailvalidate && $('#cnfEmail').val().length!=0){

					 $('#cnfemailError').css('display','none');
					 $('#cnfemailSucess').css('display','block');
					 $('#emailnotmatcherror').css('display','none');
					 
					}else{

						 $('#cnfemailError').css('display','block');
						 $('#cnfemailSucess').css('display','none');
						 $('#emailnotmatcherror').css('display','block');
						 isvalidated=false;
						 return false;
					}

				var phoneno = /^\d{10}$/;
				
				if($('#phoneNoId').val().length !=0 && $('#phoneNoId').val().match(phoneno)){
					 $('#phoneError').css('display','none');
					 $('#phoneSucess').css('display','block');
					 $('#phnoerror').css('display','none');
					
				}else{
					 $('#phoneError').css('display','block');
					 $('#phoneSucess').css('display','none');
					 $('#phnoerror').css('display','block');
					 isvalidated=false;
					 return false;

					}	

				if($('#purposeTraval').val()!='port'){
					$('#purposeTravelId').css('display','none')
					 $('#travelpuposeError').css('display','none');
					 $('#travelpuposeSucess').css('display','block');
					 $('#travelpurposeError').css('display','none');
				
					}else{
						$('#purposeTravelId').css('display','block')
						 $('#travelpuposeSucess').css('display','none');
						 $('#travelpuposeError').css('display','block');
						 $('#travelpurposeError').css('display','block');
						 isvalidated=false;
						 return false;
						 
					}
				if($('#countrylist').val()!='port'){
					$('#nationalityId').css('display','none')
					 $('#nationalityError').css('display','none');
					 $('#nationalitySucess').css('display','block');
					 $('#nationalityerrors').css('display','none');
				
					}else{
						$('#nationalityId').css('display','block')
						 $('#nationalitySucess').css('display','none');
						 $('#nationalityError').css('display','block');
						 $('#nationalityerrors').css('display','block');
						 isvalidated=false;
						 return false;
					}
				
					if(($('#purposeTraval').val()!='port') && ($('#countrylist').val()!='port')){
						$('#priceshow').css('display','none');
						$('#ulpriceshow').css('display','none');
						
						changePricing();
						
					}else{
							return false;
						}

				

				return  isvalidated;
				
	}


	
    window.onload = function () {
    	
    	var urlString  = window.location.href.split('/');
    	var country = urlString[4];
    	$('#CountrySummary').text(capitalizeFirstLetter(country));
    	
       
        var ddlYears = document.getElementById("yearlist");
  
        var currentYear = (new Date()).getFullYear();
       
        for (var i = currentYear; i <= 2050; i++) {
            var option = document.createElement("OPTION");
            option.innerHTML = i;
            option.value = i;
            ddlYears.appendChild(option);
           
        }

        var ddldobyears = document.getElementById("yearlistdob");	
        var currentYear = (new Date()).getFullYear();
        for (var i = 1950; i <= currentYear; i++) {
            var option = document.createElement("OPTION");
            option.innerHTML = i;
            option.value = i;
            ddldobyears.appendChild(option);
           
        }    

        if(window.location.href.includes("turkey")) {
			$('#portArrivalLabel').css('display','none');
			$('#portArrivalRow').css('display','none');	
			$('#arrirvalporsterrors').css('display','none !important');	
          }  
        else if(window.location.href.includes("thailand")){
        	  $('#portArrivalLabel').css('display','none');
  			  $('#portArrivalRow').css('display','none');
  			$('#arrirvalporsterrors').css('display','none !important');		
          } 
        else if(window.location.href.includes("pakistan")){
        	  $('#portArrivalLabel').css('display','none');
  			  $('#portArrivalRow').css('display','none');	
  			$('#arrirvalporsterrors').css('display','none !important');	
          } 
        else if(window.location.href.includes("united-arab-emirates")){
        	  $('#portArrivalLabel').css('display','none');
  			  $('#portArrivalRow').css('display','none');
  			$('#arrirvalporsterrors').css('display','none !important');		
          }  
   
    $.ajax({
			type : 'GET',
			url : '/country/getCountryList',	
			async : true,
			success : function(data) {
				 $.each(data, function(index,element) {
					 
					 $('#countrylist').append('<option value="'+element.countryCode+'">'+element.countryName+'</option>')
					
				 });
					
			},	
			error : function(data) {
				console.log("error when gettig data");
			}
		}); 

    $.ajax({
		type : 'GET',
		url : '/getTravelTypes/'+country,	
		async : true,
		success : function(data) {
			 $.each(data, function(index,element) {
				 $('#purposeTraval').append('<option value="'+element.travelType+'">'+element.travelType+'</option>')
				 
				
			 });
			
		},	
		error : function(data) {
			console.log("error when gettig data");
		}
	}); 
   <% if(request.getSession().getAttribute("formDetails") != null || request.getSession().getAttribute("userLogin") != null ){%>
   if (localStorage.getItem("email") != null) {
  	   getAppDetailsLocalStorage();
  	}else{
  		<% if(request.getSession().getAttribute("formDetails") != null){ %>
  			setSessionValues();
  			<%}else{%>
  	  		var checkFormStatus = "<%=checkUser%>";
  	  		setLoginSessionValues(checkFormStatus);	
  	  	<%}%>
  		<%-- var checkFormStatus = "<%=checkUser%>";
  	    
  		var checkUserLogin = "<%=userCheckslogin%>";

  		if(checkUserLogin=="false"){
  	    
  	    if(checkFormStatus=="true"){
  	    	setSessionValues();
  	      }
  	    }else{
  	    	setLoginSessionValues(checkFormStatus);
  	        } --%>
  	  	}
    <%}%> 

    
    
 }

    function capitalizeFirstLetter(str) {
        const capitalized = str.replace(/^./, str[0].toUpperCase());
        return capitalized;
    }

   
    
  	</script>
  	
  
  </body>
</html>