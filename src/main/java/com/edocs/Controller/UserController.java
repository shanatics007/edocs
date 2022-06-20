package com.edocs.Controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.edocs.Model.UserModel;
import com.edocs.Service.UserService;

@RestController
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService userService;
	
	@PostMapping(value = "/signup")
	public HashMap<Object, Object> userSignUp(@RequestBody UserModel user) {
		return userService.userSignUp(user);
	}
	
	
	@PostMapping("/updatepassword")
	public HashMap<String, Object> resetPassword(@RequestBody String jsonStr) {
		
		return userService.resetPassword(jsonStr);
		
	}
	
	@PostMapping("/signin")
	public HashMap<String, Object> customerSignIn(@RequestBody UserModel user) {
		
		return userService.userSignIn(user);
		
	}
	@PostMapping("/forgotpassword")
	public HashMap<String, Object> forgotPassword(@RequestBody String jsonStr) {
		
		return userService.forgotPassword(jsonStr);
		
	}
	

}
