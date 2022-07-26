package com.edocs.Service;

import java.util.HashMap;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edocs.Model.AdditionalInfoModel;
import com.edocs.Repository.AdditionalInfoRepository;
import com.edocs.Repository.ApplicationForVisaRepository;

@Service
public class AdditionalInfoServiceImpl implements AdditionalInfoService{

	@Autowired
	private AdditionalInfoRepository additionalInfoRepository;
	@Autowired
	private ApplicationForVisaRepository applicationForVisaRepository;
	
	@Override
	public HashMap<Object, Object> saveAdditionalInfo(AdditionalInfoModel model) {
		HashMap<Object, Object> response = new HashMap<Object, Object>();
		try {
			Optional<AdditionalInfoModel> checkFormInfo = additionalInfoRepository.getOneByAuthKey(model.getAuthKey());
			if(checkFormInfo.isPresent()) {
				response.put("status", false);
				response.put("Message", "Application already received");
				
			}else {
				if(model.getCheckVisaApplicationStatus().equals("WithoutDocument")) {
					response.put("data", additionalInfoRepository.save(model));
					applicationForVisaRepository.updateApplicationstatus("Missing documents",model.getApplicationVisaId());
					
					response.put("Message", "Apllication received succesfully");
					response.put("status", true);
				}else {
					
					response.put("data", additionalInfoRepository.save(model));
					applicationForVisaRepository.updateApplicationstatus("Application Received",model.getApplicationVisaId());
					response.put("Message", "Apllication received succesfully");
					response.put("status", true);
				}
				
				
			}
			
		} catch (Exception e) {
		
		}
		
		
		
		return response;
	}

	

}
