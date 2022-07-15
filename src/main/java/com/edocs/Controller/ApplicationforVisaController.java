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
import com.edocs.Service.ApplicationForVisaService;



@RestController
@RequestMapping("/application")
public class ApplicationforVisaController {
	
	@Autowired
	private ApplicationForVisaService applicationForVisaService;
	
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

}
