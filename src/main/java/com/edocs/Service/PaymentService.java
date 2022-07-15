package com.edocs.Service;

import java.util.HashMap;

import com.edocs.Model.PaymentModel;

public interface PaymentService {

	public HashMap<Object, Object> savePaymentDetails(PaymentModel model);
}
