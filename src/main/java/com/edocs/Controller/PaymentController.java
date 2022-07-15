package com.edocs.Controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.edocs.Model.PaymentModel;
import com.edocs.Payment.NMIPaymentGateway;
import com.edocs.Payment.PaymentDTO;
import com.edocs.Service.ApplicationForVisaService;
import com.edocs.Service.PaymentService;



@RestController
@RequestMapping("/payment")
public class PaymentController {
	
	@Autowired
	private PaymentService paymentService;
	
	@PostMapping("/makePayment")
	public HashMap<String, Object> savePaymentDetails(@RequestBody PaymentModel model,HttpSession session) {
		
		HashMap<String, Object> paymentDetails = paymentService.savePaymentDetails(model);
		session.setAttribute("paymentDetails", paymentDetails);
		return paymentDetails;
		
	}
}
