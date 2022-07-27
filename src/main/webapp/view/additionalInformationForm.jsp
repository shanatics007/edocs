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
     
       <script async="" src="/js/additionalInfoForm.js"></script>
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
               <div class="form-step active-step" id="firstTitleHeaderForm"><span class="form-step-number">
                  1
                  </span> <span class="form-step-label"  id="fristTitlelabel">Basic info<br>and payment</span> <span class="form-step-complete"><i class="icon-ok" style="display: none;"></i><img src="/images/check.png" style="width:25px; height:25px;"></span>
               </div>
               <div class="form-step" id="secondTitleHeaderForm"><span class="form-step-number" style="color:#1d3367;">
                  2
                  </span> <span class="form-step-label" id="secondTitlelabel" style="color:#fff">Additional<br>information</span> <span class="form-step-complete"><i class="icon-ok" style="display: none;"></i></span>
               </div>
               <div class="form-step" id="thirdTitleHeaderForm"><span class="form-step-number" style="color:#fff">
                  3
                  </span> <span class="form-step-label" id="thirdTitlelabel"  style="color:#fff">Check<br>your email</span> <span class="form-step-complete"><i class="icon-ok" style="display: none;"></i></span>
               </div>
            </div>
            <div class="ee-form-inner">
               <div id="ee-form-step1">
                <h1 id="formheadrId"> Personal details</h1> 
               <div class="newform">
             <input type="hidden" id="applicationVisaId">
             <input type="hidden" id="authKeyId">
             <input type="hidden" id="usersId">
             
             <label> Country / territory of birth </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="countrylist" onchange="validate();">
			<option value="birthCountry"></option>
			
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="countryBirthError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="countryBirthSucess" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="countryTerritoryErrorId" style="display: none;">Please choose territory of birth</span>
            </div>
            
         
            <label> City of birth </label> 
            <div class="row">
            <div class="col-sm-10">
            <input type="text" name="cityName" id="cityOfBirthNameID" size="15" required   onchange="validate();"/> 
            
            </div>
             <div class="col-sm-2">
              <div class="error-mark" id="CityOfNameError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="cityOfNameSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            
            </div>
            </div>
              <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="cityOfBirthNameErrorsId" style="display: none;">Please fill the city of birth</span>
            </div>
            
            
            <label> Gender </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="genderListId" onchange="validate();">
			<option value="genderList">Select</option>
			<option value="male">Male</option>
			<option value="female">Female</option>
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="genderListErrorId" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="genderListSuccessId" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="genderErrorId" style="display: none;">Please choose gender</span>
            </div>
            
             <label> Maritial status </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="maritialStatusId" onchange="validate();">
			<option value="maritialStatusList">Select</option>
			<!-- <option value="Common-Law">Common-Law</option>
			<option value="Divorced">Divorced</option>
			<option value="Married">Married</option>
			<option value="Single">Single</option>
			<option value="Widowed">Widowed</option> -->
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="maritialErrorId" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="maritialSucessId" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="maritialStatusErrorId" style="display: none;">Please choose maritial status</span>
            </div>
            </div>
       <h1 id="passportDetailSectionId"> Passport details</h1>  
            <div class="newform">
            
            <label> Passport number </label> 
            <div class="row">
            <div class="col-sm-10">
            <input type="text" name="lastName" id="passportNoId" size="15" required  onchange="validate();"/> 
            
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="passportErrorMarkId" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="paasportSuccessMarkId" style="display:none;"><i class="icon-ok"></i></div>
        
            </div>
            </div>
               <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="passportNumberId" style="display: none;">Please fill the last name</span>
            </div>
            
             <label> Country / territory of issue </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="passPortCountryList" onchange="validate();">
			<option value="passportCountry"></option>
			
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="countryIssueError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="countryIssueSucess" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="counrtIssueErrorId" style="display: none;">Please choose country / territory of issue</span>
            </div>
            
            
            
            <label> Issuing authority </label> 
            <div class="row">
            <div class="col-sm-10">
            <input type="text" name="lastName" id="authorityNameId" size="15" required  onchange="validate();"/> 
            
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="authorityNameError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="authorityNameSucess" style="display:none;"><i class="icon-ok"></i></div>
        
            </div>
            </div>
               <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="authorityNameeorrId" style="display: none;">Please fill the authority</span>
            </div>
          
             <label> Date of issue </label> 
               <div class="row">
              <div class="col-sm-3">
             <select id="dateIssueId" onchange="validate();">
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
             <select id="dayIssueMonthId" onchange="validate();">
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
              <select id="yearIssueId" onchange="validate();"> 
			<option value="Year">Year</option>
			
			</select>
            </div>
             <div class="col-sm-2">
             
             <div class="error-mark" id="dateIssueErrorId" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="dateIssueSuccessId" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
              <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="dateOfIssueErrorId" style="display: none;">Please choose date of issue</span>
            </div>
            
              <label> Date of expiry </label> 
               <div class="row">
              <div class="col-sm-3">
             <select id="dateExpiryId" onchange="validate();">
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
             <select id="dateExpiryMonthId" onchange="validate();">
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
              <select id="dateExpiryYearId" onchange="validate();"> 
			<option value="Year">Year</option>
			
			</select>
            </div>
             <div class="col-sm-2">
             
             <div class="error-mark" id="dateExpiryErrorId" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="dateExpirySuccessId" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
              <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="dateOfExpiryErrorId" style="display: none;">Please choose date of expiry</span>
            </div>
            </div>
            
            
       <h1 id="formheadrId"> Permanent Address Details</h1>  
          <div class="newform">
           
           <label> House no/street </label> 
      
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="house" id="houseNoId" size="15" required onchange="validate();" />
            </div>
             <div class="col-sm-2">
              <div class="error-mark" id="houseNoErrorId" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="houseNoSuccessId" style="display:none;"><i class="icon-ok"></i></div>
             
            </div>
            </div>
              <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="houseNumberErrorId" style="display: none;">Please enter correct house no/street</span>
            </div>
            
            <label> Village / town / city </label> 
      
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="village" id="villageId" size="15" required onchange="validate();" />
            </div>
             <div class="col-sm-2">
              <div class="error-mark" id="villageErrorId" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="villageSuccessId" style="display:none;"><i class="icon-ok"></i></div>
             
            </div>
            </div>
              <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="villageTownCityErrorId" style="display: none;">Please enter correct village/town/city</span>
            </div>
            
                <label> Country </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="addressCountryList" onchange="validate();">
			<option value="addressCountry"></option>
			
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="countryErrorId" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="countrySucessId" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="countryChooseErrorId" style="display: none;">Please choose country</span>
            </div>
            </div>          
       <h1 id="vatInvoiceSection"> Vat invoice</h1>  
          <div class="newform">
            
             <label> Do you want to receive a VAT invoice? </label> 
             <div class="row">
            <div class="col-sm-10">
           <div class="col-sm-5" id="columfirstId">
           <div style="width: 30%; margin-left: 10px;">
           <input type="radio" id="vatNoId" name="taxInvoice" style="width: 25px; height: 20px;" onchange="validate();" onclick="checkVatInvoice('no')">
           </div>
           <div style="width: 100%;">
            <label for="vatNoId">No</label>
            </div>
           </div>
            <div class="col-sm-5" id="columSecondId">
             <div style="width: 30%; margin-left: 10px;">
             <input type="radio" id="vatYesId" name="taxInvoice" style="width: 25px; height: 20px;" onchange="validate();" onclick="checkVatInvoice('yes')">
             </div>
             <div style="width: 100%;">
              <label for="vatYesId">Yes</label>
              </div>
            </div>
           
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="vatradioNuttionError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="vatradioNuttionSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="vatNumberErrorId" style="display: none;">Please choose VAT invoice option</span>
            </div>
            </div>
            
      <div class="newform" id="taxIdentityNoId">
            
             <label> Tax identification number (Company VAT) </label> 
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="number" id="taxNumberId" size="15" maxlength="10"  required onchange="validate();" />
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="taxNumberErrorId" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="taxNumberSuccessId" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="taxIdentificationErrorId" style="display: none;">Please enter tax identification number</span>
            </div>
        
            
            <label>Name of the company</label> 
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="companyName" id="companyNameId" size="15" maxlength="10"  required onchange="validate();" />
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="companyNameErrorId" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="companyNameSuccessId" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="nameOfCompanyErrorId" style="display: none;">Please enter name of the company</span>
            </div>
           
            
            
           <label> Company country </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="taxCompanyCountryList" onchange="validate();">
			<option value="companyCountry"></option>
			
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="companyCountryErrorId" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="companycountrySucessId" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="companyCountryId" style="display: none;">Please choose nationality</span>
            </div>
            
             <label>Company city</label> 
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="cityName" id="cityNameId" size="15" maxlength="10"  required onchange="validate();" />
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="cityNameErrorId" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="cityNameSucessId" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="companyCityErrorId" style="display: none;">Please enter company city</span>
            </div>
           
            
              <label>Company postal</label> 
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="companyPostal" id="companyPostalId" size="15" maxlength="10"  required onchange="validate();" />
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="companyPostalErrorId" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="companyPostalSucessId" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="companyErrorId" style="display: none;">Please enter company postal</span>
            </div>
            
            
            <label>Company street</label> 
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="companyStreet" id="companyStreetId" size="15" maxlength="10"  required onchange="validate();" />
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="companyStreetError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="companyStreetSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="companyStreetErrorId" style="display: none;">Please enter phone number</span>
            </div>
         
            </div>
      <h1 id="employeeInfoSectionId"> Employment information</h1>  
    <div class="newform" id="employeeInformationId">
       <label> Employment status </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="employmentId" onchange="validate();">
			<option value="EmployyeStatus">Select</option>
			<!-- <option value="Employed">Employed</option>
			<option value="HomeMaker">Home Maker</option>
			<option value="Retired">Retired</option>
			<option value="Student">Student</option> -->
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="employmentErrorId" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="employmentSucessId" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="employmentInfoErrorId" style="display: none;">Please choose employment status</span>
            </div>
            
            
             <label> Occupation </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="occupationId" onchange="validate();">
			<option value="occupatinList">Select</option>
			<!-- <option value="Art,culture,recreation and sport occupations">Art,culture,recreation and sport occupations</option>
			<option value="Business,finance and administration occupations">Business,finance and administration occupations</option>
			<option value="Education,law and social,community and government services occupations">Education,law and social,community and government services occupations</option>
			<option value="Health occupations">Health occupations</option>
			<option value="Homemaker">Homemaker</option>
			<option value="Management occupations">Management occupations</option>
			<option value="Manufacturing and utilities occupations">Manufacturing and utilities occupations</option>
			<option value="Military/armed forces">Military/armed forces</option>
			<option value="Natural and applied sciences and related occupations">Natural and applied sciences and related occupations</option>
			<option value="Natural resources, agriculture and related production occupations">Natural resources, agriculture and related production occupations</option>
			<option value="Retired">Retired</option>
			<option value="Sales and service occupations">Sales and service occupations</option>
			<option value="Student">Student</option>
			<option value="Trades, transport and equipment operators and related occupations">Trades, transport and equipment operators and related occupations</option>
			<option value="Unemployed">Unemployed</option>
			 -->
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="occupationError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="occupationSucess" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="occupationErrorId" style="display: none;">Please choose occupation</span>
            </div>
            
            
            <label> Qualification </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="qualificationId" onchange="validate();">
			<option value="qualificationList">Select</option>
			<!-- <option value="Below Matriculation">Below Matriculation</option>
			<option value="Graduate">Graduate</option>
			<option value="Higher Secondary">Higher Secondary</option>
			<option value="Matriculation">Matriculation</option>
			<option value="Na Being Minor">Na Being Minor</option>
			<option value="Post Graduate">Post Graduate</option>
			<option value="Others">Others</option> -->
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="qualificationError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="qualificationSucess" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="qualificationErrorId" style="display: none;">Please choose qualification</span>
            </div>
            
            
              <label> Religion </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="religionId" onchange="validate();">
			<option value="religionList">Select</option>
			<!-- <option value="Atheism">Atheism</option>
			<option value="Bahai">Bahai</option>
			<option value="Buddhism">Buddhism</option>
			<option value="Christian">Christian</option>
			<option value="Hindu">Hindu</option>
			<option value="Islam">Islam</option>
			<option value="Jainism">Jainism</option>
			<option value="Judaism">Judaism</option>
			<option value="Sikh">Sikh</option>
			<option value="Others">Others</option> -->
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="religionError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="religionSucess" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="religionErrorId" style="display: none;">Please choose religion</span>
            </div>
            
            
            <label>Mother's name</label> 
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="motherName" id="motherNameId" size="15" maxlength="10"  required onchange="validate();" />
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="motherNameError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="motherNameSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="motherNameErrorId" style="display: none;">Please enter mother's name</span>
            </div>
            </div>
            
            
          <h1 id="detailVisitSectionId"> Details of visit</h1>  
    <div class="newform" id="visitId">
    
    		<label> Transportation type </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="TransportTypeId" onchange="validate();">
			<option value="transportList">Select</option>
			<!-- <option value="Air">Air</option>
			<option value="Land">Land</option>
			<option value="Maritime">Maritime</option> -->
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="transportTypeError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="transportTypeSucess" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="transportTypeErrorId" style="display: none;">Please choose transportation type</span>
            </div>
            
            
            <label> Departure country </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="departureCountryList" onchange="validate();">
			<option value="departureCountry"></option>
			
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="departureCountryError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="departureCountrySucess" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="departureCountryErrorId" style="display: none;">Please choose departure country</span>
            </div>
            
            
             <label>Departure city</label> 
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="cityName" id="departureCity"  required onchange="validate();" />
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="departureCityError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="departureCitySucess" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="departureCityErrorId" style="display: none;">Please enter departure city</span>
            </div>
            
            
            
            <label>Name of hotel, motel or apartment in the <span id="countryNameofHotel"></span></label> 
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="hotelName" id="nameHotelsId"  required onchange="validate();" />
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="nameHotelsError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="nameHotelsSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="nameOfHotelsErrorId" style="display: none;">Please enter name of hotel, motel or apartment in the country name here</span>
            </div>
            
            
            
            <label>Accommodation address</label> 
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="address" id="accomAddress"  required onchange="validate();" />
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="accomAddressError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="accomAddressSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="accomdationAddressErrorId" style="display: none;">Please enter accommodation address</span>
            </div>
           
            
            
             <label>Accommodation phone number</label> 
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="phoneNo" id="accomPhoneNoId"  required onchange="validate();" />
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="accomPhoneError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="accomPhoneSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
             <div class="errordiv" style="color: red; margin-bottom: 10px; margin-top: 10px;">
            <span id="accomPhoneNoErrorId" style="display: none;">Please enter accommodation phone number</span>
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
    	<button type="button" class="btn btn-primary" id="photographyButtonId">upload</button>
    	<input type="file" id="photographyfileId" onchange="validateDocument();" hidden/>
    	 </div>
    	  <div class="col-sm-2">
    	 or
    	 </div>
    	 <div class="col-sm-4" id="photographycolId">
    	  <button type="button" class="btn btn-primary" id="takephotoId" onclick="startWebcam();">Take a photo</button>
    	 
		    	  
    	 </div>
    	 <div class="col-sm-2">
         <div class="error-mark" id="photographyError" style="display:none;"><i class="icon-error"></i></div>
         <div class="success-mark" id="photographysucess" style="display:none;"><i class="icon-ok"></i></div>
       </div>
     
    	</div>
    	<div id="photogrphyErrorContent" style="color:red; display: none;"><span>Please choose file or take photo</span></div>
    	  <div id="photogrphySizeError" style="color:red; display: none;"><span>file size must be maximum 2 MB</span></div>
    	<label>Biographical page of passport</label> 
    	
    	
	     <p>All four corners should be shown up on the final scanned image. 
	     The image must be clear and legible.
    	 </p>
    	 <div class="row" id="documentUploadFormId">
    	 <div class="col-sm-4" id="photographycolId">
    	<button type="button" class="btn btn-primary" id="biographicalButtonId">upload</button>
    	<input type="file" id="biographicalFileId" onchange="validateDocument();" hidden/>
    	 </div>
    	  <div class="col-sm-2">
    	 or
    	 </div>
    	 <div class="col-sm-4" id="photographycolId">
    	  <button type="button" class="btn btn-primary">Take a photo</button>
    	 </div>
    	 <div class="col-sm-2">
         <div class="error-mark" id="biographicalError" style="display:none;"><i class="icon-error"></i></div>
         <div class="success-mark" id="biographicalSucess" style="display:none;"><i class="icon-ok"></i></div>
       </div>
    	</div>
    	<div id="biographicalErrorContent" style="color:red; display: none;"><span>Please choose file or take photo</span></div>
    	<div id="biographicalSizeError" style="color:red; display: none;"><span>file size must be maximum 2 MB</span></div>
    	<label>Hotel Booking</label> 
    
    	 <p></p>
    	 <div class="row" id="documentUploadFormId">
    	 <div class="col-sm-4" id="photographycolId">
    	<button type="button" class="btn btn-primary" id="hotelBookingButtonId">upload</button>
    	<input type="file" id="hotelBookingFileId" onchange="validateDocument();" hidden/>
    	 </div>
    	  <div class="col-sm-2">
    	 or
    	 </div>
    	 <div class="col-sm-4" id="photographycolId">
    	  <button type="button" class="btn btn-primary">Take a photo</button>
    	 </div>
    	 <div class="col-sm-2">
         <div class="error-mark" id="hotelBookingError" style="display:none;"><i class="icon-error"></i></div>
         <div class="success-mark" id="hotelBookingSucess" style="display:none;"><i class="icon-ok"></i></div>
       </div>
    	</div>
    	<div id="hotelBookingErrorContent" style="color:red; display: none;"><span>Please choose file or take photo</span></div>
    	<div id="hotelBookingSizeError" style="color:red; display: none;"><span>file size must be maximum 2 MB</span></div>
    	<label>Residence proof or ID</label> 
     	<p></p>
    	 <div class="row" id="documentUploadFormId">
    	 <div class="col-sm-4" id="photographycolId">
    	<button type="button" class="btn btn-primary" id="residenceButtonId">upload</button>
    	<input type="file" id="residencefileId" onchange="validateDocument();" hidden/>
    	 </div>
    	  <div class="col-sm-2">
    	 or
    	 </div>
    	 <div class="col-sm-4" id="photographycolId">
    	  <button type="button" class="btn btn-primary">Take a photo</button>
    	 </div>
    	 <div class="col-sm-2">
         <div class="error-mark" id="residenceError" style="display:none;"><i class="icon-error"></i></div>
         <div class="success-mark" id="residenceSucess" style="display:none;"><i class="icon-ok"></i></div>
       </div>
    	</div>
    	<div id="residenceSucessErrorContent" style="color:red; display: none;"><span>Please choose file or take photo</span></div>
    	 <div id="residenceSizeError" style="color:red; display: none;"><span>file size must be maximum 2 MB</span></div>
    	 
   </div>
   		

                  </div>
                  <div>
                     <div>
                    
                        <div class="input-box" type="SubmitInput" name="go-to-step-2" label="SEND APPLICATION" hint="" required="required" validations="" options="" reactions="[object Object]" possiblereactions="" possibledisablingreactions="" possibleemits="">
                           <div class="input-box-bottom button-container submit-input-container">
                              <button class="btn" style="text-align: center;" onclick="submitApplicationAdditionalInfo();">SEND APPLICATION</button> <!---->
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
                     Destination:
                     </span> <span id="CountrySummary">
                    
                     </span>
                  </div> 
                  
                   <div class="form-info-subheader"><span>
                     Planned day of travel:
                     </span> <span id="plannedDayofTravelId">
                    
                     </span>
                  </div> 
                  <div class="form-info-subheader"><span>
                    Given name(s):
                     </span> <span id="givenFirstNameId">
                    
                     </span>
                  </div> 
                   <div class="form-info-subheader"><span>
                    Surname(s):
                     </span> <span id="givenSurnameId">
                    
                     </span>
                  </div> 
                   <div class="form-info-subheader"><span>
                    Date of birth:
                     </span> <span id="dateOfBirthId">
                    
                     </span>
                  </div> 
                   <div class="form-info-subheader"><span>
                    E-mail address:
                     </span> <span id="givenEmailId">
                    
                     </span>
                  </div> 
                  <div class="form-info-subheader"><span>
                   Contact phone number:
                     </span> <span id="contactPhoneNoId">
                    
                     </span>
                  </div> 
                  <div class="form-info-subheader"><span>
                    Purpose for travel:
                     </span> <span id="purposeForTravelId">
                    
                     </span>
                  </div> 
                  <div class="form-info-subheader"><span>
                    Nationality:
                     </span> <span id="nationalityId">
                    
                     </span>
                  </div> 
                  
               </div>
            
            </div>
         </div>
            </div>
           
         </div>
       
      </div>
  
     
  	<%@include file="footer.jsp"%>
  	
  	<script>
  	
  	
  	function submitApplicationAdditionalInfo(){
  	  	
  		var urlString  = window.location.href.split('/');
    	var country = urlString[4];
    	var authUrl = window.location.href;
    	var authKey = authUrl.split('/')[5];
    	var chedckstatus ;

			if($('#accept-gdpr-track').prop('checked')==true){
				uploadDocument();
				chedckstatus = "WithDocument";
			}else{
				chedckstatus = "WithoutDocument";
				}
    	
			if(validate()){
				var url ="/addInfo/saveAddtionalInfo";
				var dateofIssue = $('#dateIssueId').val()+'-'+$('#dayIssueMonthId').val()+'-'+$('#yearIssueId').val();
				var dateofExpiry = $('#dateExpiryId').val()+'-'+$('#dateExpiryMonthId').val()+'-'+$('#dateExpiryYearId').val();
				var userId = $('#usersId').val();
				var applicationVisaId = $('#applicationVisaId').val();
				
				$.ajax({
					type : "POST",
					url : url,	
					 headers: {
		                    'Content-Type': 'application/json'
		                },
					data: JSON.stringify ({
						"userId": userId,
						"applicationVisaId": applicationVisaId,
						"authKey":authKey,
						"birthCountry": $('#countrylist option:selected').text(),
						"birthCity": $('#cityOfBirthNameID').val(),
						"gender": $('#genderListId').val(),
						"maritialStatus":$('#maritialStatusId').val(),
						"passportNumber": $('#passportNoId').val(),
						"passPortIssueCountry": $('#passPortCountryList option:selected').text(),
						"passPortIssueAuthority": $('#authorityNameId').val(),
						"passPrtDateOfIssue":dateofIssue,
						"passPortDateOfExpiry":dateofExpiry,
						"street":$('#houseNoId').val(),
						"city":$('#villageId').val(),
						"country":$('#addressCountryList option:selected').text(),
						"vatInvoice":false,
						"taxIdentificationNumber":$('#taxNumberId').val(),
						"taxNameOfCompany":$('#companyNameId').val(),
						"taxCompanyofCountry":$('#taxCompanyCountryList option:selected').text(),
						"taxCompanyofCity":$('#cityNameId').val(),
						"taxCompanyofPostal":$('#companyPostalId').val(),
						"taxCompanyofStreet":$('#companyStreetId').val(),
						"employeeStatus":$('#employmentId').val(),
						"occupation":$('#occupationId').val(),
						"qualification":$('#qualificationId').val(),
						"religion":$('#religionId').val(),
						"motherName":$('#motherNameId').val(),
						"transportationType":$('#TransportTypeId').val(),
						"departureCountry":$('#departureCountryList option:selected').text(),
						"departureCity":$('#departureCity').val(),
						"nameOfHotel":$('#nameHotelsId').val(),
						"accomodationAddress":$('#accomAddress').val(),
						"accomodationPhoneNo":$('#accomPhoneNoId').val(),
						"checkVisaApplicationStatus":chedckstatus,
						
					}),
					async : true,
					success : function(data) {
						if(data.status==false){
							Swal.fire({
								  title: "<img src='/images/fail1234.png' style='width:150px;'>", 
								  html: data.Message,  
								  confirmButtonText: "Ok", 
								 
								})

						}else{
						
							 window.location.href = "/en/confirmation/"+data.data.applicationVisaId;
						
							}
						
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
  	
  	
  	<script type="text/javascript">

  	function uploadDocument(){
   	 var userId = $('#usersId').val();
   	 var form = new FormData();
   	 
   	 var photographyfile = $('#photographyfileId')[0].files[0];

   	 var biographicalFile = $('#biographicalFileId')[0].files[0];

   	 var hotelBookingFile = $('#hotelBookingFileId')[0].files[0];

   	 var residencefile = $('#residencefileId')[0].files[0];
	
  /*  	getFileSize(photographyfile.size);
   	getFileSize(biographicalFile.size);
   	getFileSize(hotelBookingFile.size);
   	getFileSize(residencefile.size); */

   	if(validateDocument()){
   	   	
   	form.append("files",photographyfile);
   	form.append("files",biographicalFile);
   	form.append("files",hotelBookingFile);
   	form.append("files",residencefile);
   	 
        
   	var settings = {
   		  "url": "/addInfo/uploadDocument/"+userId,
   		  "method": "POST",
   		  "timeout": 0,
   		  "headers": {
   		    "files": "multipart/form-data"
   		  },
   		  "processData": false,
   		  "mimeType": "multipart/form-data",
   		  "contentType": false,
   		  "data": form
   		};

   		$.ajax(settings).done(function (response) {
   		  console.log(response);
   		});

   	}else{
   		validateDocument();
   	   	}
    }


	function validateDocument(){
	var isValidated = true;
			
	if($('#photographyfileId').val() == ""){
		$('#photogrphyErrorContent').show();
		$('#photographyError').show();
		$('#photographysucess').hide();
		isvalidated =false;
		return false;
	}else{
		$('#photogrphyErrorContent').hide();
		var photographyfileSize = $('#photographyfileId')[0].files[0].size / 1024 / 1024;
		if(photographyfileSize > 2){
			$('#photographyError').show();
			$('#photogrphySizeError').show();
			$('#photographysucess').hide();
			isvalidated =false;
			return false;

		}else{
			$('#photogrphySizeError').hide();
			$('#photographyError').hide();
			$('#photographysucess').show();
			isvalidated =true;
		}
	    
	}
	if($('#biographicalFileId').val() == ""){
		$('#biographicalErrorContent').show();
		$('#biographicalError').show();
		$('#biographicalSucess').hide();
		isvalidated =false;
		return false;
	}else{
		$('#biographicalErrorContent').hide();
		var biographicalFileSize = $('#biographicalFileId')[0].files[0].size / 1024 / 1024;
		if(biographicalFileSize > 2){
			$('#biographicalError').show();
			$('#biographicalSizeError').show();
			$('#biographicalSucess').hide();
			isvalidated =false;
			return false;
			
		}else{
		$('#biographicalSizeError').hide();
		$('#biographicalSucess').show();
		$('#biographicalError').hide();
	    isvalidated =true;
		}
	}
	if($('#hotelBookingFileId').val() == ""){
		$('#hotelBookingErrorContent').show();
		$('#hotelBookingError').show();
		$('#hotelBookingSucess').hide();
		isvalidated =false;
		return false;
	}else{
		$('#hotelBookingErrorContent').hide();
		var hotelBookingFileSize = $('#hotelBookingFileId')[0].files[0].size / 1024 / 1024;
		if(hotelBookingFileSize > 2){
			$('#hotelBookingError').show();
			$('#hotelBookingSucess').hide();
			$('#hotelBookingSizeError').show();
			isvalidated =false;
			return false;
		}else{
			$('#hotelBookingError').hide();
			$('#hotelBookingSizeError').hide();
			$('#hotelBookingSucess').show();
			isvalidated =true;
		}
	}
	if($('#residencefileId').val() == ""){
		$('#residenceSucessErrorContent').show();
		$('#residenceError').show();
		isvalidated =false;
		return false;
	}else{
		$('#residenceSucessErrorContent').hide();
		var residencefileSize = $('#residencefileId')[0].files[0].size / 1024 / 1024;
		if(residencefileSize > 2){
			
			$('#residenceError').show();
			$('#residenceSizeError').show();
			$('#residenceSucess').hide();
			isvalidated =false;
			return false;
			
		}else{
			$('#residenceError').hide();
			$('#residenceSizeError').hide();
			$('#residenceSucess').show();
			isvalidated =false;
			
		}
		
	}
	
	return isvalidated;
	}


	function getFileSize(filesize){
         var fSExt = new Array('Bytes', 'KB', 'MB', 'GB');
         var i=0;
         while(filesize>900){
             
             filesize/=1024;i++;
             
            }
         var exactSize = (Math.round(filesize*100)/100)+' '+fSExt[i];
             console.log('FILE SIZE = ',exactSize);

             return exactSize;
		}
  	</script>
  	
  	
  	
  	<script>
	function validate(){
	var isvalidated =true;
	
	if($('#countrylist').val() == 'birthCountry'){
		$('#countryBirthSucess').hide();
		$('#countryTerritoryErrorId').show();
		$('#countryBirthError').show();
		isvalidated=false;
		return false;
	}else{
		$('#countryTerritoryErrorId').hide();
		$('#countryBirthError').hide();
		$('#countryBirthSucess').show();
		isvalidated= true;
		
	}
	if($('#cityOfBirthNameID').val() ==""){
		$('#CityOfNameError').show();
		$('#cityOfBirthNameErrorsId').show();
		$('#cityOfNameSucess').hide();
		isvalidated= false;
		return false;
	}else{
		$('#CityOfNameError').hide();
		$('#cityOfBirthNameErrorsId').hide();
		$('#cityOfNameSucess').show();
		isvalidated= true;
	}
	if($('#genderListId').val() == 'genderList'){
		$('#genderErrorId').show();
		$('#genderListErrorId').show();
		$('#genderListSuccessId').hide();
		isvalidated= false;
		return false;
	}else{
		$('#genderErrorId').hide();
		$('#genderListErrorId').hide();
		$('#genderListSuccessId').show();
		isvalidated= true;
	}
	if($('#maritialStatusId').val() == 'maritialStatusList'){
		$('#maritialStatusErrorId').show();
		$('#maritialErrorId').show();
		$('#maritialSucessId').hide();
		isvalidated= false;
		return false;
	}else{
		$('#maritialStatusErrorId').hide();
		$('#maritialErrorId').hide();
		$('#maritialSucessId').show();
		isvalidated= true;
	}
	if($('#passportNoId').val() == ""){
		$('#passportErrorMarkId').show();
		$('#passportNumberId').show();
		$('#paasportSuccessMarkId').hide();
		isvalidated= false;
		return false;
	}else{
		$('#passportErrorMarkId').hide();
		$('#passportNumberId').hide();
		$('#paasportSuccessMarkId').show();
		isvalidated= true;
	}                                                                     
	if($('#passPortCountryList').val() == 'passportCountry'){   
		$('#counrtIssueErrorId').show();
		$('#countryIssueError').show();
		$('#countryIssueSucess').hide();
		isvalidated= false;
		return false;
	}else{
		$('#counrtIssueErrorId').hide();
		$('#countryIssueError').hide();
		$('#countryIssueSucess').show();
		isvalidated= true;
	}
	if($('#authorityNameId').val()== ""){
		$('#authorityNameeorrId').show();
		$('#authorityNameError').show();
		$('#authorityNameSucess').hide();
		isvalidated= false;
		return false;
	}else{
		$('#authorityNameeorrId').hide();
		$('#authorityNameError').hide();
		$('#authorityNameSucess').show();
		isvalidated= true;
	}
	if($('#dateIssueId').val()=="Day" || $('#dayIssueMonthId').val()=="Month" || $('#yearIssueId').val()=="Year"){
			$('#dateOfIssueErrorId').show();
			$('#dateIssueErrorId').show();
			$('#dateIssueSuccessId').hide();
			isvalidated=false;
			return false;
		}else{
			$('#dateOfIssueErrorId').hide();
			$('#dateIssueErrorId').hide();
			$('#dateIssueSuccessId').show();
			isvalidated=true;
		}
	if($('#dateExpiryId').val()=="Day" || $('#dateExpiryMonthId').val()=="Month" || $('#dateExpiryYearId').val()=="Year"){
		$('#dateOfExpiryErrorId').show();
		$('#dateExpiryErrorId').show();
		$('#dateExpirySuccessId').hide();
		isvalidated=false;
		return false;
	}else{
		$('#dateOfExpiryErrorId').hide();
		$('#dateExpiryErrorId').hide();
		$('#dateExpirySuccessId').show();
		isvalidated=true;
	}
	if($('#houseNoId').val() == ""){
		$('#houseNumberErrorId').show();
		$('#houseNoErrorId').show();
		$('#houseNoSuccessId').hide();
		isvalidated=false;
		return false;
	}else{
		$('#houseNumberErrorId').hide();
		$('#houseNoErrorId').hide();
		$('#houseNoSuccessId').show();
		isvalidated=true;
	}
	if($('#villageId').val() == ""){
		$('#villageTownCityErrorId').show();
		$('#villageErrorId').show();
		$('#villageSuccessId').hide();
		isvalidated=false;
		return false;
	}else{
		$('#villageTownCityErrorId').hide();
		$('#villageErrorId').hide();
		$('#villageSuccessId').show();
		isvalidated=true;
	}
	if($('#addressCountryList').val() == 'addressCountry'){
		$('#countryChooseErrorId').show();
		$('#countryErrorId').show();
		$('#countrySucessId').hide();
		isvalidated=false;
		return false;
	}else{
		$('#countryChooseErrorId').hide();
		$('#countryErrorId').hide();
		$('#countrySucessId').show();
		isvalidated=true;
	}

	if($('#vatNoId').prop('checked') == true || $('#vatYesId').prop('checked')==true){
		$('#vatradioNuttionError').hide();
		$('#vatNumberErrorId').hide();
		$('#vatradioNuttionSucess').show();
		isvalidated=true;
	}else{
		$('#vatradioNuttionError').show();
		$('#vatNumberErrorId').show();
		$('#vatradioNuttionSucess').hide();
		isvalidated=false;
		return false;

	}
	if($('#taxNumberId').val() == ""){
		$('#taxIdentificationErrorId').show();
		$('#taxNumberErrorId').show();
		$('#taxNumberSuccessId').hide();
		isvalidated=false;
		return false;
	}else{
		$('#taxIdentificationErrorId').hide();
		$('#taxNumberErrorId').hide();
		$('#taxNumberSuccessId').show();
		isvalidated=false;
	}
	if($('#companyNameId').val() == ""){
		$('#nameOfCompanyErrorId').show();
		$('#companyNameErrorId').show();
		$('#companyNameSuccessId').hide();
		isvalidated=false;
		return false;
	}else{
		$('#nameOfCompanyErrorId').hide();
		$('#companyNameErrorId').hide();
		$('#companyNameSuccessId').show();
		isvalidated=true;
	}
	if($('#taxCompanyCountryList').val() == 'companyCountry') {
		$('#companyCountryId').show();
		$('#companyCountryErrorId').show();
		$('#companycountrySucessId').hide();
		isvalidated=false;
		return false;
	}else{
		$('#companyCountryId').hide();
		$('#companyCountryErrorId').hide();
		$('#companycountrySucessId').show();
		isvalidated=true;
	}
	if($('#cityNameId').val() == ""){
		$('#companyCityErrorId').show();
		$('#cityNameErrorId').show();
		$('#cityNameSucessId').hide();
		isvalidated=false;
		return false;
	}else{
		$('#companyCityErrorId').hide();
		$('#cityNameErrorId').hide();
		$('#cityNameSucessId').show();
		isvalidated=true;
	}
	if($('#companyPostalId').val() == ""){
		$('#companyErrorId').show();
		$('#companyPostalErrorId').show();
		$('#companyPostalSucessId').hide();
		isvalidated=false;
		return false;
	}else{
		$('#companyErrorId').hide();
		$('#companyPostalErrorId').hide();
		$('#companyPostalSucessId').show();
		isvalidated=true;
	}
	if($('#companyStreetId').val() == "") {
		$('#companyStreetErrorId').show();
		$('#companyStreetError').show();
		$('#companyStreetSucess').hide();
		isvalidated=false;
		return false;
	}else{
		$('#companyStreetErrorId').hide();
		$('#companyStreetError').hide();
		$('#companyStreetSucess').show();
		isvalidated=true;
	}
	if($('#employmentId').val() == 'EmployyeStatus'){
		$('#employmentInfoErrorId').show();
		$('#employmentErrorId').show();
		$('#employmentSucessId').hide();
		isvalidated=false;
		return false;
	}else{
		$('#employmentInfoErrorId').hide();
		$('#employmentErrorId').hide();
		$('#employmentSucessId').show();
		isvalidated=true;
	}
	if($('#occupationId').val() == 'occupatinList'){
		$('#occupationErrorId').show();
		$('#occupationError').show();
		$('#occupationSucess').hide();
		isvalidated=false;
		return false;
	}else{
		$('#occupationErrorId').hide();
		$('#occupationError').hide();
		$('#occupationSucess').show();
		isvalidated=true;
	}
	if($('#qualificationId').val() == 'qualificationList'){
		$('#qualificationErrorId').show();
		$('#qualificationError').show();
		$('#qualificationSucess').hide();
		isvalidated=false;
		return false;
	}else{
		$('#qualificationErrorId').hide();
		$('#qualificationError').hide();
		$('#qualificationSucess').show();
		isvalidated=true;
	}
	if($('#religionId').val() == 'religionList'){
		$('#religionErrorId').show();
		$('#religionError').show();
		$('#religionSucess').hide();
		isvalidated=false;
		return false;
	}	else{
		$('#religionErrorId').hide();
		$('#religionError').hide();
		$('#religionSucess').show();
		isvalidated=true;
	}
	if($('#motherNameId').val() == ""){
		$('#motherNameErrorId').show();
		$('#motherNameError').show();
		$('#motherNameSucess').hide();
		isvalidated=false;
		return false;
	}else{
		$('#motherNameErrorId').hide();
		$('#motherNameError').hide();
		$('#motherNameSucess').show();
		isvalidated=true;
	}	
	if($('#TransportTypeId').val() == 'transportList'){
		$('#transportTypeErrorId').show();
		$('#transportTypeError').show();
		$('#transportTypeSucess').hide();
		isvalidated=false;
		return false;
	}else{
		$('#transportTypeErrorId').hide();
		$('#transportTypeError').hide();
		$('#transportTypeSucess').show();
		isvalidated=true;
	}
	if($('#departureCountryList').val() == 'departureCountry'){
		$('#departureCountryErrorId').show();
		$('#departureCountryError').show();
		$('#departureCountrySucess').hide();
		isvalidated=false;
		return false;
	}else{
		$('#departureCountryErrorId').hide();
		$('#departureCountryError').hide();
		$('#departureCountrySucess').show();
		isvalidated=true;
	}
	if($('#departureCity').val() == ""){
		$('#departureCityErrorId').show();
		$('#departureCityError').show();
		$('#departureCitySucess').hide();
		isvalidated=false;
		return false;
	}else{
		$('#departureCityErrorId').hide();
		$('#departureCityError').hide();
		$('#departureCitySucess').show();
		isvalidated=true;
	}
	if($('#nameHotelsId').val() == ""){
		$('#nameOfHotelsErrorId').show();
		$('#nameHotelsError').show();
		$('#nameHotelsSucess').hide();
		isvalidated=false;
		return false;
	}else{
		$('#nameOfHotelsErrorId').hide();
		$('#nameHotelsError').hide();
		$('#nameHotelsSucess').show();
		isvalidated=true;
	}
	if($('#accomAddress').val() == ""){
		$('#accomdationAddressErrorId').show();
		$('#accomAddressError').show();
		$('#accomAddressSucess').hide();
		isvalidated=false;
		return false;
	}	else{
		$('#accomdationAddressErrorId').hide();
		$('#accomAddressError').hide();
		$('#accomAddressSucess').show();
		isvalidated=true;
	}
	if($('#accomPhoneNoId').val() == ""){
		$('#accomPhoneNoErrorId').show();
		$('#accomPhoneError').show();
		$('#accomPhoneSucess').hide();
		isvalidated=false;
		return false;
	}else{
		$('#accomPhoneNoErrorId').hide();
		$('#accomPhoneError').hide();
		$('#accomPhoneSucess').show();
		isvalidated=true;
	}
	
	
	
		return  isvalidated;
					
}


	
    window.onload = function () {
    	getCountryList();
    	getMaritialStatus()
    	getEmploymentStatus()
    	getOccupation()
    	getQualification()
    	religion()
    	gettransportation_type()
    	
    	
    	
        var ddlYears = document.getElementById("dateExpiryYearId");
  
        var currentYear = (new Date()).getFullYear();
       
        for (var i = currentYear; i <= 2050; i++) {
            var option = document.createElement("OPTION");
            option.innerHTML = i;
            option.value = i;
            ddlYears.appendChild(option);
           
        }

        var ddldobyears = document.getElementById("yearIssueId");	
        var currentYear = (new Date()).getFullYear();
        for (var i = 1950; i <= currentYear; i++) {
            var option = document.createElement("OPTION");
            option.innerHTML = i;
            option.value = i;
            ddldobyears.appendChild(option);
           
        }    
        
        getStep1ApplicationDetails();
     
    
    }

    function getStep1ApplicationDetails(){
    	var authUrl = window.location.href;
    	var authKey = authUrl.split('/')[5];
       
        $.ajax({
    		type : 'GET',
    		url : '/application/getApplicationDetails/'+authKey,	
    		async : true,
    		success : function(data) {
    			
    			$('#CountrySummary').text(capitalizeFirstLetter(data.toCountry));
    			$('#plannedDayofTravelId').text(data.plannedDateOfTravel);
    			$('#givenFirstNameId').text(data.firstName);
    			$('#givenSurnameId').text(data.lastName);
    			$('#dateOfBirthId').text(data.dateOfBirth);
    			$('#givenEmailId').text(data.email);
    			$('#contactPhoneNoId').text(data.contactPhoneNumber);
    			$('#purposeForTravelId').text(data.purposeForTravel);
    			$('#nationalityId').text(data.nationality);
    			$('#countryNameofHotel').text(data.toCountry);
    			$('#applicationVisaId').val(data.pkid);
    			$('#usersId').val(data.userId);
    		},	
    		error : function(data) {
    			console.log("error when gettig data");
    		}
    	}); 
    }

   
    function capitalizeFirstLetter(str) {
        const capitalized = str.replace(/^./, str[0].toUpperCase());
        return capitalized;
    }

    function checkVatInvoice(check){
        if(check=='yes'){
            $('#taxIdentityNoId').show();

            }else{
            	 $('#taxIdentityNoId').hide();
                }

        }

    
  	</script>
  	
  	<script>

  	 document.getElementById('photographyButtonId').addEventListener('click', openDialog1);

     function openDialog1() {
       document.getElementById('photographyfileId').click();
     }

     document.getElementById('biographicalButtonId').addEventListener('click', openDialog2);

     function openDialog2() {
       document.getElementById('biographicalFileId').click();
     }

     document.getElementById('hotelBookingButtonId').addEventListener('click', openDialog3);

     function openDialog3() {
       document.getElementById('hotelBookingFileId').click();
     }

     document.getElementById('residenceButtonId').addEventListener('click', openDialog4);

     function openDialog4() {
       document.getElementById('residencefileId').click();
     }


     
     function startWebcam() {
         if (navigator.getUserMedia) {
            navigator.getUserMedia (

               // constraints
               {
                  video: true,
                  audio: false
               },

               // successCallback
               function(localMediaStream) {
                   video = document.querySelector('video');
                  video.srcObject=localMediaStream;
                  webcamStream = localMediaStream;
               },

               // errorCallback
               function(err) {
                  console.log("The following error occured: " + err);
               }
            );
         } else {
            console.log("getUserMedia not supported");
         }  
       }

  	</script>
  	
  	
  </body>
</html>