package com.edocs.Service;

import java.util.Date;

import java.util.HashMap;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import com.edocs.Model.Mail;
import com.edocs.Model.ApplicationForVisaModel;
import com.edocs.Model.AuthenticationForgotpass;
import com.edocs.Model.UserModel;
import com.edocs.Repository.ApplicationForVisaRepository;
import com.edocs.Repository.ForgotPasswordRepository;
import com.edocs.Repository.UserRepository;
import com.edocs.Utilities.MailUtilities;
import com.edocs.Utilities.MethodsUtility;


@Service("UserService")
public class UserServiceImpl implements UserService {

	@Autowired
	UserRepository userRepos;

	@Autowired
	ForgotPasswordRepository forgotpassRepos;	


	@Autowired
	MailService mailService;
	
	@Autowired
	private ApplicationForVisaRepository appRepos;
	
	@Override
	public HashMap<Object, Object> userSignUp(UserModel userModel) {

		HashMap<Object, Object> response = new HashMap<Object, Object>();
		try {
			Optional<UserModel> user = userRepos.findOneByUserEmail(userModel.getUserEmail());
			if (user.isPresent()) {
				response.put("message", "Email already registered!");
				response.put("status", true);
				
			} else {
			
				response.put("data", userRepos.save(userModel));
				response.put("status", true);
				
				//ConfirmationTokenModel confirmationToken = new ConfirmationTokenModel(userModel.getUserEmail(),MethodsUtility.getCurrentTimestamp());
				//saveConfirmationToken(confirmationToken);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return response;
	}

	
	@Override
	public HashMap<String, Object> userSignIn(UserModel usermodel) {
		HashMap<String, Object> response = new HashMap();
		   Optional<UserModel> user = userRepos.findOneByUserEmail(usermodel.getUserEmail());

		if(user.isPresent()) {
			
			   if(user.get().getIsEnabled() == true && user.get().getUserPassword().equals(usermodel.getUserPassword())) {
			  
					//String token= new JwtTokenUtil().generateToken(user.get());
					//response.put("token",token);
					response.put("data",user.get());
					response.put("status", true);
				
					//response.put("message", "Password verification failed");
					//response.put("status", false);
				
			   }
			   else {
				   response.put("message", "Please Verify your Email on registered Email");
				   response.put("status", false);
			   }
		
		   }
		   else {
			   response.put("message", "User not found");
			   response.put("status", false);
		   }
		   return response;
	}

	@Override
	public HashMap<String, Object> forgotPassword(String jsonStr) {
		
		    JSONObject requestBody = new JSONObject(jsonStr);
			HashMap<String, Object> result = new HashMap<>();
			String fullName = "";
			String email = "";
			try {
				Optional<UserModel> option = userRepos.findOneByUserEmail(requestBody.getString("userEmail"));
				if (option.isPresent()) {
					long userId = option.get().getUserId();
					//fullName = option.get().getFullName();
					email = option.get().getUserEmail();
					String authKey = UUID.randomUUID().toString();
					Optional<AuthenticationForgotpass> option1 = forgotpassRepos.findByuserId(userId);
					AuthenticationForgotpass authorizedUser = new AuthenticationForgotpass();
					if (option1.isPresent()) {
						authorizedUser = option1.get();
						authorizedUser.setAuthKey(authKey);
						authorizedUser.setIsActive(1);

					} else {
						Date now = new Date();
						authorizedUser.setUserId(userId);
						authorizedUser.setAuthKey(authKey);
						authorizedUser.setCreatedOn(now);
						authorizedUser.setIsActive(1);
					}
					forgotpassRepos.save(authorizedUser);

					Mail mail = MailUtilities.emailForgotpassword(authKey,email);
					mailService.sendEmail(mail);

					result.put("status", "1");
					result.put("message", "Email was successfully sent.");

				} else {
					result.put("status", "0");
					result.put("message", "Email address not found.");
				}

			} catch (Exception e) {
				e.printStackTrace();
				result.put("status", "0");
				result.put("message", "Internal Server Error");
			}

			return result;
	}

	@Override
	public HashMap<String, Object> resetPassword(String jsonstr) {
		HashMap<String, Object> resp = new HashMap<>();
		try {
			JSONObject requestBody = new JSONObject(jsonstr);
			Date yesterday = new Date(System.currentTimeMillis() - 1000L * 60L * 60L * 24L);
			forgotpassRepos.updateAllWithGreter24hrs(yesterday);
			Optional<AuthenticationForgotpass> option = forgotpassRepos.findByauthKey(requestBody.getString("key"),
					yesterday);
			if (option.isPresent()) {
				AuthenticationForgotpass authDetails = option.get();
				
				UserModel usermodeloption = userRepos.findOneByUserId(authDetails.getUserId());
				
				if(usermodeloption!=null) {
					
					usermodeloption.setUserPassword(requestBody.getString("userPassword"));
					usermodeloption.setUserConfirmPassword(requestBody.getString("userPassword"));
					userRepos.save(usermodeloption);
						resp.put("status", "1");
						resp.put("message", "Password updated. Please log in!");
						authDetails.setIsActive(1);
						forgotpassRepos.save(authDetails);
				
					
				}else {
					resp.put("status", "0");
					resp.put("message", "Internal Server Error");
				}
				
			} else {
				resp.put("status", "0");
				resp.put("message", "This link is expired.");
			}
		} catch (Exception e) {
			e.printStackTrace();
			resp.put("status", "0");
			resp.put("message", "Internal Server Error");
		}
		return resp;
	}


	@Override
	public List<ApplicationForVisaModel> getUnpaideApplication(String email) {
		List<ApplicationForVisaModel> appmodelData = appRepos.getUnpaidAppliation(email);
		return appmodelData;
	}


	@Override
	public List<ApplicationForVisaModel> getPaidApplication(String email) {
		List<ApplicationForVisaModel> applicationData = appRepos.getPaidAppliation(email);
		return applicationData;
	}


	@Override
	public UserModel updateUserFullName(UserModel model, long userId) {
		UserModel userModel = userRepos.findOneByUserId(userId);
		
		try {
			userModel.setFullName(model.getFullName());
			userRepos.save(userModel);
		} catch (Exception e) {
			
		}
		return userModel;
	}


	@Override
	public UserModel updateUserPassword(UserModel model, long userId, String newPassword) {
		UserModel userModel = userRepos.findOneByUserId(userId);
		if(userModel.getUserPassword().equals(model.getUserPassword())) {
			userModel.setUserConfirmPassword(newPassword);
			userModel.setUserPassword(newPassword);
			userRepos.save(userModel);
		}
		
		return userModel;
	}


	@Override
	public List<ApplicationForVisaModel> getApplicationByEmail(String email) {
		
		return appRepos.getApplicationsByEmail(email);
	}

}
