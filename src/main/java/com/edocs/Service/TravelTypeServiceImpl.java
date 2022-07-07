package com.edocs.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edocs.Model.TravelTypesModel;
import com.edocs.Repository.TravelTypeRepository;

@Service
public class TravelTypeServiceImpl implements TravelTypeService {

	@Autowired
	private TravelTypeRepository travelTypeRepository;
	@Override
	public List<TravelTypesModel> getTravelTypes(String country) {
		
		return travelTypeRepository.getTravelTypesbyCountry(country);
	}

}
