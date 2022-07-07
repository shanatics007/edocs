package com.edocs.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.edocs.Model.CountryModel;
import com.edocs.Service.CountryService;

@RestController
@RequestMapping("/country")
public class CountryRestController {

	@Autowired
	private CountryService countryService;
	
	@GetMapping("/getCountryList")
	public List<CountryModel> getCountryList(){
		
		return countryService.getCountries();
	}
	
	
	@GetMapping("/getCountryVisaPrices")
	public String getCountryPricing(String fromCountry,String toCountry,String travel_purpose) {
		
		return countryService.getCountryPrices(fromCountry, toCountry, travel_purpose);
		
	}
}
