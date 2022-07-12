package com.edocs.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.edocs.Model.PaymentModel;
import com.edocs.Service.PaymentService;

import io.swagger.v3.oas.annotations.parameters.RequestBody;

@RestController
@RequestMapping("/payment")
public class PaymentController {

	@Autowired
	private PaymentService paymentService;
	
	@PostMapping("/save")
	public PaymentModel savePaymentDetails(@RequestBody PaymentModel model) {
		
		return paymentService.savePaymentDetails(model);
		
	}
}
