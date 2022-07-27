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
import com.edocs.Service.AdditionalInfoService;

@RestController
@RequestMapping("/addInfo")
public class AdditionalInfoController {
	
	@Autowired
	private AdditionalInfoService additionalInfoService;
	
	@Value("${document.file.path}")
	private String filePath;
	
	@PostMapping("/saveAddtionalInfo")
	public HashMap<Object, Object> saveAdditionalInfo(@RequestBody AdditionalInfoModel model){
		
		
		return additionalInfoService.saveAdditionalInfo(model);
	}
	

	@PostMapping("/uploadDocument/{userId}")
	public HashMap<Object, Object> uploadDocument(@PathVariable int userId,@RequestParam("files") MultipartFile [] files) throws IllegalStateException, IOException{
		if (files.length!=0) {   
                if(! new File(filePath).exists())
                {
                    new File(filePath).mkdir();
                }
            }
		for (MultipartFile multipartFile : files) {
			
			System.out.println(multipartFile.getOriginalFilename());
			String orgName = multipartFile.getOriginalFilename();
            String filePath1 = filePath +userId+"_"+orgName;
            File dest = new File(filePath1);
            multipartFile.transferTo(dest);
		}
		
		return null;
	}
	
	
	
	
}
