package com.edocs.Controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.edocs.Model.ApplicationForVisaModel;
import com.edocs.Service.ApplicationForVisaService;



@RestController
@RequestMapping("/application")
public class ApplicationforVisaController {
	
	@Autowired
	private ApplicationForVisaService applicationForVisaService;
	
	@PostMapping("/saveApplication")
	public HashMap<Object, Object> applicationSave(@RequestBody ApplicationForVisaModel model) {
		
		return applicationForVisaService.registerApplication(model);
	}

}
