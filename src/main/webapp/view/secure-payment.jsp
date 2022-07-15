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
 
 if (request.getSession().getAttribute("formDetails") != null) {
		HashMap<Object, Object> appVisamodel =(HashMap<Object, Object>) request.getSession().getAttribute("formDetails");
		//ApplicationForVisaModel test =request.getSession().getAttribute("formDetails");
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
    <script src="jquery-3.6.0.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<style type="text/css">
iframe#_hjRemoteVarsFrame {
	display: none !important;
	width: 1px !important;
	height: 1px !important;
	opacity: 0 !important;
	pointer-events: none !important;
}

</style>

</head>
<body>
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
        <div class="col-lg-12 order-1 order-lg-1 order-sm-12 payment-row px-0">
            <div class="offset-1 col-lg-10 payment-header">
                Your application has been received.            </div>
            <div class="offset-1 col-lg-10 payment-subheader">
                Please make a payment to complete your application            </div>
            <div class="offset-lg-1 offset-sm-0 col-12 col-lg-10 col-sm-12 payments-box">
                <div class="payment-method-text">
                    Choose payment method                </div>
                <input type="hidden" id="token" name="" value="">
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
					      
					    </div>
					</li>

				<li class="payment-form" id="ingenico-card-form" style="height: auto; display: list-item;">
			    <form id="ingenico-card-payment-form">
			        <div class="input-group">
			            <label>Credit card number</label>
			            <input type="text" inputmode="numeric" id="card_number" minlength="10" maxlength="19" placeholder="0000 0000 0000 0000" autocomplete="off" required="">
			            <div id="card_number_info" class="input-info"></div>
			        </div>
			        			        <div class="input-group row">
			            <div class="col-md-6">
			                <label>Expiration date</label>
			                <select class="col-lg-5" id="card_expiry_mm" name="card_expiration_month" autocomplete="off" required="">
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
			                <select class="col-lg-5" id="card_expiry_yy" name="card_expiration_year" autocomplete="off" required="">
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
			                <input type="text" inputmode="numeric" pattern="\d\d\d|\d\d\d\d" placeholder="123" class="cvv-code" id="card_cvv" name="card_cvv_code" autocomplete="off" required="">
			                <div id="card_cvv_info" class="input-info"></div>
			            </div>
			            <div class="hint" data-content="&lt;div&gt;The CVV/CVC code is 3 digits located on the back of your credit/debit card.&lt;/div&gt;&lt;img src=&#39;/assets/images/cvv.svg&#39; /&gt;&lt;div class=&#39;arrow&#39;&gt;&lt;/div&gt;" data-original-title="" title=""></div>
			            <input type="hidden" name="card_type" id="card_type" value="">
			            <input type="hidden" name="payment" value="ingenico-card" id="payment-method">
			        </div>
			        <div class="input-group row card-holders">
			            <div class="col-md-6">
			                <label>First name</label>
			                <input type="text" id="card_holder_first_name" placeholder="required" autocomplete="off"  required="" class="input-success">
			                <div class="input-info card_holder_info"></div>
			            </div>
			            <div class="col-md-6">
			                <label>Surname</label>
			                <input type="text" id="card_holder_second_name" placeholder="required" autocomplete="off"  required="" class="input-success">
			                <div class="input-info card_holder_info"></div>
			            </div>
			        </div>
			        
			          <div class="input-group">
			            <label>Address</label>
			            <input type="text" inputmode="numeric" id="billing_address" minlength="10" maxlength="19" placeholder="Street,apt,address" autocomplete="off" required="">
			            
			        </div>
			        
			          <div class="input-group">
			            <label>City</label>
			            <input type="text" inputmode="numeric" id="billing_city" minlength="10" maxlength="19" placeholder="City" autocomplete="off" required="">
			           
			        </div>
			        
			         <div class="input-group row card-holders">
			            <div class="col-md-6">
			                <label>State</label>
			                <input type="text" id="billing_state" placeholder="State" autocomplete="off"  required="" class="input-success">
			                <div class="input-info card_holder_info"></div>
			            </div>
			            <div class="col-md-6">
			                <label>ZipCode</label>
			                <input type="text" id="billing_zipcode" placeholder="Zip Code" minlength="5" maxlength="5" autocomplete="off"  required="" class="input-success">
			                <div class="input-info card_holder_info"></div>
			            </div>
			        </div>	
			           <div class="input-group">
			            <label>Country</label>
			             <select id="countrylist">
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
                    Make a payment                </button>
            </div>
      </div>
   </div>
        
    </div>
</div>
<script>

function makePayment(){
	var url ="/payment/makePayment";
	$.ajax({
		type : "POST",
		url : url,	
		headers: {
                'Content-Type': 'application/json'
            },
		data: JSON.stringify ({

			"userId":<%=userId%>,
			"applicationId":<%=applicationId%>,
			"price":       "<%=price%>",
			"paymentStatus":false,
			"cardNumber": $('#card_number').val(),
			"month":     $('#card_expiry_mm').val(),
			"year"	:    $('#card_expiry_yy').val(),
			"ccid" :	 $('#card_cvv').val(),
			"firstName": $('#card_holder_first_name').val(),
			"lastName": $('#card_holder_second_name').val(),
			"invoice": <%=applicationId%>,
			"billingCountry":$('#billing_country').val(),
			"billingAddress": $('#billing_address').val(),
			"billingState": $('#billing_state').val(),
			"billingZipcode": $('#billing_zipcode').val(),
			"billingCity": $('#billing_city').val(),
		}),
		async : true,
		success : function(data) {
			if(data.status==true){
				window.location.href = "/en/confirmation";
			}else{
				Swal.fire({
					  title: "<img src='/images/fail1234.png' style='width:150px;'>", 
					  html: data.message,  
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

<script>
window.onload = function () {

    var checkFormStatus = "<%=checkUser%>";
    $('#card_holder_first_name').val('<%=firstName%>');
    $('#card_holder_second_name').val('<%=lastName%>');
    

    $.ajax({
		type : 'GET',
		url : '/country/getCountryList',	
		async : true,
		success : function(data) {
			 $.each(data, function(index,element) {
				 
				 $('#countrylist').append('<option value="'+element.countryCode+'">'+element.countryName+'</option>')
				 $('#countrylist').val('<%=from_country%>');
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