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
            <div class="ee-form-steps">
               <div class="form-step active-step"><span class="form-step-number">
                  1
                  </span> <span class="form-step-label">Basic info<br>and payment</span> <span class="form-step-complete"><i class="icon-ok" style="display: none;"></i></span>
               </div>
               <div class="form-step"><span class="form-step-number" style="color:#fff">
                  2
                  </span> <span class="form-step-label" style="color:#fff">Additional<br>information</span> <span class="form-step-complete"><i class="icon-ok" style="display: none;"></i></span>
               </div>
               <div class="form-step"><span class="form-step-number" style="color:#fff">
                  3
                  </span> <span class="form-step-label" style="color:#fff">Check<br>your email</span> <span class="form-step-complete"><i class="icon-ok" style="display: none;"></i></span>
               </div>
            </div>
            <div class="ee-form-inner">
               <div id="ee-form-step1">
                <h1 id="formheadrId"> Personal details</h1> 
               <div class="newform">
             <input type="hidden" id="applicationId">
             <input type="hidden" id="authKeyId">
             <input type="hidden" id="usersId">
             
             <label> Country / territory of birth </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="countrylist" onchange="validate();">
			<option value="port"></option>
			
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="countryBirthError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="countryBirthSucess" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="nationalityerrors" style="display: none;">Please choose nationality</span>
            </div>
            
         
            <label> City of birth </label> 
            <div class="row">
            <div class="col-sm-10">
            <input type="text" name="firstname" id="firstNameID" size="15" required   onchange="validate();"/> 
            
            </div>
             <div class="col-sm-2">
              <div class="error-mark" id="firstNameError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="firstNameSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            
            </div>
            </div>
              <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="nameerrors" style="display: none;">Please fill the given name</span>
            </div>
            
            
            <label> Gender </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="countrylist" onchange="validate();">
			<option value="port"></option>
			
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="countryBirthError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="countryBirthSucess" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="nationalityerrors" style="display: none;">Please choose nationality</span>
            </div>
            
             <label> Maritial status </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="countrylist" onchange="validate();">
			<option value="port"></option>
			
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="countryBirthError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="countryBirthSucess" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="nationalityerrors" style="display: none;">Please choose nationality</span>
            </div>
            </div>
       <h1 id="formheadrId"> Passport details</h1>  
            <div class="newform">
            
            <label> Passport number </label> 
            <div class="row">
            <div class="col-sm-10">
            <input type="text" name="lastName" id="lastNameID" size="15" required  onchange="validate();"/> 
            
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="lastNameError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="lastNameSucess" style="display:none;"><i class="icon-ok"></i></div>
        
            </div>
            </div>
               <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="surnameeorr" style="display: none;">Please fill the surname</span>
            </div>
            
             <label> Country / territory of issue </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="countrylist" onchange="validate();">
			<option value="port"></option>
			
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="countryBirthError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="countryBirthSucess" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="nationalityerrors" style="display: none;">Please choose nationality</span>
            </div>
            
            
            
            <label> Issuing authority </label> 
            <div class="row">
            <div class="col-sm-10">
            <input type="text" name="lastName" id="lastNameID" size="15" required  onchange="validate();"/> 
            
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="lastNameError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="lastNameSucess" style="display:none;"><i class="icon-ok"></i></div>
        
            </div>
            </div>
               <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="surnameeorr" style="display: none;">Please fill the surname</span>
            </div>
          
             <label> Date of issue </label> 
               <div class="row">
              <div class="col-sm-3">
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
            
            <div class="col-sm-3">
              <select id="yearlistdob" onchange="validate();"> 
			<option value="Year">Year</option>
			
			</select>
            </div>
             <div class="col-sm-2">
             
             <div class="error-mark" id="dobError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="dobSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
              <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="doberrorr" style="display: none;">Please choose date of birth</span>
            </div>
            
              <label> Date of Expiry </label> 
               <div class="row">
              <div class="col-sm-3">
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
            
            <div class="col-sm-3">
              <select id="yearlistdob" onchange="validate();"> 
			<option value="Year">Year</option>
			
			</select>
            </div>
             <div class="col-sm-2">
             
             <div class="error-mark" id="dobError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="dobSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
              <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="doberrorr" style="display: none;">Please choose date of birth</span>
            </div>
            </div>
            
            
       <h1 id="formheadrId"> Permanant address details</h1>  
          <div class="newform">
           
           <label> House no/street </label> 
      
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="email" id="emailID" size="15" required onchange="validate();" />
            </div>
             <div class="col-sm-2">
              <div class="error-mark" id="emailError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="emailSucess" style="display:none;"><i class="icon-ok"></i></div>
             
            </div>
            </div>
              <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="emailerrors" style="display: none;">Please enter correct email</span>
            </div>
            
            <label> Village / town / city </label> 
      
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="email" id="emailID" size="15" required onchange="validate();" />
            </div>
             <div class="col-sm-2">
              <div class="error-mark" id="emailError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="emailSucess" style="display:none;"><i class="icon-ok"></i></div>
             
            </div>
            </div>
              <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="emailerrors" style="display: none;">Please enter correct email</span>
            </div>
            
                <label> Country </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="countrylist" onchange="validate();">
			<option value="port"></option>
			
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="countryBirthError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="countryBirthSucess" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="nationalityerrors" style="display: none;">Please choose nationality</span>
            </div>
            </div>          
       <h1 id="formheadrId"> Vat invoice</h1>  
          <div class="newform">
            
             <label> Do you want to receive a VAT invoice? </label> 
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="phoneNo" id="phoneNoId" size="15" maxlength="10"  required onchange="validate();" />
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="phoneError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="phoneSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="phnoerror" style="display: none;">Please enter phone number</span>
            </div>
            </div>
            
      <div class="newform" id="vatInvoidFormId">
            
             <label> Tax identification number (Company VAT) </label> 
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="phoneNo" id="phoneNoId" size="15" maxlength="10"  required onchange="validate();" />
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="phoneError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="phoneSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="phnoerror" style="display: none;">Please enter phone number</span>
            </div>
        
            
            <label>Name of the company</label> 
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="phoneNo" id="phoneNoId" size="15" maxlength="10"  required onchange="validate();" />
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="phoneError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="phoneSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="phnoerror" style="display: none;">Please enter phone number</span>
            </div>
           
            
            
           <label> Company country </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="countrylist" onchange="validate();">
			<option value="port"></option>
			
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="countryBirthError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="countryBirthSucess" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="nationalityerrors" style="display: none;">Please choose nationality</span>
            </div>
            
             <label>Company city</label> 
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="phoneNo" id="phoneNoId" size="15" maxlength="10"  required onchange="validate();" />
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="phoneError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="phoneSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="phnoerror" style="display: none;">Please enter phone number</span>
            </div>
           
            
              <label>Company postal</label> 
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="phoneNo" id="phoneNoId" size="15" maxlength="10"  required onchange="validate();" />
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="phoneError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="phoneSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="phnoerror" style="display: none;">Please enter phone number</span>
            </div>
            
            
            <label>Company street</label> 
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="phoneNo" id="phoneNoId" size="15" maxlength="10"  required onchange="validate();" />
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="phoneError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="phoneSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="phnoerror" style="display: none;">Please enter phone number</span>
            </div>
         
            </div>
      <h1 id="formheadrId"> Employment information</h1>  
    <div class="newform" id="employmentFormId">
       <label> Employment status </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="countrylist" onchange="validate();">
			<option value="port"></option>
			
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="countryBirthError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="countryBirthSucess" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="nationalityerrors" style="display: none;">Please choose nationality</span>
            </div>
            
            
             <label> Occupation </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="countrylist" onchange="validate();">
			<option value="port"></option>
			
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="countryBirthError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="countryBirthSucess" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="nationalityerrors" style="display: none;">Please choose nationality</span>
            </div>
            
            
            <label> Qualification </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="countrylist" onchange="validate();">
			<option value="port"></option>
			
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="countryBirthError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="countryBirthSucess" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="nationalityerrors" style="display: none;">Please choose nationality</span>
            </div>
            
            
              <label> Religion </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="countrylist" onchange="validate();">
			<option value="port"></option>
			
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="countryBirthError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="countryBirthSucess" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="nationalityerrors" style="display: none;">Please choose nationality</span>
            </div>
            
            
            <label>Mother's name</label> 
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="phoneNo" id="phoneNoId" size="15" maxlength="10"  required onchange="validate();" />
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="phoneError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="phoneSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="phnoerror" style="display: none;">Please enter phone number</span>
            </div>
            </div>
            
            
          <h1 id="formheadrId"> Details of visit</h1>  
    <div class="newform" id="visitDetailsId">
    
    		<label> Transportation type </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="countrylist" onchange="validate();">
			<option value="port"></option>
			
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="countryBirthError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="countryBirthSucess" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="nationalityerrors" style="display: none;">Please choose nationality</span>
            </div>
            
            
            <label> Departure country </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="countrylist" onchange="validate();">
			<option value="port"></option>
			
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="countryBirthError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="countryBirthSucess" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="nationalityerrors" style="display: none;">Please choose nationality</span>
            </div>
            
            
             <label>Departure city</label> 
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="phoneNo" id="phoneNoId"  required onchange="validate();" />
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="phoneError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="phoneSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="phnoerror" style="display: none;">Please enter phone number</span>
            </div>
            
            
            
            <label>Name of hotel, motel or apartment in the CountryNameHere</label> 
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="phoneNo" id="phoneNoId"  required onchange="validate();" />
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="phoneError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="phoneSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="phnoerror" style="display: none;">Please enter phone number</span>
            </div>
            
            
            
            <label>Accommodation address</label> 
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="phoneNo" id="phoneNoId"  required onchange="validate();" />
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="phoneError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="phoneSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="phnoerror" style="display: none;">Please enter phone number</span>
            </div>
           
            
            
             <label>Accommodation phone number</label> 
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="phoneNo" id="phoneNoId"  required onchange="validate();" />
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="phoneError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="phoneSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="phnoerror" style="display: none;">Please enter phone number</span>
            </div>
   		</div>
   		</div>
   		
   		        
         <h1 id="formheadrId"> Necessary documents</h1>  
    <div class="newform" id="necessaryDocId">
    
    	<p> We accept document in jpg, pdf, png, and tiff formats. The required documents
    		can be uploaded in the form of photo, scan or photo using a webcam (if your web browser allows it). 
    	 </p>
    	 
    					 <div class="input-box nested-checkbox" id="documentCheckboxId" style="margin-left: 0px; padding-left: 0px;">
                           <div class="input-box-bottom">
                              <div class="error-position"><span style="display: none;">0</span></div>
                              <div id="accept-gdpr" class="actual-input">
                                 <div class="checkbox-input"><label for="accept-gdpr-track" class="checkbox-label">
                                 <span id="uploadDocLaterId">I will upload document later</span> <input type="checkbox" id="accept-gdpr-track" name="accept-gdpr"> <span class="checkmark"></span></label></div>
                              </div>
                           </div>
                        </div>
               
    	<div><p> We will send a message to your email which explains how you can upload 
    		the documents. Please load documents within 48 hours.
    	 </p>
    	 </div>
   
   </div>   
   <div class="newform" id="documentsuploadsFormId">
    
     <label>Photography</label> 
    
     <p>The photo should present a full face, front view, eyes open.
    		No black&white photos, no blurred photos.
    	 </p>
    	 <div class="row" id="documentUploadFormId">
    	 <div class="col-sm-4" id="photographycolId">
    	<button type="button" class="btn btn-primary">upload</button>
    	 </div>
    	  <div class="col-sm-2">
    	 or
    	 </div>
    	 <div class="col-sm-4" id="photographycolId">
    	  <button type="button" class="btn btn-primary">Take a photo</button>
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
    	 <div class="col-sm-4" id="photographycolId">
    	<button type="button" class="btn btn-primary">upload</button>
    	 </div>
    	  <div class="col-sm-2">
    	 or
    	 </div>
    	 <div class="col-sm-4" id="photographycolId">
    	  <button type="button" class="btn btn-primary">Take a photo</button>
    	 </div>
    	 <div class="col-sm-2">
         <div class="error-mark" id="phoneError" style="display:none;"><i class="icon-error"></i></div>
         <div class="success-mark" id="phoneSucess" style="display:none;"><i class="icon-ok"></i></div>
       </div>
    	</div>
    	
    	<label>Hotel Booking</label> 
    
    	 <p></p>
    	 <div class="row" id="documentUploadFormId">
    	 <div class="col-sm-4" id="photographycolId">
    	<button type="button" class="btn btn-primary">upload</button>
    	 </div>
    	  <div class="col-sm-2">
    	 or
    	 </div>
    	 <div class="col-sm-4" id="photographycolId">
    	  <button type="button" class="btn btn-primary">Take a photo</button>
    	 </div>
    	 <div class="col-sm-2">
         <div class="error-mark" id="phoneError" style="display:none;"><i class="icon-error"></i></div>
         <div class="success-mark" id="phoneSucess" style="display:none;"><i class="icon-ok"></i></div>
       </div>
    	</div>
    	
    	<label>Residence proof or ID</label> 
     	<p></p>
    	 <div class="row" id="documentUploadFormId">
    	 <div class="col-sm-4" id="photographycolId">
    	<button type="button" class="btn btn-primary">upload</button>
    	 </div>
    	  <div class="col-sm-2">
    	 or
    	 </div>
    	 <div class="col-sm-4" id="photographycolId">
    	  <button type="button" class="btn btn-primary">Take a photo</button>
    	 </div>
    	 <div class="col-sm-2">
         <div class="error-mark" id="phoneError" style="display:none;"><i class="icon-error"></i></div>
         <div class="success-mark" id="phoneSucess" style="display:none;"><i class="icon-ok"></i></div>
       </div>
    	</div>
    	 
    	 
   </div>
   		
 <!--   <div class="newform" id="documentsuploadsFormId">
   		
   		  <label>Photography</label> 
   		         
    	<p>The photo should present a full face, front view, eyes open.
    		No black&white photos, no blurred photos.
    	 </p>
    	 <div class="row">
    	 <div class="col-sm-4" id="photographycolId">
    	  <input type="text" name="phoneNo" id="phoneNoId"  required onchange="validate();" />
    	 </div>
    	 <div class="col-sm-2">
    	 or
    	 </div>
    	 <div class="col-sm-4" id="photographycolId">
    	   <input type="text" name="phoneNo" id="phoneNoId"  required onchange="validate();" />
    	 </div>
    	<div class="col-sm-2">
         <div class="error-mark" id="phoneError" style="display:none;"><i class="icon-error"></i></div>
         <div class="success-mark" id="phoneSucess" style="display:none;"><i class="icon-ok"></i></div>
            
       </div>
    	 </div>
    	 
   		 <label>Biographical page of passport</label> 
   		         
    	<p>The photo should present a full face, front view, eyes open.
    		No black&white photos, no blurred photos.
    	 </p>
    	 <div class="photographyRow">
    	 <div class="col-sm-4" id="photographycolId">
    	  <input type="text" name="phoneNo" id="phoneNoId"  required onchange="validate();" />
    	 </div>
    	 <div class="col-sm-2">
    	 or
    	 </div>
    	 <div class="col-sm-4" id="photographycolId">
    	   <input type="text" name="phoneNo" id="phoneNoId"  required onchange="validate();" />
    	 </div>
    	<div class="col-sm-2">
         <div class="error-mark" id="phoneError" style="display:none;"><i class="icon-error"></i></div>
         <div class="success-mark" id="phoneSucess" style="display:none;"><i class="icon-ok"></i></div>
            
       </div>
    	 </div>
    	 
    	 
    	  <label>Hotel Booking</label> 
   		         
    	<p>The photo should present a full face, front view, eyes open.
    		No black&white photos, no blurred photos.
    	 </p>
    	 <div class="photographyRow">
    	 <div class="col-sm-4" id="photographycolId">
    	  <input type="text" name="phoneNo" id="phoneNoId"  required onchange="validate();" />
    	 </div>
    	 <div class="col-sm-2">
    	 or
    	 </div>
    	 <div class="col-sm-4" id="photographycolId">
    	   <input type="text" name="phoneNo" id="phoneNoId"  required onchange="validate();" />
    	 </div>
    	<div class="col-sm-2">
         <div class="error-mark" id="phoneError" style="display:none;"><i class="icon-error"></i></div>
         <div class="success-mark" id="phoneSucess" style="display:none;"><i class="icon-ok"></i></div>
            
       </div>
    	 </div>
    	 
    	 
    	  <label>Residence proof or id</label> 
   		         
    	<p>The photo should present a full face, front view, eyes open.
    		No black&white photos, no blurred photos.
    	 </p>
    	 <div class="photographyRow">
    	 <div class="col-sm-4" id="photographycolId">
    	  <input type="text" name="phoneNo" id="phoneNoId"  required onchange="validate();" />
    	 </div>
    	 <div class="col-sm-2">
    	 or
    	 </div>
    	 <div class="col-sm-4" id="photographycolId">
    	   <input type="text" name="phoneNo" id="phoneNoId"  required onchange="validate();" />
    	 </div>
    	<div class="col-sm-2">
         <div class="error-mark" id="phoneError" style="display:none;"><i class="icon-error"></i></div>
         <div class="success-mark" id="phoneSucess" style="display:none;"><i class="icon-ok"></i></div>
            
       </div>
    	 </div>
    
   		
   		</div>
   		
         </div>  -->
                  </div>
                  <div>
                     <div>
                    
                        <div class="input-box" type="SubmitInput" name="go-to-step-2" label="SEND AND PAY" hint="" required="required" validations="" options="" reactions="[object Object]" possiblereactions="" possibledisablingreactions="" possibleemits="">
                           <div class="input-box-bottom button-container submit-input-container">
                              <button class="btn" style="text-align: center;" onclick="submitApplication();">SEND AND PAY</button> <!---->
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
               <div class="form-infobox">
                  <div class="form-info-header">
                     Summary
                  </div>
                  <div class="form-info-subheader"><span>
                     Destination
                     </span> <span id="CountrySummary">
                    
                     </span>
                  </div>
                  
             
                  <div class="form-info-subheader" id="VisaandpriceId"><span>
                     Visa
                     </span> <span id="priceidinDollerVisa">
                    
                     </span>
                  </div>
                  
                  <!-- <div class="form-choose-currency-wrapper" id="VisaandpriceId" style="display: none;"><span>
                        Visa
                        </span> 
                        <span></span> 
                        <span id="priceidinDoller"></span>
                     </div> -->
                 
               </div>
               <div class="form-pricebox">
                  
                  <div class="form-info-element sidebar-citizenship-not-chosen">
                     <div class="form-choose-currency-wrapper"><span>
                        Full price
                        </span> 
                        <span></span> 
                        <span id="priceidinDoller"></span>
                     </div>
                     <div id="priceshow">
                        Price will be shown after the required fields are filled
                     </div>
                     <div id="ulpriceshow">
                        <ul>
                          <span> Price depends on the following fields:</span>
                           <li id="nationalityId"><span>Nationality</span></li>
                           <li id="purposeTravelId"><span>Purpose for travel</span></li>
                        </ul>
                     </div>
                  </div>
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