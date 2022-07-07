package com.edocs.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edocs.Model.CountryModel;
import com.edocs.Repository.CountryRepository;
@Service
public class CountryServiceImpl implements CountryService {
	
	@Autowired
	private CountryRepository countryRepository;

	@Override
	public List<CountryModel> getCountries() {
		
		return countryRepository.getCountryList();
	}

	@Override
	public String getCountryPrices(String fromCountry, String toCountry, String travel_purpose) {
		
		if(toCountry.equals("india")) {
			return countryRepository.getIndiaCountryPrices(fromCountry, toCountry, travel_purpose);
		}else if(toCountry.equals("turkey")) {
			return countryRepository.getTurkeyCountryPrices(fromCountry, toCountry, travel_purpose);
		}else if(toCountry.equals("pakistan")) {
			return countryRepository.getPakistanCountryPrices(fromCountry, toCountry, travel_purpose);
		}else if(toCountry.equals("united-arab-emirates")) {
			return countryRepository.getUAECountryPrices(fromCountry, toCountry, travel_purpose);
		}else if(toCountry.equals("thailand")) {
			return countryRepository.getThailandCountryPrices(fromCountry, toCountry, travel_purpose);
		}
		
		return "0";
	}

}
