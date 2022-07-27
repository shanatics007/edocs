<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>
<!-- saved from url=(0038)https://edocs.travel/en/account/login -->
<html lang="en">
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
      <title>Edocs Travel</title>
       
       <link rel="stylesheet" href="/css/default.css"> 
    <link rel="stylesheet" href="/css/home.css">
    <link rel="stylesheet" href="/css/login.css">
     <link rel="icon" href="/images/favicon-1.png" type="image/x-icon">
      <script src="/js/home.js"></script>
      <script src="jquery-3.6.0.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
   </head>
   <body>
      <div id="overlay" class="hidden mobileMenuOverlay"></div>
 	<%@include file="header.jsp"%>
      <section class="main-site-content account-page">
         <div class="container">
            <div class="form-centered">
               <div class="form-header">Log in</div>
               <div class="form-content">
                  <!----> 
                  <div class="form-condition-wrapper">
                     <!----> 
                     <div class="input-box">
                        <div class="input-box-top">
                           <div class="input-box-label">
                              Email
                           </div>
                        </div>
                        <div class="input-box-bottom">
                           <div class="actual-input">
                              <div class="text-input-single">
                              <input type="email" placeholder="Email" id="userEmail" onChange="validate();">
                              </div>
                         
					<div class="error-mark" style="display:none;"><i class="icon-error"></i></div>
                           </div>
                           
                        </div>
                        <span id ="invalidatEmail"  style="color:red; display:none;">Please Enter Correct Email *</span>
                     </div>
                     <div class="form-condition-wrapper">
                        <div class="input-box" id="passwordInputId">
                           <div class="input-box-top">
                              <div class="input-box-label">
                                 Password
                              </div>
                           </div>
                           <div class="input-box-bottom">
                              <div class="actual-input">
                                 <div class="text-input-single">
                                 <input type="password" placeholder="password" id="userPass"></div>
                                 <!---->
                              </div>
                            
                           </div>
                        </div>
                        <div class="input-box">
                           <div class="input-box-bottom button-container submit-input-container">
                           <button class="btn" id="loginbuttonId" onclick="login();">
                              Log in
                              </button>
                              
                              <button class="btn" id="resetPassid" style="display:none;" onclick="resetPass();">
                              SEND RESET URL
                              </button>
                           </div>
                        </div>
                        <a class="underline-link" id="forgotPasslink" onclick="forgotPass();">
                        I forgot my password
                        </a> 
                        
                         <a href="/login" class="underline-link" id="backloginId" style="display:none;">
                       Back to login
                        </a> 
                       
                        <div class="input-box" id="singupId">
                           <center><span class="underlogin-text">
                              Don't have an account?
                              <a href="/register" class="underline-link">
                              Sign up
                              </a></span>
                           </center>
                        </div>
                     </div>
                     <!---->
                  </div>
               </div>
            </div>
            </div>
            <div class="ee-form-loader" style="display: none;">
         </div>
      </section>
     
  	<%@include file="footer.jsp"%>
  	
  	
  	
  	<script>
	function validate(){

		var validRegex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		var emailvalidate = $('#userEmail').val();
		
		 if (validRegex.test(emailvalidate)==true) {
			 $('.error-mark').css('display','none');
			 $('#invalidatEmail').css('display','none');	
			 $('#userEmail').css('border',' 1px solid black');
		
		 }else{

			 $('.error-mark').css('display','block');
			 $('#invalidatEmail').css('display','block');
					 
			 }

					
		
	}


	function isValidate(){
		var isValidated = true;
		var userEmail =$('#userEmail').val();
      	var userPass = $('#userPass').val();
		if(userEmail==null || userEmail.length==0){
      		$('#userEmail').blur();
      		$('#userEmail').css('border',' 1px solid red');
      		return false;
      		isValidated= false;
      		
      	}else if(userPass==null || userPass.length==0 || userPass==''){
      		$('#userPass').blur();
      		$('#userPass').css('border',' 1px solid red');
      		return false;
      		isValidated= false;
      	}else{
      		$('#userEmail').css('border',' 1px solid black');
      		$('#userPass').css('border',' 1px solid black');
      		return true;
      		isValidated= true;
      	
      	 }
		}

  	</script>
  	
  	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      <script type="text/javascript">

    	function login(){	
          	var url = "user/signin";	
          	var userEmail =$('#userEmail').val();
          	var userPass = $('#userPass').val();
          	if(isValidate()){
              	
			$.ajax({
				type : "POST",
				url : url,	
				 headers: {
	                    'Content-Type': 'application/json'
	                },
				data: JSON.stringify ({
					"userEmail":userEmail,
					"userPassword": userPass			
				}),
				async : true,
				success : function(data) {
					
					if(data.status==true){
						window.location = "/en/account";
						/* Swal.fire({
							  title: "<img src='images/sucess1234.png' style='width:150px;'>", 
							  html: "You have login sucessfully",  
							  confirmButtonText: "Ok", 
								}) .then(function() {
								    window.location = "/en/account";
							}); */
					}else{

						if(data.message=="User not found")	{

							Swal.fire({
								  title: "<img src='images/fail1234.png' style='width:150px;'>", 
								  html: "User not found",  
								  confirmButtonText: "Ok", 
								});
									

						}else{

							Swal.fire({
								  title: "<img src='images/fail1234.png' style='width:150px;'>", 
								  html: "Please confirm your email and password",  
								  confirmButtonText: "Ok", 
							});
								  
							
							}
			
					}
				},	
				error : function(data) {
					console.log("error when gettig data");
				}
			});
			
			}else{
				
				isValidate();
				
				}
    	}
     
    	
    	function forgotPass(){
    		$('.form-header').text('CHANGE PASSWORD')
    		$('#passwordInputId').css('display','none');
    		$('#loginbuttonId').css('display','none');
    		$('#resetPassid').css('display','block');
    		$('#forgotPasslink').css('display','none');
    		$('#backloginId').css('display','block');
    		$('#singupId').css('display','none');
    		
    	}

    	function resetPass(){
    		var url = "user/forgotpassword";
    		var userEmail =$('#userEmail').val();
    		$.ajax({
				type : "POST",
				url : url,	
				 headers: {
	                    'Content-Type': 'application/json'
	                },
				data: JSON.stringify ({
					"userEmail":userEmail	
				}),
				async : true,
				success : function(data) {
					if(data.status==1){
						Swal.fire({
							  title: "<img src='images/sucess1234.png' style='width:150px;'>", 
							  html: "Email sent sucessfully",  
							  confirmButtonText: "Ok", 
							});

					}else{
						Swal.fire({
							  title: "<img src='images/fail1234.png' style='width:150px;'>", 
							  html: "Email not found.",  
							  confirmButtonText: "Ok", 
							});
							
						}
					
					
				},	
				error : function(data) {
					console.log("error when gettig data");
				}
			});
        	}
	

      </script>
      
  	
  	
  </body>
</html>