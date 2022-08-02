package com.edocs.Controller;

import java.util.HashMap;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.edocs.Model.ApplicationForVisaModel;
import com.edocs.Repository.ApplicationForVisaRepository;
import com.edocs.Service.ApplicationForVisaService;



@RestController
@RequestMapping("/application")
public class ApplicationforVisaController {
	
	@Autowired
	private ApplicationForVisaService applicationForVisaService;
	
	@Autowired
	private ApplicationForVisaRepository applicationForVisaRepository;
	
	
	@PostMapping("/saveApplication")
	public HashMap<Object, Object> applicationSave(@RequestBody ApplicationForVisaModel model,HttpSession session) {
		HashMap<Object, Object> appVisamodel = applicationForVisaService.registerApplication(model);
		session.setAttribute("formDetails", appVisamodel);
		
		return appVisamodel;
	}
	
	@GetMapping("/getApplicationDetails/{authKey}")
	public ApplicationForVisaModel getApplicationByAuthKey(@PathVariable String authKey) {
		
		return applicationForVisaService.getApplicationByAuth(authKey);
	}
	
	@GetMapping("/getApplicationDetailsById/{applicationId}")
	public ApplicationForVisaModel getApplicationDeatilsByApplicationId(@PathVariable int applicationId) {
		
		return applicationForVisaRepository.getAppDetailsByApplicationId(applicationId);
		
	}
		
	@GetMapping("/getApplicationStatus/{applicationId}/{dateOfBirth}/{surName}")
	public HashMap<Object, Object> getApplicationForStatusCheck(@PathVariable int applicationId, @PathVariable String dateOfBirth, @PathVariable String surName){
		
		return applicationForVisaService.getApplicationForCheckStatus(applicationId, dateOfBirth, surName);
		
	}


}
