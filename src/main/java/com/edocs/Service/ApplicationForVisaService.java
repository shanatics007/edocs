package com.edocs.Service;

import java.util.HashMap;
import java.util.List;

import com.edocs.Model.ApplicationForVisaModel;

public interface ApplicationForVisaService {
	
	public HashMap<Object, Object> registerApplication(ApplicationForVisaModel model);

	public void updatePaymentStatus(int applicationId);
	
	public ApplicationForVisaModel getApplicationByAuth(String authKey);
	
	public List<ApplicationForVisaModel> getApplicationByUserId(long userId);
}
