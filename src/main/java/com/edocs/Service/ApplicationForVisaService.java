package com.edocs.Service;

import java.util.HashMap;

import com.edocs.Model.ApplicationForVisaModel;

public interface ApplicationForVisaService {
	
	public HashMap<Object, Object> registerApplication(ApplicationForVisaModel model);

	public void updatePaymentStatus(int applicationId);
	
	public ApplicationForVisaModel getApplicationByAuth(String authKey);
}
