package com.edocs.Utilities;

import com.edocs.Model.Mail;


public class MailUtilities {
	
	 public static Mail emailForgotpassword(String authKey, String to){
	        Mail mail = new Mail();
	        mail.setMailFrom("edocs.com");
	        mail.setMailTo(to);
	        mail.setMailSubject("Forgot Password");
	        StringBuilder body = new StringBuilder();
	        body.append("<html>");
	        body.append("<head>");
	        body.append("</head>");
	        body.append("<body>");

	        String template = "<div style='margin:0 10%;font-family: sans-serif;' class='margin-text'>"
	                + "<div><img height=30px src='https://www.edocs.com/assets/img/logo.png'></div>"
	                + "<div style='height: 20px;background-color: #1c3367;margin: 20px 0;align-self: center;'>&nbsp;</div>"
	                + "<div style='padding-left:10%;'>"
	                + "<div style='border-bottom: 2px solid #1c3367;'><span style='font-size: 1rem;color:#000000;padding-bottom: 20px;font-weight: 700;' class='header-text'>Reset Your Password"
	                + "</span></div>"
	                + "<p style='font-size: 1rem;margin-bottom:20px;margin-top: 40px;color:#000000;'>Hi "+to+""
	                + "&#44;</p>"
	                + "<p style='font-size: 1rem;color: #000000;margin-bottom:20px;'>We got a request to reset your password&#46; </p>"
	                + "<p style='font-size: 1rem;color: #000000;margin-bottom:20px;'>Please click the button below to change your password&#46; </p>"
	                + "<p style='font-size: 1rem;color: #000000;margin-bottom:20px;'>Note that this link is valid for 24 hours&#46; After the time limit has expired, you will have to resubmit the request for a password reset&#46; </p>"
	                + "<div style='position: relative;top: 10px;'><a href=\"https://www.edocs.travel/resetpassword/"
	                + authKey + "\" "
	                + "style='width: max-content;color: #ffffff;background: #1c3367;border: 2px solid #0097ef;padding: 10px;border-radius: 4px;font-size: 1.2rem;text-decoration: unset;font-family: sans-serif;' ><span>Change Your Password</span></a></div>"
	                + "</div>"
	                + "<div style='height: 20px;background-color: #1c3367;margin: 20px 0;align-self: center;'>&nbsp;</div>"
	                + "</div>";
	        body.append(template);
	        body.append("<body>");
	        body.append("</html>");
	        mail.setMailContent(body.toString());
	        return mail;
	    }

}
