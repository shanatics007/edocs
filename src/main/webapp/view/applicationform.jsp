<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>
<!-- saved from url=(0038)https://evisa.express/en/account/login -->
<html lang="en">
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
      <title>Edocs Travel</title>
       
       <link rel="stylesheet" href="/css/default.css"> 
    <link rel="stylesheet" href="/css/home.css">
      
      
      <script src="jquery-3.6.0.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
     
       <script async="" src="/js/gtm.js"></script>
       <script async="" src="/js/home.js"></script>
       <script async="" src="/js/analytics.js"></script>
       <script async="" src="/js/tag.js"></script>
       <script async="" src="/js/vendor.js"></script>
       
       <style>
       
       .newform {
   		 width: 80%;
   		 margin: auto;
	}
	.row {
    margin-bottom: 30px;
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

.ee-form-actual{
    margin-left: 0px !important;

}
 </style>
   </head>
   <body>
      <div id="overlay" class="hidden mobileMenuOverlay"></div>
 	<%@include file="header.jsp"%>
      <div class="mobile-menu right5000">
         <div class="mobile-menu-top"><span class="mobile-menu-account in-header"><img src="#" alt=""><a id="menu-mobile-login" class="mobile-menu-font" href="/login" rel="nofollow">Log in</a></span><span class="mobile-menu-close">close</span></div>
         <ul class="toggle-box">
            <li class="toggle-li">
               <a id="menu-mobile-get-visa" class="mobile-menu-font toggle-click-closed">get visa</a>
               <div class="height">
                  <ul class="mobile-menu-country-list">
                    
                     <li><a href="#">India</a></li>
                     <li><a href="#">Turkey</a></li>
                    
                  </ul>
               </div>
            </li>
            <li class="toggle-li"><a id="menu-mobile-groups" class="mobile-menu-font" href="#">Passenger Locator Forms</a></li>
            <li class="toggle-li"><a id="menu-mobile-groups" class="mobile-menu-font" href="#" rel="nofollow">Travel Insurance</a></li>
            <li class="toggle-li"><a id="menu-mobile-groups" class="mobile-menu-font" href="#">Check Entry Requirements</a></li>
        
         </ul>
      </div>
      
      
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
                <h1 id="formheadrId"> Basic Information</h1> 
               <div class="newform">
             
               <label> Date of Arrival </label> 
               <div class="row">
              <div class="col-sm-3">
             <select id="dayArrival" onchange="validate();">
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
             <select id="montharrival" onchange="validate();">
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
             <select id="yearlist" onchange="validate();"> 
			<option value="Year">Year</option>
		
			
			</select>
            </div>
            <div class="col-sm-2">
            <div class="error-mark" id="dateofArrivalError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="dateofArrivalSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            
            </div>
            <label id="portArrivalLabel"> Port of Arrival </label> 
            <div class="row" id="portArrivalRow">
             <div class="col-sm-10">
             <select id="portArrival" onchange="validate();">
             
			<option value="port"></option>
			<option value="Banglore">I don't have a ticket</option>
			<option value="Hyderabad">Bagdora</option>
			<option value="Delhi">Bangalore</option>
			<option value="Mumbai">Bhubaneshwar Airport</option>
			<option value="Pune">Chandigarh Airport</option>
			<option value="Goa">Chennai Airport</option>
			<option value="Goa">Cochin Airport</option>
			<option value="Goa">Coimbatore Airport</option>
			<option value="Goa">Delhi</option>
			<option value="Goa">Gaya</option>
			<option value="Goa">Goa Airport</option>
			<option value="Goa">Guwahati Airport</option>
			<option value="Goa">Hyderabad</option>
			<option value="Goa">Jaipur</option>
			<option value="Goa">Kalkuta</option>
			<option value="Goa">Lucknow</option>
			<option value="Goa">Madurai Airport</option>
			<option value="Goa">Mangalore Airport</option>
			<option value="Goa">Mumbai Airport</option>
			<option value="Goa">Nagpur Airport</option>
			<option value="Goa">Portblair Airport</option>
			<option value="Goa">Pune Airport</option>
			<option value="Goa">Tiruchirapalli</option>
			<option value="Goa">Trivandrum</option>
			<option value="Goa">Varanasi</option>
			<option value="Goa">Vishakhapatnam</option>
			<option value="Goa">Chennai Seaport</option>
			<option value="Goa">Cochin Seaport</option>
			<option value="Goa">Goa Seaport</option>
			<option value="Goa">Mangalore Seaport</option>
			<option value="Goa">Mumbai Seaport</option>
			<option value="Goa">Ahmedabad</option>
			<option value="Goa">Amritsar</option>
			
			
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="portofArrivalError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="portofArrivalSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
            <label> Given name(s) </label> 
            <div class="row">
            <div class="col-sm-10">
            <input type="text" name="firstname" id="firstNameID" size="15" required   onchange="validate();"/> 
            
            </div>
             <div class="col-sm-2">
              <div class="error-mark" id="firstNameError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="firstNameSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            
            </div>
            </div>
            <label> Surname(s) </label> 
            <div class="row">
            <div class="col-sm-10">
            <input type="text" name="firstname" id="lastNameID" size="15" required  onchange="validate();"/> 
            
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="lastNameError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="lastNameSucess" style="display:none;"><i class="icon-ok"></i></div>
        
            </div>
            </div>
            
            
             <label> Date of birth </label> 
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
            
             <label> E-mail address </label> 
             <div>
               <span>at this email you will receive your visa</span>
               </div>
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="email" id="emailID" size="15" required onchange="validate();" />
            </div>
             <div class="col-sm-2">
              <div class="error-mark" id="emailError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="emailSucess" style="display:none;"><i class="icon-ok"></i></div>
             
            </div>
            </div>
             <label> E-mail address(re-enter) </label> 
             <div>
              <span>the two emails must match </span>
              </div>
            
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="connfirmEmail" id="cnfEmail" size="15" required onchange="validate();" />
            </div>
             <div class="col-sm-2">
             
             
              <div class="error-mark" id="cnfemailError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="cnfemailSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
            
            
             <label> Phone number </label> 
             <div class="row">
            <div class="col-sm-10">
            <input type="text" name="firstname" id="phoneNoId" size="15" required onchange="validate();" />
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="phoneError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="phoneSucess" style="display:none;"><i class="icon-ok"></i></div>
            
            </div>
            </div>
            
             <label> Purpose of travel </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="purposeTraval" onchange="validate();">
			<option value="port"></option>
			<option value="Banglore">Transit</option>
			<option value="Hyderabad">Tourism(30 days)</option>
			<option value="Delhi">Tourism(1 year)</option>
			<option value="Mumbai">Tourism(5 year)</option>
			<option value="Pune">Business</option>
			<option value="Goa">Medical treatment of self</option>
			<option value="Goa">Medical attendent</option>
			<option value="Goa">Ayurveda</option>
			<option value="Goa">Abroad</option>
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="travelpuposeError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="travelpuposeSucess" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
            
            <label> Nationality </label> 
            <div class="row">
             <div class="col-sm-10">
             <select id="countrylist" onchange="validate();">
			<option value="port"></option>
			
			</select>
            </div>
             <div class="col-sm-2">
             <div class="error-mark" id="nationalityError" style="display:none;"><i class="icon-error"></i></div>
            <div class="success-mark" id="nationalitySucess" style="display:none;"><i class="icon-ok"></i></div>
            </div>
            </div>
            </div>
        
              </div>
                  </div>
                  <div>
                     <div>
                        <h1></h1>
                        <div class="input-box" type="CheckAllInput" name="accept-all-terms" label="Check all (checks all the checkboxes below)" hint="" placeholder="" tooltip="" required="required" validations="" options="" reactions="[object Object]" possiblereactions="" possibledisablingreactions="" possibleemits="check-all">
                           
                        </div>
                        <div class="input-box nested-checkbox" type="CheckboxInput" name="accept-terms" label="I accept the <a href=&quot;/en/rules/terms-of-service&quot; target=&quot;_blank&quot;>Terms</a> and <a href=&quot;/pdf/evisa-express-terms-of-service.pdf#page=6&quot; target=&quot;_blank&quot;>Conditions</a>." hint="" placeholder="" tooltip="" required="required" validations="" options="" reactions="[object Object]" watch="check-all" possiblereactions="" possibledisablingreactions="" possibleemits="">
                           <div class="input-box-bottom">
                              <div class="error-position"><span style="display: none;">0</span></div>
                              <div id="accept-terms" class="actual-input">
                                 <div class="checkbox-input"><label for="accept-terms-track" class="checkbox-label"><span>I accept the <a href="/en/rules/terms-of-service" target="_blank">Terms</a> and <a href="/pdf/evisa-express-terms-of-service.pdf#page=6" target="_blank">Conditions</a>.</span> <input type="checkbox" id="accept-terms-track" name="accept-terms"> <span class="checkmark"></span></label></div>
                              </div>
                           </div>
                        </div>
                        <div class="input-box nested-checkbox" type="CheckboxInput" name="accept-gdpr" label="In accordance with article 9 § 2 letter (a) of the General Regulation on the protection of personal data of 27 April 2016 (Journal of Laws EU.L 2016 No. 119), I agree to processing my personal data regarding health and the ones revealing my ethnic origin, religious beliefs, as well as the biometric data (passport photography) by IVS sp.z o.o. sp.k.  (LLC LLP), in order to submit a visa application on my behalf (execution of the visa brokerage contract)." hint="" placeholder="" tooltip="" required="required" validations="" options="" reactions="[object Object]" watch="check-all" possiblereactions="" possibledisablingreactions="" possibleemits="">
                           <div class="input-box-bottom">
                              <div class="error-position"><span style="display: none;">0</span></div>
                              <div id="accept-gdpr" class="actual-input">
                                 <div class="checkbox-input"><label for="accept-gdpr-track" class="checkbox-label"><span>In accordance with article 9 § 2 letter (a) of the General Regulation on the protection of personal data of 27 April 2016 (Journal of Laws EU.L 2016 No. 119), I agree to processing my personal data regarding health and the ones revealing my ethnic origin, religious beliefs, as well as the biometric data (passport photography) by IVS sp.z o.o. sp.k.  (LLC LLP), in order to submit a visa application on my behalf (execution of the visa brokerage contract).</span> <input type="checkbox" id="accept-gdpr-track" name="accept-gdpr"> <span class="checkmark"></span></label></div>
                              </div>
                           </div>
                        </div>
                        <div class="input-box" type="SubmitInput" name="go-to-step-2" label="SEND AND PAY" hint="" required="required" validations="" options="" reactions="[object Object]" possiblereactions="" possibledisablingreactions="" possibleemits="">
                           <div class="input-box-bottom button-container submit-input-container">
                              <button class="btn" style="text-align: center;" onclick="submitApplication();">SEND AND PAY</button> <!---->
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div id="ee-form-step2" style="display: none;"></div>
               <div id="ee-form-step3" style="display: none;"></div>
               <!---->
            </div>
           
         </div>
         
         
         <!-- previos details commented -->
         
         <!-- <div class="ee-form-sidebar">
            <div class="ee-form-info ee-form-info--hidden">
               <div class="ee-errors" style="display: none;">
                  <div class="error-title">
                     Attention
                  </div>
                  <ul></ul>
               </div>
               <div class="form-infobox-mobile form-infobox">
                  <div class="form-info-subheader"><span>
                     Application number
                     </span> <span>
                     </span>
                  </div>
               </div>
               <div class="form-infobox">
                  <div class="form-info-header">
                     Summary
                  </div>
                  <div class="form-info-subheader"><span>
                     Destination
                     </span> <span>
                     India
                     </span>
                  </div>
                 
               </div>
               <div class="form-pricebox">
                  
                  <div class="form-info-element sidebar-citizenship-not-chosen">
                     <div class="form-choose-currency-wrapper"><span>
                        Full price
                        </span> <span></span> <span></span>
                     </div>
                     <div>
                        Price will be shown after the required fields are filled
                     </div>
                     <div>
                        <ul>
                           Price depends on the following fields:
                           <li><span>Nationality</span></li>
                           <li><span>Purpose for travel</span></li>
                        </ul>
                     </div>
                  </div>
               </div>
               
               <div>
                  <div class="form-sidebar-faq">
                     <header>
                        <h3>FAQ</h3>
                     </header>
                     <ul class="toggle-box">
                        <li class="toggle-li">
                           <a class="visa-questions-click toggle-click-closed">When will I receive my Visa?</a> 
                           <div class="height">
                              <p class="visa-questions-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur, esse, impedit aspernatur ipsa inventore reiciendis eius ut repellendus ad dolore autem earum id tempore a provident odio unde harum sunt qui laudantium eligendi consectetur molestias molestiae sint aut sequi omnis iure nesciunt optio accusantium debitis nam mollitia blanditiis. Enim, magni.</p>
                           </div>
                        </li>
                        <li class="toggle-li">
                           <a class="visa-questions-click toggle-click-closed">Why was my Visa declined?</a> 
                           <div class="height">
                              <p class="visa-questions-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur, esse, impedit aspernatur ipsa inventore reiciendis eius ut repellendus ad dolore autem earum id tempore a provident odio unde harum sunt qui laudantium eligendi consectetur molestias molestiae sint aut sequi omnis iure nesciunt optio accusantium debitis nam mollitia blanditiis. Enim, magni.</p>
                           </div>
                        </li>
                        <li class="toggle-li">
                           <a class="visa-questions-click toggle-click-closed">Is my visa refundable?</a> 
                           <div class="height">
                              <p class="visa-questions-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur, esse, impedit aspernatur ipsa inventore reiciendis eius ut repellendus ad dolore autem earum id tempore a provident odio unde harum sunt qui laudantium eligendi consectetur molestias molestiae sint aut sequi omnis iure nesciunt optio accusantium debitis nam mollitia blanditiis. Enim, magni.</p>
                           </div>
                        </li>
                     </ul>
                  </div>
               </div>
               <div class="form-sidebar-infoline sidebar-mobile">
                  <div class="infoline-phone-number">
                     Helpline <span>+44 2031 293 603</span>
                  </div>
                  <p>
                     5 days a week from 8am to 4pm. Please prepare your passport number.
                  </p>
               </div>
               <div class="more-details">Details</div>
            </div>
         </div> -->
         
         
      </div>
  
   <div class="ee-form-loader" style="display: none;"><img src="/img/icon/loader.svg" alt="Evisa Express"></div>
   <div onclick="window.hideInsuranceInfo()" class="insurance-info-wrapper" style="display: none;">
      <div onclick="falseHideInsiranceInfoClick(event)" class="insurance-info-container">
         <img src="/img/insurance/signal-iduna-vector-logo.svg" class="signal-iduna-logo"> <button onclick="window.hideInsuranceInfo()" class="insurance-info-close"><img src="\img\icon\16\close.svg"></button> 
         <h1>SAFE TRAVEL</h1>
         <p>Comprehensive travel insurance ensuring optimal protection for customers traveling outside their country of residence for recreational, tourism, educational and professional purposes.</p>
         <div class="insurance-table-header">Medical expenses</div>
         <div class="insurance-table">
            <div class="insurance-table-col">Total limit</div>
            <div class="insurance-table-col">250000 EUR</div>
         </div>
         <div class="insurance-table">
            <div class="insurance-table-col">Medical transportation</div>
            <div class="insurance-table-col">up to total limit</div>
         </div>
         <div class="insurance-table">
            <div class="insurance-table-col">Emergency dental treatment</div>
            <div class="insurance-table-col">250 EUR</div>
         </div>
         <div class="insurance-table">
            <div class="insurance-table-col">Chronic diseases</div>
            <div class="insurance-table-col">Included</div>
         </div>
         <div class="insurance-table">
            <div class="insurance-table-col">Hospitalization</div>
            <div class="insurance-table-col">up to total limit</div>
         </div>
         <div class="insurance-table">
            <div class="insurance-table-col">Medicines and dressings</div>
            <div class="insurance-table-col">up to total limit</div>
         </div>
         <div class="insurance-table-header">Assistance</div>
         <div class="insurance-table">
            <div class="insurance-table-col">24h Telephone emergency assistance</div>
            <div class="insurance-table-col">up to total limit</div>
         </div>
         <div class="insurance-table">
            <div class="insurance-table-col">Interpretation and translation</div>
            <div class="insurance-table-col">up to total limit</div>
         </div>
         <div class="insurance-table">
            <div class="insurance-table-col">Delayed flight coverage</div>
            <div class="insurance-table-col">250 EUR</div>
         </div>
         <div class="insurance-table">
            <div class="insurance-table-col">Travel interruption costs</div>
            <div class="insurance-table-col">up to total limit</div>
         </div>
         <div class="insurance-table">
            <div class="insurance-table-col">Substitution on a business trip</div>
            <div class="insurance-table-col">up to total limit</div>
         </div>
         <div class="insurance-table">
            <div class="insurance-table-col">Transport to your home country</div>
            <div class="insurance-table-col">5000 EUR</div>
         </div>
         <div class="insurance-table-header">Baggage</div>
         <div class="insurance-table">
            <div class="insurance-table-col">Baggage insurance — total limit</div>
            <div class="insurance-table-col">500 EUR</div>
         </div>
         <div class="insurance-table">
            <div class="insurance-table-col">Loss of travel documents (passport, ID)</div>
            <div class="insurance-table-col">up to total limit</div>
         </div>
         <div class="insurance-table">
            <div class="insurance-table-col">Delayed baggage coverage</div>
            <div class="insurance-table-col">250 EUR</div>
         </div>
         <div class="insurance-table">
            <div class="insurance-table-col">Photographic, computer, audio-video equipment and mobile phones:</div>
            <div class="insurance-table-col">250 EUR</div>
         </div>
         <div class="insurance-table-header">Legal assistance</div>
         <div class="insurance-table">
            <div class="insurance-table-col">Lawyer fees in compensation cases</div>
            <div class="insurance-table-col">2000 EUR</div>
         </div>
         <div class="insurance-table">
            <div class="insurance-table-col">Lawyer remuneration in OC cases</div>
            <div class="insurance-table-col">1000 EUR</div>
         </div>
         <div class="insurance-table">
            <div class="insurance-table-col">A loan against a deposit</div>
            <div class="insurance-table-col">10000 EUR</div>
         </div>
         <div class="insurance-table-header">Telephone emergency assistance</div>
         <div class="insurance-table">
            <div class="insurance-table-col">Tourist assistance</div>
            <div class="insurance-table-col">Included</div>
         </div>
         <div class="insurance-table">
            <div class="insurance-table-col">Medical Assistance</div>
            <div class="insurance-table-col">Included</div>
         </div>
         <div class="insurance-table">
            <div class="insurance-table-col">Interpretation and translation</div>
            <div class="insurance-table-col">Included</div>
         </div>
         <p>Country of residence - the country where the policyholder is currently covered by general health insurance or the country where the policyholder resides with the intention of permanent residence.</p>
         <div class="insurance-links"><a target="_blank" href="/pdf/insurance/scope.pdf">Scope and exclusions</a> <a target="_blank" href="/pdf/insurance/insurance-general-conditions.pdf">General Conditions of Insurance</a> <a target="_blank" href="/pdf/insurance/ipid.pdf">IPID</a></div>
      </div>
   </div>

     
  	<%@include file="footer.jsp"%>
  	
  	<script>
  	function submitApplication(){
		if($('#accept-terms-track').prop('checked') && $('#accept-gdpr-track').prop('checked')){
			if(validate()){
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
						
						
					}),
					async : true,
					success : function(data) {
						if(data.status==false){
							Swal.fire({
								  title: "<img src='/images/fail1234.png' style='width:150px;'>", 
								  html: "Email already registerd..!",  
								  confirmButtonText: "Ok", 
								});

						}else{

							Swal.fire({
								  title: "<img src='/images/sucess1234.png' style='width:150px;'>", 
								  html: "Your Application submitted sucessfully",  
								  confirmButtonText: "Ok", 
								});
							
							}
						
					},	
					error : function(data) {
						console.log("error when gettig data");
					}
				});

			}else{
					validate();
				}
		}else{

			$('#accept-terms-track').blur();
     		 $('#accept-gdpr-track').blur();


			}


		}
	
	




  	</script>
  	
  	<script>
	function validate(){
	var isvalidated =true;
			if($('#dayArrival').val()!="Day" && $('#montharrival').val()!="Month" && $('#yearlist').val()!="Year" ){
			 $('#dateofArrivalSucess').css('display','block');
			 $('#dateofArrivalError').css('display','none');

			}else{

				 $('#dateofArrivalError').css('display','block');
				 $('#dateofArrivalSucess').css('display','none');
				 isvalidated=false;
				}
			
			if($('#portArrival').val()!='port'){
				 $('#portofArrivalError').css('display','none');
				 $('#portofArrivalSucess').css('display','block');
			
				}else{
					 $('#portofArrivalSucess').css('display','none');
					 $('#portofArrivalError').css('display','block');
					 isvalidated=false;
				}

			if($('#firstNameID').val()=="" || $('#firstNameID').val().length==0){
				 $('#firstNameError').css('display','block');
				 $('#firstNameSucess').css('display','none');
				 isvalidated=false;

				}else{
					
					 $('#firstNameSucess').css('display','block');
					 $('#firstNameError').css('display','none');
					 

					}

			if($('#lastNameID').val()=="" || $('#lastNameID').val().length==0){
				 $('#lastNameError').css('display','block');
				 $('#lastNameSucess').css('display','none');
				 isvalidated=false;
				}else{
					
					 $('#lastNameSucess').css('display','block');
					 $('#lastNameError').css('display','none');
					 
					}
			
			if($('#dayDOB').val()!="Day" && $('#dayMonth').val()!="Month" && $('#yearlistdob').val()!="Year" ){
				 $('#dobSucess').css('display','block');
				 $('#dobError').css('display','none');

				}else{

					 $('#dobError').css('display','block');
					 $('#dobSucess').css('display','none');
					 isvalidated=false;
					}
			
				var emailvalidate = $('#emailID').val();
				
			 	var validRegex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
				
				 if (validRegex.test(emailvalidate)==true && emailvalidate.length !=0 ) {
					 $('#emailError').css('display','none');
					 $('#emailSucess').css('display','block');
					 
				
				 }else{
		
					 $('#emailError').css('display','block');
					 $('#emailSucess').css('display','none');
					 isvalidated=false;
					 
							 
				}
				if($('#cnfEmail').val()==emailvalidate && $('#cnfEmail').val().length!=0){

					 $('#cnfemailError').css('display','none');
					 $('#cnfemailSucess').css('display','block');
					 
					}else{

						 $('#cnfemailError').css('display','block');
						 $('#cnfemailSucess').css('display','none');
						 isvalidated=false;
					}

				var phoneno = /^\d{10}$/;
				
				if($('#phoneNoId').val().length !=0 && $('#phoneNoId').val().match(phoneno)){
					 $('#phoneError').css('display','none');
					 $('#phoneSucess').css('display','block');
					
				}else{
					 $('#phoneError').css('display','block');
					 $('#phoneSucess').css('display','none');
					 isvalidated=false;

					}	

				if($('#purposeTraval').val()!='port'){
					 $('#travelpuposeError').css('display','none');
					 $('#travelpuposeSucess').css('display','block');
				
					}else{
						 $('#travelpuposeSucess').css('display','none');
						 $('#travelpuposeError').css('display','block');
						 isvalidated=false;
					}
				if($('#countrylist').val()!='port'){
					 $('#nationalityError').css('display','none');
					 $('#nationalitySucess').css('display','block');
				
					}else{
						 $('#nationalitySucess').css('display','none');
						 $('#nationalityError').css('display','block');
						 isvalidated=false;
					}

				return  isvalidated;
				
	}

	
    window.onload = function () {
        //Reference the DropDownList.
        var ddlYears = document.getElementById("yearlist");
        //Determine the Current Year.
        var currentYear = (new Date()).getFullYear();
        //Loop and add the Year values to DropDownList.
        for (var i = currentYear; i <= 2050; i++) {
            var option = document.createElement("OPTION");
            option.innerHTML = i;
            option.value = i;
            ddlYears.appendChild(option);
           
        }

        var ddldobyears = document.getElementById("yearlistdob");	
      //Determine the Current Year.
        var currentYear = (new Date()).getFullYear();
 
        //Loop and add the Year values to DropDownList.
        for (var i = 1950; i <= currentYear; i++) {
            var option = document.createElement("OPTION");
            option.innerHTML = i;
            option.value = i;
            ddldobyears.appendChild(option);
           
        }    

        if(window.location.href.includes("turkey")) {
			$('#portArrivalLabel').css('display','none');
			$('#portArrivalRow').css('display','none');	
          }  
   
    $.ajax({
			type : 'GET',
			url : 'https://trial.mobiscroll.com/content/countries.json',	
			async : true,
			success : function(data) {
				 $.each(data, function(index,element) {
					 $('#countrylist').append('<option value="'+element.text+'">'+element.text+'</option>')
					 
					
				 });
				
			},	
			error : function(data) {
				console.log("error when gettig data");
			}
		}); 
    }


  	</script>
  	
  	<script>
  	
  	
  	</script>
  	
  </body>
</html>