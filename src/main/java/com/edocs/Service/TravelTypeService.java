package com.edocs.Service;

import java.util.List;

import com.edocs.Model.TravelTypesModel;

public interface TravelTypeService {
	
	public List<TravelTypesModel> getTravelTypes(String country);

}
