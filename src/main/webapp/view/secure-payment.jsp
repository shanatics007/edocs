<!DOCTYPE html>

<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Edocs Travel Payment</title>
    <link rel="stylesheet" href="/css/payment.css">
    <link rel="icon" href="https://secure-payment.evisa.express/assets/images/favicon/favicon_16x16.ico" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="cache-control" content="max-age=0">
    <meta http-equiv="cache-control" content="no-cache, no-store, must-revalidate">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT">
    <meta http-equiv="pragma" content="no-cache">

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
					    <img alt="mastercard" src="/images/paypal.png">
					    <img alt="mastercard" src="/images/american-express.png">
					      
					    </div>
					</li>

				<li class="payment-form" id="ingenico-card-form" style="height: auto; display: list-item;">
			    <form id="ingenico-card-payment-form">
			        <div class="input-group">
			            <label>Credit card number</label>
			            <input type="text" inputmode="numeric" id="card_number" minlength="10" maxlength="19" placeholder="0000 0000 0000 0000" autocomplete="off" required="">
			            <div id="card_number_info" class="input-info"></div>
			        </div>
			        <div class="input-group row card-holders">
			            <div class="col-md-6">
			                <label>First name</label>
			                <input type="text" id="card_holder_first_name" placeholder="required" autocomplete="off" value="test" required="" class="input-success">
			                <div class="input-info card_holder_info"></div>
			            </div>
			            <div class="col-md-6">
			                <label>Surname</label>
			                <input type="text" id="card_holder_second_name" placeholder="required" autocomplete="off" value="user" required="" class="input-success">
			                <div class="input-info card_holder_info"></div>
			            </div>
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
			        <button type="submit" id="payment-form--submit" style="display: none;"></button>
			    </form>
			</li>
         </ul>
         </div>
         <div class="buttons-block buttons-center order-lg-3">
                <button type="button" class="payment-btn big-button button-success" id="pay-btn">
                    <div class="loader"></div>
                    Make a payment                </button>
            </div>
      </div>
   </div>
        
        
<!--         <div class="col-lg-4 order-lg-12 order-sm-1 payment-data-row row">
            <div class="destination-logo logo-evisaexpress">
                <img src="./Evisa.Express Payment_files/india.svg">
            </div>

            <div class="show-details phone ">Details:</div>

            <div class="details-container payment-details order-sm-12 order-lg-1">
                <div class="title desktop-title">
                    Details:
                </div>

                <p translate="no">
                    Application no:<span id="hexId">3CF/3D0/AA2</span>
                </p>
                                <p>
                    Type of visa:<span>Transit</span>
                </p>
                                <p translate="no">
                    Name:<span>test</span>
                </p>
                <p translate="no">
                    Surname:<span>user</span>
                </p>
                <p class="email-address">
                    <span class="email-address__text">Your email:</span>
                    <span class="email-address__content" translate="no">test212@gmail.com</span>
                </p>
                <input type="hidden" id="language" value="en">
                <input type="hidden" id="defaultUsdProvider" value="ingenico-card">
                <input type="hidden" id="defaultEurProvider" value="ingenico-card">
                <input type="hidden" id="defaultCurrency" value="EUR">
                <input type="hidden" id="selectedCurrency" value="EUR">
                <input type="hidden" id="usd_price" data-amount="154.00">
                <input type="hidden" id="eur_price" data-amount="129.00">
                <input type="hidden" id="description" value="3CF/3D0/AA2 India Transit">
                <input type="hidden" id="destination" value="india">
                <input type="hidden" id="hash" value="0b6bc34d3859d220ef142fa2419e54d67abc6203af4283ba7376fe8ba8b39d2d581744b01e">
                <input type="hidden" id="bankTransfer" value="0">
                <input type="hidden" id="returnUrl" value="https://secure-payment.evisa.express/redirect?hash=0b6bc34d3859d220ef142fa2419e54d67abc6203af4283ba7376fe8ba8b39d2d581744b01e">
                <input type="hidden" id="currentDate" value="2022-06-30 07:58:24">
                <input id="backbuttonstate" type="text" value="0" style="display:none;">
            </div>
            <div class="total-cost order-sm-1 order-lg-2 ">
                                <div class="total-cost-line">
                    <span class="total-cost-text">Total cost:</span>
                    <div class="amount">
                        <span id="price-amount" translate="no">129.00</span>
                        <span id="price-currency" translate="no" class="prices-list" style="cursor: pointer;">EUR</span>
                        <div id="price-currency-arrow" class="" style="margin-left: 5px;" translate="no">
                            <svg width="16px" height="16px" viewBox="0 0 16 16" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><title>icon/16/arrow_down</title><desc>Created with Sketch.</desc><defs></defs><g id="icon/16/arrow_down" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><polyline id="Path-2" stroke="#000" stroke-width="2" points="2 5 8 11.0031738 14 5"></polyline></g></svg>
                        </div>
                        <div id="currency-changer" class="hidden">
                            <ul>
                                <li translate="no" data-currency="EUR">EUR</li>
                                <li translate="no" data-currency="USD">USD</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="show-details no-phone">Details:</div>
            </div>
            <div class="buttons-block buttons-center order-lg-3">
                <button type="button" class="payment-btn big-button button-success" id="pay-btn">
                    <div class="loader"></div>
                    Make a payment                </button>
            </div>
            <div class="container errors-box">
                <div class="error-title"></div>
                <div class="error-message"></div>
            </div>

            <div class="small-logo">
                <div class="security-icons">
                    <div class="icon-ssl"></div>
                    <div class="icon-pci"></div>
                </div>
                <div class="logo-evisa-express"></div>
            </div>
        </div> -->
    </div>
