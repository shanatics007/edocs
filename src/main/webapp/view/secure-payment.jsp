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
 int applicationId=0;
 String price=null;
 boolean checkUser=false;
 long userId=0 ;
 String firstName = null;
 String lastName = null;
 boolean paymentStatus = false;
 String from_country="";
 
 if (request.getSession(false).getAttribute("formDetails") != null) {
		HashMap<Object, Object> appVisamodel =(HashMap<Object, Object>) request.getSession(false).getAttribute("formDetails");
		//ApplicationForVisaModel test =request.getSession(false).getAttribute("formDetails");
		System.out.println("AppData:"+appVisamodel.get("data"));
		ApplicationForVisaModel ApplnFormData = (ApplicationForVisaModel)appVisamodel.get("data");
		if(ApplnFormData!=null){
		
		 checkUser=true;
		 applicationId = ApplnFormData.getPkid();
		 userId = ApplnFormData.getUserId();
		 price = ApplnFormData.getPrice();
		 String [] str = price.split("USD");
		 price = str[0];
		 firstName = ApplnFormData.getFirstName();
		 lastName = ApplnFormData.getLastName();
		 from_country=ApplnFormData.getNationality();
		}else{
			
			checkUser=false;
		}
	} 
 
%>

<!DOCTYPE html>

<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Edocs Travel Payment</title>
    <link rel="stylesheet" href="/css/payment.css">
   <link rel="icon" href="/images/favicon-1.png" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="cache-control" content="max-age=0">
    <meta http-equiv="cache-control" content="no-cache, no-store, must-revalidate">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT">
    <meta http-equiv="pragma" content="no-cache">
     <link rel="stylesheet" href="/css/home.css">
    <script src="jquery-3.6.0.min.js"></script>
     <script async="" src="/js/home.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<style type="text/css">


</style>

</head>
<body>
<%@include file="header.jsp"%>
<div class="container warnings-box">
    <div class="warning-title">
            </div>
    <div class="warning-message">
            </div>
