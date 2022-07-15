package com.edocs.Repository;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;import org.hibernate.type.TrueFalseType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.edocs.Model.ApplicationForVisaModel;

public interface ApplicationForVisaRepository extends JpaRepository<ApplicationForVisaModel, Integer> {
 
	@Query(nativeQuery = true,value = "SELECT * FROM edocs.ed_visa_application where pkid=?1")
	Optional<ApplicationForVisaModel> findByApplicationId(int applId);
	
	@Query(nativeQuery = true,value = "SELECT * FROM edocs.ed_visa_application where is_payment=0 and email=?1")
	List<ApplicationForVisaModel> getUnpaidAppliation(String email);
		
	@Query(nativeQuery = true,value = "SELECT * FROM edocs.ed_visa_application where is_payment=1 and email=?1")
	List<ApplicationForVisaModel> getPaidAppliation(String email);
	
	@Modifying
    @Transactional
	@Query(nativeQuery = true,value = "update edocs.ed_visa_application set is_payment=1 where pkid=?1")
	public void updatePaymentstatus(int applicationId);
	
	@Query(nativeQuery = true,value = "SELECT * FROM edocs.ed_visa_application where auth_key=?1")
	public ApplicationForVisaModel getAppDetails(String authKey);
}
