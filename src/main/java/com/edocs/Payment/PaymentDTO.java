package com.edocs.Payment;

public class PaymentDTO {
	private String street = "";
	private String city = "";
	private String state = "";
	private String zip = "";
	private String amount = "";
	private String name = "";
	private String cardType = "";
	private String cardNumber = "";
	private String month = "";
	private String year = "";
	private String paymentId = "";
	private String errMsg = "";
	private String invoice = "";
	private String ccid = "";
	private String radio = "Visa";
	private String ccECI = "";
	private String ccCAVV = "";
	private String authCode = "";
	private String merchantID = "";
	private String authLoginId = "";
	private String authAPIKey = "";
	private String expedite = "0";
	private String check;
	private String newsLetter;
	private String status = "NO";
	private String bonus;
	private String phone1;
	private String phone2;
	private String phone3;
	private String phone4;
	private String phone5;
	private String phone6;
	private String phone7;
	private String phone8;
	private String phone9;
	private String actionStatus;
	private String ipaddress = "";
	private String transactionResponse = "";
	private String isCardinalSecondaryAttempt = "0";
	private String ccXID = "";
	private String authorizationCode = "";
	private String paymentTransactionID = "";
	private String avsResponse = "";
	private String paresStatus = "";
	private String acsTransId = "";
	private String dsTransId = "";
	private String protocolVersion = "";
	private String billingCountry = "";
	
	public String getBillingCountry() {
		return billingCountry;
	}

	public void setBillingCountry(String billingCountry) {
		this.billingCountry = billingCountry;
	}

	public String getAcsTransId() {
		return acsTransId;
	}

	public void setAcsTransId(String acsTransId) {
		this.acsTransId = acsTransId;
	}

	public String getDsTransId() {
		return dsTransId;
	}

	public void setDsTransId(String dsTransId) {
		this.dsTransId = dsTransId;
	}

	public String getProtocolVersion() {
		return protocolVersion;
	}

	public void setProtocolVersion(String protocolVersion) {
		this.protocolVersion = protocolVersion;
	}

	public String getCcXID() {
		return ccXID;
	}

	public void setCcXID(String ccXID) {
		this.ccXID = ccXID;
	}

	public String getAuthorizationCode() {
		return authorizationCode;
	}

	public void setAuthorizationCode(String authorizationCode) {
		this.authorizationCode = authorizationCode;
	}

	public String getPaymentTransactionID() {
		return paymentTransactionID;
	}

	public void setPaymentTransactionID(String paymentTransactionID) {
		this.paymentTransactionID = paymentTransactionID;
	}

	public String getAvsResponse() {
		return avsResponse;
	}

	public void setAvsResponse(String avsResponse) {
		this.avsResponse = avsResponse;
	}

	public String getIsCardinalSecondaryAttempt() {
		return isCardinalSecondaryAttempt;
	}

	public void setIsCardinalSecondaryAttempt(String isCardinalSecondaryAttempt) {
		this.isCardinalSecondaryAttempt = isCardinalSecondaryAttempt;
	}

	public String getParesStatus() {
		return paresStatus;
	}

	public void setParesStatus(String paresStatus) {
		this.paresStatus = paresStatus;
	}

	public String getIpaddress() {
		return ipaddress;
	}

	public void setIpaddress(String ipaddress) {
		this.ipaddress = ipaddress;
	}

	public String getMerchantID() {
		return merchantID;
	}

	public void setMerchantID(String merchantID) {
		this.merchantID = merchantID;
	}

	public String getAuthLoginId() {
		return authLoginId;
	}

	public void setAuthLoginId(String authLoginId) {
		this.authLoginId = authLoginId;
	}

	public String getAuthAPIKey() {
		return authAPIKey;
	}

	public void setAuthAPIKey(String authAPIKey) {
		this.authAPIKey = authAPIKey;
	}

	public String getAuthCode() {
		return authCode;
	}

	public void setAuthCode(String authCode) {
		this.authCode = authCode;
	}

	public String getCcECI() {
		return ccECI;
	}

	public void setCcECI(String ccECI) {
		this.ccECI = ccECI;
	}

	public String getCcCAVV() {
		return ccCAVV;
	}

	public void setCcCAVV(String ccCAVV) {
		this.ccCAVV = ccCAVV;
	}

	public String getRadio() {
		return radio;
	}

	public void setRadio(String radio) {
		this.radio = radio;
	}

	public String getCcid() {
		return ccid;
	}

	public void setCcid(String ccid) {
		this.ccid = ccid;
	}

	public String getExpedite() {
		return expedite;
	}

	public void setExpedite(String expedite) {
		this.expedite = expedite;
	}

	public String getCheck() {
		return check;
	}

	public void setCheck(String check) {
		this.check = check;
	}

	public String getNewsLetter() {
		return newsLetter;
	}

	public void setNewsLetter(String newsLetter) {
		this.newsLetter = newsLetter;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getBonus() {
		return bonus;
	}

	public void setBonus(String bonus) {
		this.bonus = bonus;
	}

	public String getPhone1() {
		return phone1;
	}

	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	public String getPhone3() {
		return phone3;
	}

	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}

	public String getPhone4() {
		return phone4;
	}

	public void setPhone4(String phone4) {
		this.phone4 = phone4;
	}

	public String getPhone5() {
		return phone5;
	}

	public void setPhone5(String phone5) {
		this.phone5 = phone5;
	}

	public String getPhone6() {
		return phone6;
	}

	public void setPhone6(String phone6) {
		this.phone6 = phone6;
	}

	public String getPhone7() {
		return phone7;
	}

	public void setPhone7(String phone7) {
		this.phone7 = phone7;
	}

	public String getPhone8() {
		return phone8;
	}

	public void setPhone8(String phone8) {
		this.phone8 = phone8;
	}

	public String getPhone9() {
		return phone9;
	}

	public void setPhone9(String phone9) {
		this.phone9 = phone9;
	}

	public String getActionStatus() {
		return actionStatus;
	}

	public void setActionStatus(String actionStatus) {
		this.actionStatus = actionStatus;
	}

	public String getInvoice() {
		return invoice;
	}

	public void setInvoice(String invoice) {
		this.invoice = invoice;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCardType() {
		return cardType;
	}

	public void setCardType(String cardType) {
		this.cardType = cardType;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(String paymentId) {
		this.paymentId = paymentId;
	}

	public String getErrMsg() {
		return errMsg;
	}

	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}

	public String getTransactionResponse() {
		return transactionResponse;
	}

	public void setTransactionResponse(String transactionResponse) {
		this.transactionResponse = transactionResponse;
	}

}
