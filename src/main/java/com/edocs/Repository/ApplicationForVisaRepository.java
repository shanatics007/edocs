package com.edocs.Repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.edocs.Model.ApplicationForVisaModel;

public interface ApplicationForVisaRepository extends JpaRepository<ApplicationForVisaModel, Integer> {
 
	@Query(nativeQuery = true,value = "SELECT * FROM edocs.ed_visa_application where pkid=?1")
	Optional<ApplicationForVisaModel> findByApplicationId(int applId);
	
}
