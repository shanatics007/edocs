package com.edocs.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edocs.Model.PaymentModel;
import com.edocs.Repository.PaymentRepository;
@Service
public class PaymentServiceImpl implements PaymentService{

	@Autowired
	private PaymentRepository paymentRepository;
	@Override
	public PaymentModel savePaymentDetails(PaymentModel model) {
		
		return paymentRepository.save(model);
	}

}
