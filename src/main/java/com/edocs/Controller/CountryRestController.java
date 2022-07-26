package com.edocs.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.edocs.Model.CountryModel;
import com.edocs.Model.EmploymentStatusModel;
import com.edocs.Model.MaritialStatusModel;
import com.edocs.Model.OccupationModel;
import com.edocs.Model.QualificationModel;
import com.edocs.Model.ReligionModel;
import com.edocs.Model.TransportationTypeModel;
import com.edocs.Repository.EmploymentStatusRepository;
import com.edocs.Repository.MaritialStatusRepository;
import com.edocs.Repository.OccupationRepository;
import com.edocs.Repository.QualificationRepository;
import com.edocs.Repository.ReligionRepository;
import com.edocs.Repository.TransportationTypeRepository;
import com.edocs.Repository.TravelTypeRepository;
import com.edocs.Service.CountryService;

@RestController
@RequestMapping("/country")
public class CountryRestController {

	@Autowired
	private CountryService countryService;
	@Autowired
	private EmploymentStatusRepository employmentStatusRepository;
	@Autowired
	private MaritialStatusRepository maritialStatusRepository;
	@Autowired
	private OccupationRepository occupationRepository;
	@Autowired
	private QualificationRepository qualificationRepository;
	@Autowired
	private ReligionRepository religionRepository;
	@Autowired
	private TransportationTypeRepository transportationTypeRepository;
	
	@GetMapping("/getCountryList")
	public List<CountryModel> getCountryList(){
		
		return countryService.getCountries();
	}
	
	
	@GetMapping("/getCountryVisaPrices")
	public String getCountryPricing(String fromCountry,String toCountry,String travel_purpose) {
		
		return countryService.getCountryPrices(fromCountry, toCountry, travel_purpose);
		
	}
	
	@GetMapping("/getEmploymentStatus")
	public List<EmploymentStatusModel> getEmploymentList(){
		return employmentStatusRepository.findAll();
	}
	
	
	@GetMapping("/getMaritialStatus")
	public List<MaritialStatusModel> getMaritialList(){
		return maritialStatusRepository.findAll();
	}
	
	@GetMapping("/getQualification")
	public List<QualificationModel> getQualificationList(){
		return qualificationRepository.findAll();
	}
	
	@GetMapping("/getOccupation")
	public List<OccupationModel> getOccupationList(){
		return occupationRepository.findAll();
	}
	
	@GetMapping("/getReligion")
	public List<ReligionModel> getReligionList(){
		return religionRepository.findAll();
	}
	
	@GetMapping("/getTransportationType")
	public List<TransportationTypeModel> getTransportationTypeList(){
		return transportationTypeRepository.findAll();
	}
	
	
}
