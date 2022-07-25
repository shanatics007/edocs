package com.edocs.Service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edocs.Model.AdditionalInfoModel;
import com.edocs.Repository.AdditionalInfoRepository;

@Service
public class AdditionalInfoServiceImpl implements AdditionalInfoService{

	@Autowired
	private AdditionalInfoRepository additionalInfoRepository;
	
	@Override
	public HashMap<Object, Object> saveAdditionalInfo(AdditionalInfoModel model) {
		
		HashMap<Object, Object> response = new HashMap<Object, Object>();
		response.put("data", additionalInfoRepository.save(model));
		
		return null;
	}

	

}
