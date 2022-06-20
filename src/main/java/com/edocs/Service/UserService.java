package com.edocs.Service;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import com.edocs.Model.UserModel;


public interface UserService {

	HashMap<Object, Object> userSignUp(UserModel model);

	HashMap<String, Object> userSignIn(UserModel user);

	HashMap<String, Object> forgotPassword(String jsonStr);

	HashMap<String, Object> resetPassword(String jsonStr);

	

}
