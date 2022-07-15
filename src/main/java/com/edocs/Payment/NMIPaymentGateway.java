package com.edocs.Payment;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.StringTokenizer;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;

import org.w3c.dom.CharacterData;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
public class NMIPaymentGateway {

	protected String server;
	protected String port;
	protected String path;
	protected String username;
	protected String password;

	public NMIPaymentGateway(String user, String pass) {

		server = "secure.nmi.com";
		port = "443";
		path = "https://secure.nmi.com/api/transact.php";
		username = user;
		password = pass;

	}

	public PaymentDTO doAuth(PaymentDTO paymentInfo)
			throws Exception {
		
		String total=paymentInfo.getAmount();
		String card_num=paymentInfo.getCardNumber();
		String ccid = paymentInfo.getCcid();
		String card_expire=paymentInfo.getMonth() +"/"+ paymentInfo.getYear();
		String card_holder=paymentInfo.getName(); 
		String billing_street=paymentInfo.getStreet();
		String billing_city=paymentInfo.getCity();
		String billing_state=paymentInfo.getState();
		String billing_zip=paymentInfo.getZip();
		String ccECI = paymentInfo.getCcECI();
		String ccCAVV = paymentInfo.getCcCAVV();
		String ccXId = paymentInfo.getCcXID();
		String paresStatus = paymentInfo.getParesStatus();
		String acsTransId = paymentInfo.getAcsTransId();
		String dsTransId = paymentInfo.getDsTransId();
		String protocolVersion = paymentInfo.getProtocolVersion();		
		String billing_country= paymentInfo.getBillingCountry();
		int eci = Integer.parseInt(ccECI.equals("")?"0":ccECI);				
		System.out.println("eci: " + eci);		
		
		
		double amount = Double.parseDouble(total);
		
		HashMap result = new HashMap();
		HashMap request = new HashMap();
		String transactionId = "";

		DecimalFormat form = new DecimalFormat("#.00");

		request.put("amount", form.format(amount));
		
		request.put("type", "auth"); 
		
		request.put("ccnumber", card_num);
		request.put("ccexp", card_expire);
		request.put("cvv", ccid);
		
		
		request.put("orderid", paymentInfo.getInvoice());
		request.put("orderdescription", "EVISA APPLICATION");		
		request.put("firstname", card_holder);
		request.put("lastname", "");
		request.put("address1", billing_street);
		request.put("city", billing_city);
		request.put("state", billing_state);
		request.put("zip", billing_zip);
		request.put("country", billing_country);
		
		request.put("cavv", ccCAVV);
		request.put("eci", ""+  eci);
		request.put("xid", ccXId);
		//for 3DS2.0 
		request.put("three_ds_version", protocolVersion);
		request.put("directory_server_id", dsTransId);		
		System.out.println("D: cavv: " + ccCAVV + " xid: "+ ccXId + " paresStatus: "+ paresStatus + " acsTransId " + acsTransId + " dsTransId " + dsTransId + " protocolVersion " + protocolVersion);
		
		
		if(ccXId.equals("") && dsTransId.equals("")){
			request.put("cardholder_auth", "");
		}else if(paresStatus.equalsIgnoreCase("A")){
			request.put("cardholder_auth", "attempted");
		}else if (paresStatus.equalsIgnoreCase("Y")){
			request.put("cardholder_auth", "verified");
		}else if(ccCAVV.equals("")){
			request.put("cardholder_auth", "attempted");
		}else{
			request.put("cardholder_auth", "verified");
		}
		

		String data_out = prepareRequest(request);
		System.out.println("data_out " + data_out);
		
		String error = "";
		String data_in = "";

		boolean success = true;
		try {

			HashMap retval = postForm(data_out,paymentInfo.getInvoice());
			data_in = (String) retval.get("response");
			transactionId = (String)retval.get("transactionid");
			paymentInfo.setPaymentTransactionID(transactionId);
			paymentInfo.setAuthorizationCode((String)retval.get("authcode"));
			paymentInfo.setAvsResponse((String)retval.get("avsresponse"));
			paymentInfo.setTransactionResponse(data_in);
			 
		} catch (IOException e) {
			success = false;
			error = "Connect error, " + e.getMessage();
		} catch (Exception e) {
			paymentInfo.setTransactionResponse(e.getMessage());
			success = false;
			error = e.getMessage();
		}
		if (!success) {
			paymentInfo.setErrMsg(error); 
		}
		
		return paymentInfo;
	}


	// Utility Functions

	public String prepareRequest(HashMap request) {

		if (request.size() == 0) {
			return "";
		}

		request.put("username", username);
		request.put("password", password);

		Set s = request.keySet();
		Iterator i = s.iterator();
		Object key = i.next();
		StringBuffer buffer = new StringBuffer();

		buffer.append(key).append("=")
				.append(URLEncoder.encode((String) request.get(key)));

		while (i.hasNext()) {
			key = i.next();
			buffer.append("&").append(key).append("=")
					.append(URLEncoder.encode((String) request.get(key)));
		}

		return buffer.toString();

	}

	protected HashMap postForm(String data, String orderID) throws Exception {

		HashMap result = new HashMap();

		HttpURLConnection postConn;

		HostnameVerifier hv = new HostnameVerifier() {
			public boolean verify(String urlHostName, SSLSession session) {
				return true;
			}
		};

		HttpsURLConnection.setDefaultHostnameVerifier(hv);

		URL post = new URL("https", server, Integer.parseInt(port), path);
		postConn = (HttpURLConnection) post.openConnection();

		postConn.setRequestMethod("POST");
		postConn.setDoOutput(true);

		PrintWriter out = new PrintWriter(postConn.getOutputStream());
		out.print(data);
		out.close();

		BufferedReader in = new BufferedReader(new InputStreamReader(
				postConn.getInputStream()));

		String inputLine;
		StringBuffer buffer = new StringBuffer();
		while ((inputLine = in.readLine()) != null) {
			buffer.append(inputLine);
		}
		in.close();

		String response = buffer.toString();

		System.out.println("response: "+ response);
		result.put("response", response);
		 
		// Parse Result
		StringTokenizer st = new StringTokenizer(response, "&");
		while (st.hasMoreTokens()) {
			String varString = st.nextToken();
			StringTokenizer varSt = new StringTokenizer(varString, "=");
			if (varSt.countTokens() > 2 || varSt.countTokens() < 1) {
				throw new Exception("Bad variable from processor center: "
						+ varString);
			}
			if (varSt.countTokens() == 1) {
				result.put(varSt.nextToken(), "");
			} else {
				result.put(varSt.nextToken(), varSt.nextToken());
			}
		}

		if (result.get("response") == "") {
			throw new Exception("Bad response from processor center" + response);
		}

		if (!result.get("response").toString().equals("1")) {
			throw new Exception(result.get("responsetext").toString());
		}

		return result;
	}

	 

	public static String getCharacterDataFromElement(Element e) {
	    Node child = e.getFirstChild();
	    if (child instanceof CharacterData) {
	       CharacterData cd = (CharacterData) child;
	       return cd.getData();
	    }
	    return "?";
	  }
	
	
}
