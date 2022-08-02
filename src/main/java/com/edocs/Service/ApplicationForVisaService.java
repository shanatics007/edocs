package com.edocs.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Optional;

import com.edocs.Model.ApplicationForVisaModel;

public interface ApplicationForVisaService {
	
	public HashMap<Object, Object> registerApplication(ApplicationForVisaModel model);

	public void updatePaymentStatus(int applicationId);
	
	public ApplicationForVisaModel getApplicationByAuth(String authKey);
	
	public List<ApplicationForVisaModel> getApplicationByUserId(long userId);
	
	public HashMap<Object, Object> getApplicationForCheckStatus(int applicationId,String dateOfBirth, String surName);
}