</div>
<div class="container payments">
    <div class="description-text-mobile">
            <div class="payment-header">
                Your application has been received.            </div>
            <div class="payment-subheader">
                Please make a payment to complete your application            </div>
    </div>
    <div class="row payments-main">
    <div class="col-lg-4  payment-data-row row">
            <div class="destination-logo">
                <img src="/images/edocs-trave-logo.png">
            </div>

            <div class="details-container payment-details order-sm-12 order-lg-1">
                <div class="title desktop-title" style="font-weight: 600;">
                    Details:
                </div>

                <p translate="no">
                    Application no:<span id="userApplicationId"></span>
                </p>
                                <p>
                    Type of visa:<span id="visaTypeId"></span>
                </p>
                        <p translate="no">
                    Name:<span id="firstNameId"></span>
                </p>
                <p translate="no">
                    Surname:<span id="lastNameId"></span>
                </p>
                <p class="email-address">
                    <span class="email-address__text">Your email:</span>
                    <span class="email-address__content" id="emailId"></span>
                </p>
              
            </div>
            <div class="total-cost order-sm-1 order-lg-2 ">
                 <div class="total-cost-line">
                    <span class="total-cost-text">Total cost:</span>
                   <div class="amount">
                        <span id="price-amount" translate="no" id="totalPriceId"></span>
                        <span id="price-currency" translate="no" class="prices-list" style="cursor: pointer;">USD</span>
                       
                       
                    </div>
               
               </div>
            </div>
        
        </div>
        <div class="col-lg-8 payment-row px-0">
            <div class="offset-1 col-lg-10 payment-header" id="desktopheadermessage">
                Your application has been received.            </div>
            <div class="offset-1 col-lg-10 payment-subheader" id="desktopViewPaymnetMessage">
                Please make a payment to complete your application            </div>
            <div class="offset-lg-1 offset-sm-0 col-12 col-lg-10 col-sm-12 payments-box">
                <div class="payment-method-text">
                    Choose payment method                </div>
                <input type="hidden" id="userId" name="" value="<%=userId%>">
                <input type="hidden" id="applicationId" name="" value="<%=applicationId%>">
                 <input type="hidden" id="priceId" name="" value="<%=price%>">
                <div class="payment-methods">
                    <ul>
					  <li data-payment="ingenico-card-form">
					  <!--   <label class="check">
					        <input type="checkbox" class="payment-checkbox checked-default" data-payment="ingenico-card-form">
					        <span class="checkmark"></span>
					    </label> -->
					    <div class="payment-icons">
					    <img alt="mastercard" src="/images/mastercard.png">
					    <img alt="mastercard" src="/images/visacard.png">
					    <img alt="mastercard" src="/images/paypal.png">
					    <img alt="mastercard" src="/images/american-express.png">
					      
					    </div>
					</li>

				<li class="payment-form" id="ingenico-card-form" style="height: auto; display: list-item;">
			    <form id="ingenico-card-payment-form">
			        <div class="input-group">
			            <label>Credit card number</label>
			            <input type="text" inputmode="numeric" id="card_number" minlength="10" maxlength="19" placeholder="0000 0000 0000 0000" autocomplete="off" onChange="validate();">
			            <div id="card_number_info" class="input-info"></div>
			        </div>
			        			        <div class="input-group row">
			            <div class="col-md-6">
			                <label>Expiration date</label>
			                <select class="col-lg-5" id="card_expiry_mm" name="card_expiration_month" autocomplete="off" onChange="validate();">
			                    <option value="" disabled="" selected="">MM</option>
			                                            <option value="01">01</option>
			                                            <option value="02">02</option>
			                                            <option value="03">03</option>
			                                            <option value="04">04</option>
			                                            <option value="05">05</option>
			                                            <option value="06">06</option>
			                                            <option value="07">07</option>
			                                            <option value="08">08</option>
			                                            <option value="09">09</option>
			                                            <option value="10">10</option>
			                                            <option value="11">11</option>
			                                            <option value="12">12</option>
			                                    </select>
			                <select class="col-lg-5" id="card_expiry_yy" name="card_expiration_year" autocomplete="off" onChange="validate();">
			                    <option value="" disabled="" selected="">YY</option>
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
			                                            <option value="32">32</option>
			                                    </select>
			                <div id="card_expiry_info" class="input-info"></div>
			            </div>
			            <div class="col-md-5 col-sm-11 cvv-box">
			                <label>CVC / CVV / CCV2</label>
			                <input type="text" inputmode="numeric"  placeholder="123" class="cvv-code" id="card_cvv" name="card_cvv_code" autocomplete="off" onChange="validate();">
			                <div id="card_cvv_info" class="input-info"></div>
			            </div>
			            <div class="hint" data-content="&lt;div&gt;The CVV/CVC code is 3 digits located on the back of your credit/debit card.&lt;/div&gt;&lt;img src=&#39;/assets/images/cvv.svg&#39; /&gt;&lt;div class=&#39;arrow&#39;&gt;&lt;/div&gt;" data-original-title="" title=""></div>
			            <input type="hidden" name="card_type" id="card_type" value="">
			            <input type="hidden" name="payment" value="ingenico-card" id="payment-method">
			        </div>
			        <div class="input-group row card-holders">
			            <div class="col-md-6">
			                <label>First name</label>
			                <input type="text" id="card_holder_first_name" placeholder="required" autocomplete="off"  onChange="validate();" class="input-success">
			                <div class="input-info card_holder_info"></div>
			            </div>
			            <div class="col-md-6">
			                <label>Surname</label>
			                <input type="text" id="card_holder_second_name" placeholder="required" autocomplete="off"  onChange="validate();" class="input-success">
			                <div class="input-info card_holder_info"></div>
			            </div>
			        </div>
			        
			          <div class="input-group">
			            <label>Address</label>
			            <input type="text" inputmode="numeric" id="billing_address" minlength="10" maxlength="19" placeholder="Street,apt,address" autocomplete="off" onChange="validate();">
			            
			        </div>
			        
			          <div class="input-group">
			            <label>City</label>
			            <input type="text" inputmode="numeric" id="billing_city" minlength="10" maxlength="19" placeholder="City" autocomplete="off" onChange="validate();">
			           
			        </div>
			        
			         <div class="input-group row card-holders">
			            <div class="col-md-6">
			                <label>State</label>
			                <input type="text" id="billing_state" placeholder="State" autocomplete="off"  required="" class="input-success" onChange="validate();">
			                <div class="input-info card_holder_info"></div>
			            </div>
			            <div class="col-md-6">
			                <label>ZipCode</label>
			                <input type="text" id="billing_zipcode" placeholder="Zip Code" minlength="5" maxlength="5" autocomplete="off"  onChange="validate();"class="input-success">
			                <div class="input-info card_holder_info"></div>
			            </div>
			        </div>	
			           <div class="input-group">
			            <label>Country</label>
			             <select id="countrylist" onChange="validate();">
						<option value="port"></option>
						</select>
			        </div>	
			        <button type="submit" id="payment-form--submit" style="display: none;"></button>
			    </form>
			</li>
         </ul>
         </div>
         <div class="buttons-block buttons-center order-lg-3">
                <button type="button" class="payment-btn big-button button-success" id="pay-btn" onclick="makePayment();">
                    <div class="loader"></div>
                    Make a payment    </button>
            </div>
      </div>
   </div>
   
   
        
    </div>
</div>
<%@include file="footer.jsp"%>
<script>

