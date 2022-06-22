package com.edocs.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edocs.Model.ApplicationForVisaModel;
import com.edocs.Repository.ApplicationForVisaRepository;
@Service
public class ApplicationForVisaServiceImpl implements ApplicationForVisaService {

	@Autowired
	private ApplicationForVisaRepository appRepository;
	@Override
	public ApplicationForVisaModel registerApplication(ApplicationForVisaModel model) {
		ApplicationForVisaModel applicationModel = appRepository.save(model);
		return applicationModel;
	}

}
