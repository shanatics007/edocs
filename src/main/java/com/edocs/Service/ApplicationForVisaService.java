package com.edocs.Service;

import java.util.HashMap;

import com.edocs.Model.ApplicationForVisaModel;

public interface ApplicationForVisaService {
	
	public HashMap<Object, Object> registerApplication(ApplicationForVisaModel model);

	public ApplicationForVisaModel updatePaymentStatus(int applicationId);
}
