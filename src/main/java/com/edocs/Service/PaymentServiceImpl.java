package com.edocs.Service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edocs.Model.PaymentModel;
import com.edocs.Payment.NMIPaymentGateway;
import com.edocs.Payment.PaymentDTO;
import com.edocs.Repository.ApplicationForVisaRepository;
import com.edocs.Repository.PaymentRepository;

@Service
public class PaymentServiceImpl implements PaymentService {

	@Autowired
	private PaymentRepository paymentRepository;
	@Autowired
	private ApplicationForVisaRepository applicationForVisaRepository;

	@Override
	public HashMap<String, Object> savePaymentDetails(PaymentModel model) {
		HashMap<String, Object> response = new HashMap<String, Object>();
			
		try {
			
			PaymentDTO paymentInfo = new PaymentDTO();
			paymentInfo.setName(model.getFirstName() + " " + model.getLastName());
			paymentInfo.setAmount(model.getPrice());
			paymentInfo.setStreet(model.getBillingAddress());
			paymentInfo.setCity(model.getBillingCity());
			paymentInfo.setState(model.getBillingState());
			paymentInfo.setCardNumber(model.getCardNumber());
			paymentInfo.setMonth(model.getMonth());
			paymentInfo.setYear(model.getYear());
			paymentInfo.setInvoice(model.getInvoice());
			paymentInfo.setZip(model.getBillingZipcode());
			paymentInfo.setBillingCountry(model.getBillingCountry());
			NMIPaymentGateway paymentGateway = new NMIPaymentGateway("madcap149", "MickMouse2021##");
			paymentInfo = paymentGateway.doAuth(paymentInfo);
			if(paymentInfo.getPaymentTransactionID() != "") {
				model.setPaymentId(paymentInfo.getPaymentTransactionID());
				model.setPaymentStatus(true);
				response.put("data", paymentRepository.save(model));
				applicationForVisaRepository.updatePaymentstatus(model.getApplicationId());
				applicationForVisaRepository.updateApplicationstatus(model.getApplicationId());
				response.put("status", true);
		}else {
				response.put("message", paymentInfo.getErrMsg());
				response.put("status", false);
			}
		
		}catch (Exception e) {
			e.printStackTrace();
			
		}
	
		return response;
	}

	@Override
	public PaymentModel getPaymentByApplicationId(int applicationId) {
		
		return paymentRepository.getPaymnetByApplicationId(applicationId);
	}

}
