package com.edocs.Repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.edocs.Model.TravelTypesModel;

public interface TravelTypeRepository  extends JpaRepository<TravelTypesModel, Integer>{


	@Query(nativeQuery = true,value = "select * from edocs.travel_types_app_form where country=?1")
	public List<TravelTypesModel> getTravelTypesbyCountry(String country);
}
