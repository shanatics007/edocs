package com.edocs.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.edocs.Model.PaymentModel;

public interface PaymentRepository extends JpaRepository<PaymentModel, Integer>{

	
}
