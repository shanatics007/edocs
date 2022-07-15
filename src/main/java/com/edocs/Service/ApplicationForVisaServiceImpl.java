package com.edocs.Service;

import java.util.HashMap;
import java.util.Optional;
import java.util.UUID;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edocs.Model.ApplicationForVisaModel;
import com.edocs.Model.UserModel;
import com.edocs.Repository.ApplicationForVisaRepository;
import com.edocs.Repository.UserRepository;
@Service
public class ApplicationForVisaServiceImpl implements ApplicationForVisaService {

	@Autowired
	private ApplicationForVisaRepository appRepository;
	@Autowired
	private UserRepository userRepos;
	@Autowired
	private ApplicationForVisaRepository applicationRepos;
	
	@Override 
	public HashMap<Object, Object> registerApplication(ApplicationForVisaModel model) {
		
		HashMap<Object, Object> response = new HashMap<Object, Object>();
		try {
			Optional<UserModel> user = userRepos.findOneByUserEmail(model.getEmail());
			if (user.isPresent()) {
				Optional<ApplicationForVisaModel> application = applicationRepos.findByApplicationId(model.getPkid());
				if(application.isPresent()) {
					ApplicationForVisaModel appModel= application.get();
					
					appModel.setConfirmAuthKey(model.getConfirmAuthKey());
					appModel.setContactPhoneNumber(model.getContactPhoneNumber());
					appModel.setDateOfBirth(model.getDateOfBirth());
					appModel.setFirstName(model.getFirstName());
					appModel.setLastName(model.getLastName());
					appModel.setNationality(model.getNationality());
					appModel.setPayment(model.isPayment());
					appModel.setPlannedDateOfTravel(model.getPlannedDateOfTravel());
					appModel.setPrice(model.getPrice());
					appModel.setPurposeForTravel(model.getPurposeForTravel());
					appModel.setTravelAirports(model.getTravelAirports());
					appModel.setUserId(model.getUserId());
					response.put("data", appRepository.save(appModel));
					response.put("message", "Data Updated Sucessfully");
					response.put("status", true);
					response.put("hash", appModel.getConfirmAuthKey());
				}else {
				
				String authKey = UUID.randomUUID().toString();
				model.setConfirmAuthKey(authKey);
				model.setUserId(user.get().getUserId());
				response.put("data", appRepository.save(model));
				
				response.put("message", "Email already registered!");
				response.put("status", true);
				response.put("hash", authKey);
				}
			} else {
			
				response.put("status", false);
				//ConfirmationTokenModel confirmationToken = new ConfirmationTokenModel(userModel.getUserEmail(),MethodsUtility.getCurrentTimestamp());
				//saveConfirmationToken(confirmationToken);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return response;
		
		

	}

	@Override
	public void updatePaymentStatus(int applicationId) {
		
		 applicationRepos.updatePaymentstatus(applicationId);
		 
	}


}
