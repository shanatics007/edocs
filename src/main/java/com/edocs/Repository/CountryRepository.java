package com.edocs.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.edocs.Model.CountryModel;

public interface CountryRepository extends JpaRepository<CountryModel, Integer>{
	
	@Query(nativeQuery = true,value = "SELECT * FROM edocs.countries")
	List<CountryModel> getCountryList();
	
	@Query(nativeQuery = true,value = "select price from edocs.india_pricing where country_code=?1 AND to_country=?2 AND travel_purpose=?3")
	public String getIndiaCountryPrices(String fromCountry, String toCountry,String travel_purpose);
	
	@Query(nativeQuery = true,value = "select price from edocs.turkey_pricing where country_code=?1 AND to_country=?2 AND travel_purpose=?3")
	public String getTurkeyCountryPrices(String fromCountry, String toCountry,String travel_purpose);
	
	@Query(nativeQuery = true,value = "select price from edocs.pakistan_pricing where country_code=?1 AND to_country=?2 AND travel_purpose=?3")
	public String getPakistanCountryPrices(String fromCountry, String toCountry,String travel_purpose);
	
	@Query(nativeQuery = true,value = "select price from edocs.united_arab_emirates_pricing where country_code=?1 AND to_country=?2 AND travel_purpose=?3")
	public String getUAECountryPrices(String fromCountry, String toCountry,String travel_purpose);
	
	@Query(nativeQuery = true,value = "select price from edocs.thailand_pricing where country_code=?1 AND to_country=?2 AND travel_purpose=?3")
	public String getThailandCountryPrices(String fromCountry, String toCountry,String travel_purpose);
	
	

}
