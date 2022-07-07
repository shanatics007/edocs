package com.edocs.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.edocs.Model.TravelTypesModel;
import com.edocs.Service.TravelTypeService;

@RestController
public class TravelTypeController {

	
	@Autowired
	private TravelTypeService travelTypeService;
	
	@GetMapping("/getTravelTypes/{country}")
	public List<TravelTypesModel> getTravelTypeBycountry(@PathVariable String country){
		return travelTypeService.getTravelTypes(country);
		
	
	}
}
