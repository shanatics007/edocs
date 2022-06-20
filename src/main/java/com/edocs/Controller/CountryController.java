package com.edocs.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/en")
public class CountryController {
	
	@RequestMapping("/india")
	public String indiaEvisa() {
		
		return "india";
	}
	
	@RequestMapping("/turkey")
	public String turkeyEvisa() {
		
		return "turkey";
	}
	
	@RequestMapping("/india/applicationform")
	public String indiaVisaApplicationForm() {
		
		return "applicationform";
	}
	
	@RequestMapping("/turkey/applicationform")
	public String turkeyVisaApplicationForm() {
		
		return "applicationform";
	}
	
	@RequestMapping("/applicationform123")
	public String testVisaApplicationForm() {
		
		return "applicationForm123";
	}
	

}
