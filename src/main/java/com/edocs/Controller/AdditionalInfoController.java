package com.edocs.Controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.edocs.Model.AdditionalInfoModel;
import com.edocs.Service.AdditionalInfoService;

@RestController
@RequestMapping("/addInfo")
public class AdditionalInfoController {
	
	@Autowired
	private AdditionalInfoService additionalInfoService;
	
	@PostMapping("/saveAddtionalInfo")
	public HashMap<Object, Object> saveAdditionalInfo(@RequestBody AdditionalInfoModel model){
		
		return additionalInfoService.saveAdditionalInfo(model);
	}
	
}
