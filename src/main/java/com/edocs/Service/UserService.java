package com.edocs.Service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.edocs.Model.ApplicationForVisaModel;
import com.edocs.Model.UserModel;


public interface UserService {

	HashMap<Object, Object> userSignUp(UserModel model);

	HashMap<String, Object> userSignIn(UserModel user);

	HashMap<String, Object> forgotPassword(String jsonStr);

	HashMap<String, Object> resetPassword(String jsonStr);
	
	List<ApplicationForVisaModel> getUnpaideApplication(String email);

	List<ApplicationForVisaModel> getPaidApplication(String email);
	
	UserModel updateUserFullName(UserModel model, long userId);
	
	UserModel updateUserPassword(UserModel model,long userId,String newPassword);

	List<ApplicationForVisaModel> getApplicationByEmail(String email);

}
