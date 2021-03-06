package com.edocs.Controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.edocs.Model.AdditionalInfoModel;
import com.edocs.Repository.ApplicationForVisaRepository;
import com.edocs.Service.AdditionalInfoService;

@RestController
@RequestMapping("/addInfo")
public class AdditionalInfoController {
	
	@Autowired
	private AdditionalInfoService additionalInfoService;
	@Autowired
	private ApplicationForVisaRepository applicationForVisaRepository;
	
	@Value("${document.file.path}")
	private String filePath;
	
	@PostMapping("/saveAddtionalInfo")
	public HashMap<Object, Object> saveAdditionalInfo(@RequestBody AdditionalInfoModel model){
		
		
		return additionalInfoService.saveAdditionalInfo(model);
	}
	

	@PostMapping("/uploadDocument/{userId}")
	public HashMap<Object, Object> uploadDocument(@PathVariable int userId,@PathVariable long applicationId,@RequestParam("files") MultipartFile [] files) throws IllegalStateException, IOException{
		String localfilePath=filePath+userId+'/';
		try {
		if (files.length!=0) {   
                if(! new File(localfilePath).exists())
                {
                    new File(localfilePath).mkdir();
                }
            }
		for (MultipartFile multipartFile : files) {
			
			System.out.println(multipartFile.getOriginalFilename());
			String orgName = multipartFile.getOriginalFilename();
            String filePath1 = localfilePath+ userId+"_"+orgName;
            File dest = new File(filePath1);
            multipartFile.transferTo(dest);
            
		}
		
		}catch (IOException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	@PostMapping("/uploadDocumentfromUserAccount/{userId}/{applicationId}")
	public HashMap<Object, Object> uploadDocumentFromUserAccount(@PathVariable int userId,@PathVariable int applicationId,@RequestParam("files") MultipartFile [] files) throws IllegalStateException, IOException{
		String localfilePath=filePath+userId+'/';
		try {
		if (files.length!=0) {   
                if(! new File(localfilePath).exists())
                {
                    new File(localfilePath).mkdir();
                }
            }
		for (MultipartFile multipartFile : files) {
			
			System.out.println(multipartFile.getOriginalFilename());
			String orgName = multipartFile.getOriginalFilename();
            String filePath1 = localfilePath+ userId+"_"+orgName;
            File dest = new File(filePath1);
            multipartFile.transferTo(dest);
            
            
		}
		
		applicationForVisaRepository.updateApplicationstatus("Application Received",applicationId);
		}catch (IOException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	
	
}
