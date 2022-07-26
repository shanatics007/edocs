package com.edocs.Controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/en")
public class CountryController {
	
	@RequestMapping("/en")
	public String home() {
		
		return "india";
	}
	
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
	
	
	
	@RequestMapping("/why-edocs-travel")
	public String whyEdocsTravel() {
		
		return "whyEvisa";
		
	}
	@RequestMapping("/contact")
	public String contact() {
		
		return "contact";
		
	}
	
	@RequestMapping("/privacy-policy")
	public String privacyPolicy() {
		
		return "privacyandpolicy";
		
	}
	
	@RequestMapping("/passenger-locator-form")
	public String passengerLocatorForms() {
		
		return "passengerLocatorForm";
		
	}
	
	@RequestMapping("/travel-entry-requirements")
	public String travelentryrequirements() {
		
		return "checkEntryRequirement";
		
	}

	@RequestMapping("/terms-of-service")
	public String termsandcondition() {
		
		return "termsandcondition";
		
	}

	@RequestMapping("/account")
	public String userAccount() {
		return "userAccount";
	}
	
	@RequestMapping("/confirmation/{applicationId}")
	public String confirmation(@PathVariable int applicationId) {
		return "confirmation";
	}
	
	@RequestMapping("/view")
	public String viewApplications(@RequestParam(name = "hash",required = true) String authkay) {
		return "viewApplications";
	}
	
	@RequestMapping("/check-status")
	public String checkStatus() {
		return "checkStatus";
	}
	
	
	@RequestMapping("/additional-information/{authKey}")
	public String additionalInfo(@PathVariable String authKey) {
		return "additionalInformationForm";
	}
	
	@RequestMapping("/upload-document")
	public String uploadDocument(@RequestParam(name = "hash",required = true) String authKey) {
		return "uploadDocument";
	}
	
	

}