function makePayment(){
	var authUrl = window.location.href;
	var authKey = authUrl.split('=')[1];
	var url ="/payment/makePayment";
	if(validate()){
		alert($('#countrylist').val());
		alert($('#billing_zipcode').val());
	$.ajax({
		type : "POST",
		url : url,	
		headers: {
                'Content-Type': 'application/json'
            },
		data: JSON.stringify ({

			"userId":$('#userId').val(),
			"applicationId":$('#applicationId').val(),
			"price":       $('#priceId').val(),
			"paymentStatus":false,
			"cardNumber": $('#card_number').val(),
			"month":     $('#card_expiry_mm').val(),
			"year"	:    $('#card_expiry_yy').val(),
			"ccid" :	 $('#card_cvv').val(),
			"firstName": $('#card_holder_first_name').val(),
			"lastName": $('#card_holder_second_name').val(),
			"invoice": $('#applicationId').val(),
			"billingCountry":$('#countrylist').val(),
			"billingAddress": $('#billing_address').val(),
			"billingState": $('#billing_state').val(),
			"billingZipcode": $('#billing_zipcode').val(),
			"billingCity": $('#billing_city').val(),
		}),
		async : true,
		success : function(data) {
			if(data.status==true){
				window.location.href = "/en/additional-information/"+authKey;
			}else{
				if(data.message==""){
					Swal.fire({
						  title: "<img src='/images/fail1234.png' style='width:150px;'>", 
						  html: "We are unable tp process your payment",  
						  confirmButtonText: "Ok", 
						 
						});
				}else{
					Swal.fire({
						  title: "<img src='/images/fail1234.png' style='width:150px;'>", 
						  html: data.message,  
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
		validate();
		}
}
  		
</script>

<script>
window.onload = function () {

    var checkFormStatus = "<%=checkUser%>";
    $('#card_holder_first_name').val('<%=firstName%>');
    $('#card_holder_second_name').val('<%=lastName%>');
    getCountryList();
    $('#countrylist option:selected').text('<%=from_country%>')
	var authUrl = window.location.href;
	var authKey = authUrl.split('=')[1];
   
    $.ajax({
		type : 'GET',
		url : '/application/getApplicationDetails/'+authKey,	
		async : true,
		success : function(data) {
			$('#applicationId').val(data.pkid);
			var price  = data.price.split('USD');
			$('#priceId').val(price[0]);
			$('#userId').val(data.userId);
			$('#card_holder_first_name').val(data.firstName);
			$('#card_holder_second_name').val(data.lastName);
			/* $('#countrylist').val(data.nationality); */
			$('#userApplicationId').text(data.pkid);
			$('#visaTypeId').text(data.purposeForTravel);
			$('#firstNameId').text(data.firstName);
			$('#lastNameId').text(data.lastName);
			$('#emailId').text(data.email);
			$('#price-amount').text(price[0]);
			
			
		},	
		error : function(data) {
			console.log("error when gettig data");
		}
	}); 
  
}

</script>

<script>

	function validate(){
		var isvalidated =true;
		if($('#card_number').val()!=''){
			
			$('#card_number').css('border','none')
		}else{
			$('#card_number').css('border','1px solid red')
			isvalidated = false;
		}
		if($('#card_expiry_mm').val()!=''){
			
			$('#card_expiry_mm').css('border','none')
		}else{
			$('#card_expiry_mm').css('border','1px solid red')
			isvalidated = false;
		}

		if($('#card_expiry_yy').val()!=''){
			
			$('#card_expiry_yy').css('border','none')
		}else{
			$('#card_expiry_yy').css('border','1px solid red')
			isvalidated = false;
		}

		if($('#card_cvv').val()!=''){
			
			$('#card_cvv').css('border','none')
		}else{
			$('#card_cvv').css('border','1px solid red')
			isvalidated = false;
		}
		if($('#billing_address').val()!=''){
			
			$('#billing_address').css('border','none')
		}else{
			$('#billing_address').css('border','1px solid red')
			isvalidated = false;
		}
		
		if($('#billing_city').val()!=''){
			
			$('#billing_city').css('border','none')
		}else{
			$('#billing_city').css('border','1px solid red')
			isvalidated = false;
		}
		if($('#billing_state').val()!=''){
			
			$('#billing_state').css('border','none')
		}else{
			$('#billing_state').css('border','1px solid red')
			isvalidated = false;
		}
		if($('#billing_zipcode').val()!=''){
			
			$('#billing_zipcode').css('border','none')
		}else{
			$('#billing_zipcode').css('border','1px solid red')
			isvalidated = false;
		}
		if($('#countrylist').val()!=''){
			
			$('#countrylist').css('border','none')
		}else{
			$('#countrylist').css('border','1px solid red')
			isvalidated = false;
		}

		return isvalidated;
	
	}

	function getCountryList(){
		  $.ajax({
				type : 'GET',
				url : '/country/getCountryList',	
				async : false,
				success : function(data) {
					 $.each(data, function(index,element) {
						 
						 $('#countrylist').append('<option value="'+element.countryCode+'">'+element.countryName+'</option>')
						
					 });
						
				},	
				error : function(data) {
					console.log("error when gettig data");
				}
			}); 
		}
	
</script>

</body>
</html>