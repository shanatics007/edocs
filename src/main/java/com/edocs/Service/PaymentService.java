package com.edocs.Service;

import java.util.HashMap;

import com.edocs.Model.PaymentModel;

public interface PaymentService {

	public HashMap<String, Object> savePaymentDetails(PaymentModel model);
	
	public PaymentModel getPaymentByApplicationId(int applicationId);
}
