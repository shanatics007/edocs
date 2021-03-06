package com.edocs.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public String home() {
		return "index";
	}
	@RequestMapping("/en")
	public String Country() {
		return "index";
	}
	
	
	@RequestMapping("/login")
	public String login() {
		
		return "login";
	}
	
	
	@RequestMapping("/register")
	public String signUp() {
		
		return "register";
	}
	
	
	@RequestMapping("/register/{country}")
	public String FromApplicationsignUp(@PathVariable String country) {
		
		return "register";
	}
	
	@RequestMapping(value = "/resetpassword/{key}",method = RequestMethod.GET)
	public String resetPassword(@PathVariable String key) {
		
		return "resetPassword";
	}
	
	@RequestMapping("/payment")
	public String securepayment(@RequestParam(name = "hash",required = true) String authkay) {
		
		return "secure-payment";
		
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request,HttpSession session) {
		session  = request.getSession(false);
		if(session!=null)
			session.invalidate();
		
		
		return "index";
		
	}
	
	
}
