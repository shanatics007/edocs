package com.edocs.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.edocs.Model.TravelTypesModel;
import com.edocs.Service.TravelTypeService;


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
	
	
	
	@RequestMapping("/why-evisa-express")
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

	
	
	@RequestMapping("/testApp")
	public String applicationtest() {
		
		return "applicationForm123";
		
	}
	
	
	

}