</div>
<!-- Yandex.Metrika counter -->
<script type="text/javascript">
    (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
        m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
    (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");
    ym(56069170, "init", {
        clickmap:true,
        trackLinks:true,
        accurateTrackBounce:true,
        webvisor:true
    });
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/56069170" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->

<script>
   function beforeUnload(e) {
        e.preventDefault();
        // Chrome requires returnValue to be set
        e.returnValue = '';
        return "Are you sure?";
    }

    window.addEventListener("beforeunload", beforeUnload);
    var payBtn = document.querySelectorAll('.payment-btn, #CreditCard-payment-form, #payu-payment-form');
    for(var i = 0; i < payBtn.length; i++) {
        payBtn[i].addEventListener('click', function() {
            window.removeEventListener("beforeunload", beforeUnload);
        });
    }

    window.alwaysShowIngenicoCreditCard = true;
</script>
<script type="text/javascript" src="./Evisa.Express Payment_files/payments.min.js"></script><iframe id="_hjSafeContext_48281804" src="./Evisa.Express Payment_files/saved_resource.html" style="display: none !important; width: 1px !important; height: 1px !important; opacity: 0 !important; pointer-events: none !important;"></iframe>
<script>
            var needPartnerProgramConversion = false;
    </script>
<script>
    var translations = {
        'card number invalid': 'Your card number is invalid.',
        'card number empty': 'Your card number cannot be empty.',
        'card holder name empty': 'First name field cannot be empty.',
        'card holder surname empty': 'Surname field cannot be empty.',
        'accepted cards': 'If you want to pay with a card other than MasterCard or Visa select one of below payment methods.',
        'card cvc empty': 'CVC field cannot be empty.',
        'card cvc bad length': 'Your CVC code has bad length.',
        'card expired': 'Your card is expired.',
    };
</script>
<script defer="" src="./Evisa.Express Payment_files/v652eace1692a40cfa3763df669d7439c1639079717194" integrity="sha512-Gi7xpJR8tSkrpF7aordPZQlW2DLtzUlZcumS8dMQjwDHEnw9I7ZLyiOj/6tZStRBGtGgN6ceN6cMH8z7etPGlw==" data-cf-beacon="{&quot;rayId&quot;:&quot;7234ab7ded9385ae&quot;,&quot;token&quot;:&quot;2f9bedaf813e4ae6b7f5e17acd6e8083&quot;,&quot;version&quot;:&quot;2022.6.0&quot;,&quot;si&quot;:100}" crossorigin="anonymous"></script>


<iframe name="_hjRemoteVarsFrame" title="_hjRemoteVarsFrame" id="_hjRemoteVarsFrame" src="./Evisa.Express Payment_files/box-63c3a81830bf549dafe40b369003f751.html" style="display: none !important; width: 1px !important; height: 1px !important; opacity: 0 !important; pointer-events: none !important;"></iframe></body></html>