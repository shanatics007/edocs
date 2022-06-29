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
	
	@RequestMapping("/pakistan")
	public String pakistanVisa() {
		
		return "pakistan";
	}
	
	@RequestMapping("/thailand")
	public String thailandVisa() {
		
		return "thailand";
	}
	
	@RequestMapping("/united-arab-emirates")
	public String uaeVisa() {
		
		return "UAE";
	}
	
	
	@RequestMapping("/india/applicationform")
	public String indiaVisaApplicationForm() {
		
		return "applicationform";
	}
	
	@RequestMapping("/turkey/applicationform")
	public String turkeyVisaApplicationForm() {
		
		return "applicationform";
	}
	@RequestMapping("/pakistan/applicationform")
	public String pakistanVisaApplicationForm() {
		
		return "applicationform";
	}
	
	@RequestMapping("/thailand/applicationform")
	public String thailandVisaApplicationForm() {
		
		return "applicationform";
	}
	
	@RequestMapping("/united-arab-emirates/applicationform")
	public String uaeVisaApplicationForm() {
		
		return "applicationform";
	}
	
	
	
	
	
	

}
