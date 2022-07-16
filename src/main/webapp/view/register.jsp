<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
   String ip = request.getRemoteAddr();
   System.out.println(ip);
    %>
    
    <!DOCTYPE html>
 
<html lang="en">
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
      <title>Edocs Travel</title>
      
      <link rel="stylesheet" href="/css/default.css">
       <link rel="stylesheet" href="/css/login.css">
     <link rel="icon" href="/images/favicon-1.png" type="image/x-icon">
      <link rel="stylesheet" type="text/css" href="./Evisa Express_files/destinations-sprite.css">
      <script async="" src="js/modules.e20d55506f3679282458.js" charset="utf-8"></script>
      <!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	
	<!-- Latest compiled JavaScript -->
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="/js/home.js"></script>
    <link rel="stylesheet" href="/css/home.css">
     </head>
   <body>
      <div id="overlay" class="hidden mobileMenuOverlay"></div>
      	<%@include file="header.jsp"%>
      		 
      <section class="main-site-content account-page height-max">
         <div class="container">
            <div class="form-centered">
               <div class="form-header">Registration form</div>
               <div class="form-content">
                  <!----> 
                  <div class="form-condition-wrapper">
                     <div class="input-box">
                        <div class="input-box-top">
                           <div class="input-box-label">
                              Email
                           </div>
                        </div>
                        <div class="input-box-bottom">
                           <div class="actual-input">
                              <div class="text-input-single">
                              <input type="email" id="userEmail" onChange="validate();"></div>
                             
                           </div>
                         
                           <div class="error-mark" id="emailerror" style="display:none;"><i class="icon-error"></i></div>
                           <div class="success-mark" id="emailsucess" style="display:none;"><i class="icon-ok"></i></div>
                        </div>
                         <span id ="invalidatEmail"  style="color:red; display:none;">Please Enter Correct Email *</span>
                     </div>
                     <div class="input-box">
                        <div class="input-box-top">
                           <div class="input-box-label">
                              Password
                           </div>
                           <div class="input-box-hint">
                              At least 8 characters, including at least 1 uppercase letter, 1 lowercase letter and a number.
                           </div>
                        </div>
                        <div class="input-box-bottom">
                           <div class="actual-input">
                              <div class="text-input-single">
                              <input type="password" id="userPass" onChange="validate();"></div>
                             
                           </div>
                            <div class="error-mark" id="passError" style="display:none;"><i class="icon-error"></i></div>
                           <div class="success-mark" id="passSucess" style="display:none;"><i class="icon-ok"></i></div>
                         
                        </div>
                         <span id ="invalidatPass"  style="color:red; display:none;">Please Enter Correct Password *</span>
                     </div>
                     <div class="input-box">
                        <div class="input-box-top">
                           <div class="input-box-label">
                              Confirm password
                           </div>
                           <div class="input-box-hint">
                              The two passwords must match.
                           </div>
                        </div>
                        <div class="input-box-bottom">
                           <div class="actual-input">
                              <div class="text-input-single">
                              <input type="password" id="userConfPass" onChange="validate();";></div>
                            
                           </div>
                            <div class="error-mark" id="cnfpassError" style="display:none;"><i class="icon-error"></i></div>
                           <div class="success-mark" id="cnfpassSucess" style="display:none;"><i class="icon-ok"></i></div>
                           
                        </div>
                          <span id ="invalidatCnfPass"  style="color:red; display:none;">Password not matched please enter correct password *</span>
                     </div>
                     <div class="input-box">
                        <div class="input-box-top">
                           <div class="input-box-label">
                              Account type
                           </div>
                        </div>
                        <div class="input-box-bottom">
                           <div class="actual-input">
                              <div class="radio-input-double">
                                 <div class="radio-option-container">
                                 <input id="private" name="accountType" type="radio"  value="1"  onclick="showPersonalDetails()"> <label for="private">
                                    Personal
                                    </label>
                                 </div>
                                 <div class="radio-option-container" >
                                 <input id="corporate" type="radio"  name="accountType" value="2" onclick="showCompanyDeatils()" > <label for="corporate">
                                    Corporate
                                    </label>
                                 </div>
                                 
                              </div>
                              
                           </div>
                        </div>
                        <div class="input-box" style="display:none;" id="showCompanyType"><div class="input-box-top"><div class="input-box-label">
                                Company name
                            </div></div> <div class="input-box-bottom"><div class="actual-input"><div class="text-input-single"><input type="text" id="companyNameId"></div> <!----></div> <!----> <!----></div></div>
                    	 <div class="input-box" style="display:none;" id="showPersonalType"><div class="input-box-top"><div class="input-box-label">
                                Full name
                            </div></div> <div class="input-box-bottom"><div class="actual-input">
                            <div class="text-input-single"><input type="text" id="fullNameId"></div> <!----></div> <!----> <!----></div></div>
                     </div>
                   
                    <!--  <div class="input-box">
                        <div class="input-box-bottom">
                           <div class="actual-input">
                              <div class="checkall-input"><label for="checkall">
                                 Check all (checks all the checkboxes below)
                                 <input type="checkbox" id="checkall"> <span class="checkmark"></span></label>
                                 
                              </div>
                           </div>
                           <div class="input-mark"></div>
                        </div>
                     </div> -->
                     <div class="input-box nested-checkbox">
                        <div class="input-box-bottom">
                            <div class="actual-input">
                              <div class="checkall-input"><label for="terms"><span>I accept the <a href="/en/terms-of-service" target="_blank">Terms</a> and <a href="/en/terms-of-service" target="_blank">Conditions</a>.</span> <input type="checkbox" id="terms"> <span class="checkmark"></span></label></div>
                           </div>
                           <div class="input-mark"></div>
                        </div>
                     </div>
                     <div class="input-box nested-checkbox">
                        <div class="input-box-bottom">
                           <div class="actual-input">
                              <div class="checkall-input"><label for="gdpr">
                                 In accordance with article 9 § 2 letter (a) of the General Regulation on the protection of personal data of 27 April 2016 (Journal of Laws EU.L 2016 No. 119), I agree to processing my personal data.
                                 <input type="checkbox" id="gdpr"> <span class="checkmark"></span></label>
                              </div>
                           </div>
                           <div class="input-mark"></div>
                        </div>
                     </div>
                     <div class="input-box">
                        <div class="input-box-bottom button-container submit-input-container"><button class="btn" onclick="register();">
                           Continue
                           </button>
                        </div>
                     </div>
                     
                  </div>
               </div>
            </div>
            <div class="ee-form-loader" style="display: none;"><img src="./Evisa Express_files/loader.svg" alt="Evisa Express"></div>
         </div>
      </section>
      
     	<%@include file="footer.jsp"%>
     	
     	
     	
     	
     	
     
     	
      <script>
         var languages = {
                         'en': 'https://evisa.express/en/account/register',
             'de': 'https://evisa.express/de/account/register',
                         'en': 'https://evisa.express/en/account/register',
             'pl': 'https://evisa.express/pl/account/register',
                         'en': 'https://evisa.express/en/account/register',
             'es': 'https://evisa.express/es/account/register',
                         'en': 'https://evisa.express/en/account/register',
             'cn': 'https://evisa.express/cn/account/register',
                     }


         function showCompanyDeatils(){
             
        		 document.getElementById("showCompanyType").style.display = "block";
        		 document.getElementById("showPersonalType").style.display = "none";
      	   }
         function showPersonalDetails(){
             
    		 document.getElementById("showCompanyType").style.display = "none";
    		 document.getElementById("showPersonalType").style.display = "block";
  	   }


        
      </script>
    
      
      <script type="text/javascript">
      	function register(){

      		 var userIp = '<%=ip%>';
			
			
          	if($('#terms').prop('checked') && $('#gdpr').prop('checked')){
      		
      		if(onSubmitValidate()){
      			
          	var url = "user/signup";	
          	var userEmail =$('#userEmail').val();
          	var userPass = $('#userPass').val();
          	var userConfirmPass = $('#userConfPass').val();
          	var accType= $("input[name='accountType']:checked ~ label").text().trim();
          	var fullName=null;
          	var companyName= null;
          	var isEnabled = true;
          	if(accType=="Personal"){
          		fullName = $('#fullNameId').val();
          	}else if(accType == "Corporate"){
          		companyName = $('#companyNameId').val();
          	}
			
			$.ajax({
				type : "POST",
				url : url,	
				 headers: {
	                    'Content-Type': 'application/json'
	                },
				data: JSON.stringify ({
					"userEmail":userEmail,
					"userPassword": userPass,
					"userConfirmPassword": userConfirmPass,
					"accountType": accType,
					"isCreatedOn": Math.floor(Date.now() / 1000),
					"isEnabled": isEnabled,
					"userRole":	"USER",
					"userIp": userIp,
					"fullName": fullName,
					"companyName":companyName
					
				}),
				async : true,
				success : function(data) {
					if(data.status==false){
						Swal.fire({
							  title: "<img src='images/fail1234.png' style='width:150px;'>", 
							  html: "Email already registerd..!",  
							  confirmButtonText: "Ok", 
							});

					}else{

						Swal.fire({
							  title: "<img src='images/sucess1234.png' style='width:150px;'>", 
							  html: "You have registerd sucessfully",  
							  confirmButtonText: "Ok", 
							}).then(function() {
							    window.location = "/login";
							});
						
						}
					
				},	
				error : function(data) {
					console.log("error when gettig data");
				}
			});
      	}
          	}else{
          		$('#terms').blur();
          		 $('#gdpr').blur();
              	}
			
		}
      	
      	
      	function validate(){
      		$('#cnfpassSucess').css('display','none')	
      		
    		var validRegex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    		var emailvalidate = $('#userEmail').val();
    		
    		var pass= $('#userPass').val();
    		var confirmPass = $('#userConfPass').val();
    			
    		 if (validRegex.test(emailvalidate)==true) {
    			 $('#emailerror').css('display','none');
    			 $('#invalidatEmail').css('display','none');	
    			 $('#userEmail').css('border',' 1px solid black');
    			
    			 $('#emailsucess').css('display','block');
    			
    			   // document.form1.text1.focus();
    		 }else{

    			 $('#emailerror').css('display','block');
    			 $('#invalidatEmail').css('display','block');
    			 $('#emailsucess').css('display','none');
    			 return false;
    					 
    			 }
    		 
    		 if (pass.match(/[a-z]/g) && pass.match(/[A-Z]/g) && pass.match(/[0-9]/g) && pass.match(/[^a-zA-Z\d]/g) && pass.length >= 8){
    			 
    			 $('#passError').css('display','none');
    			 $('#invalidatPass').css('display','none');	
    			 $('#userPass').css('border',' 1px solid black');
    			 $('#passSucess').css('display','block');
    			 
    			 
    		 }else{
    			 $('#passSucess').css('display','none');
    			 $('#passError').css('display','block');
    			 $('#invalidatPass').css('display','block');
    			 return false;
    		 }
    		 if(confirmPass==pass){
    			 $('#cnfpassError').css('display','none');
    			 $('#invalidatCnfPass').css('display','none');	
    			 $('#userConfPass').css('border',' 1px solid black');
    			 $('#cnfpassSucess').css('display','block');
    			 
    		 }else{
    			 $('#cnfpassSucess').css('display','none');
    			 $('#cnfpassError').css('display','block');
    			 $('#invalidatCnfPass').css('display','block');
    			 return false;
    			 
    		 }
		
    	}
      	
      	function onSubmitValidate(){
      		var isValidated = true;
			var email = $('#userEmail').val();
    		var pass= $('#userPass').val();
    		var confirmPass = $('#userConfPass').val();
    	 	var accType= $("input[name='accountType']:checked ~ label").text().trim();
    		var fullName = $('#fullNameId').val();
    		var companyName = $('#companyNameId').val();
    		
    		if(email=="" || email.length==0){
    			$('#userEmail').blur();
          		$('#userEmail').css('border',' 1px solid red');
          		isValidated = false;
    		}else{
    			$('#userEmail').css('border',' 1px solid black');
    			
    		}
    		
			if(pass=="" || pass.length==0){
				$('#userPass').blur();
          		$('#userPass').css('border',' 1px solid red');
          		isValidated = false;
    		}else{
    			$('#userPass').css('border',' 1px solid black');
    			
    		}
			
			if(confirmPass=="" || confirmPass.length==0){
				
				$('#userConfPass').blur();
          		$('#userConfPass').css('border',' 1px solid red');
          		isValidated = false;
    		}else{
    			$('#userConfPass').css('border',' 1px solid black');
    			
    			
    		}if(accType=="Personal"){
    			
    			if(fullName=="" || fullName.length==0){
    				$('#fullNameId').blur();
              		$('#fullNameId').css('border',' 1px solid red');
              		isValidated = false;
        		}else{
        			$('#fullNameId').css('border',' 1px solid black');
        			
        		}
    		}else{
				if(companyName=="" || companyName.length==0){
        			
					$('#companyNameId').blur();
              		$('#companyNameId').css('border',' 1px solid red');
              		isValidated = false;
        		}else{
        			
        			$('#companyNameId').css('border',' 1px solid black');
        		}
    		}
    		
    		return isValidated;
    		
    		
      		
      	}

      	function GetUserIP(){
          	
         	$.ajax({
			type : "POST",
			url : 'http://jsonip.com/',	
			 headers: {
                    'Content-Type': 'application/json'
                },
			
			async : false,
			success : function(data) {
				alert(data)
				
				
			},	
			error : function(data) {
				console.log("error when gettig data");
			}
		   });
      	}
      	
      </script>
      
        
   </body>
</html>