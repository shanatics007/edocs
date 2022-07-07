package com.edocs.Service;

import java.util.List;

import com.edocs.Model.CountryModel;

public interface CountryService {
	
	List<CountryModel> getCountries();
	
	
	public String getCountryPrices(String fromCountry,String toCountry,String travel_purpose);

}
