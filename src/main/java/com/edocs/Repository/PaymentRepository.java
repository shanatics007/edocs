package com.edocs.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.edocs.Model.PaymentModel;

public interface PaymentRepository extends JpaRepository<PaymentModel, Integer>{

	@Query(nativeQuery = true,value = "SELECT * FROM edocs.payment_details where application_id=?1")
	public PaymentModel getPaymnetByApplicationId(int applicationId);
}
