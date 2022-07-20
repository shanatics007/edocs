package com.edocs.Controller;

import java.util.HashMap;
import java.util.List;

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
import com.edocs.Model.UserModel;
import com.edocs.Service.ApplicationForVisaService;
import com.edocs.Service.UserService;

@RestController
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	@Autowired
	private ApplicationForVisaService applicationForVisaService;
	
	@PostMapping(value = "/signup")
	public HashMap<Object, Object> userSignUp(@RequestBody UserModel user) {
		return userService.userSignUp(user);
	}
	
	
	@PostMapping("/updatepassword")
	public HashMap<String, Object> resetPassword(@RequestBody String jsonStr) {
		
		return userService.resetPassword(jsonStr);
		
	}
	
	@PostMapping("/signin")
	public HashMap<String, Object> customerSignIn(@RequestBody UserModel user,HttpSession session) {
		HashMap<String, Object> loginDetails = userService.userSignIn(user);
		session.setAttribute("userLogin", loginDetails);
		UserModel userdetails = (UserModel)loginDetails.get("data");
		
		List<ApplicationForVisaModel> appDetails = applicationForVisaService.getApplicationByUserId(userdetails.getUserId());
		ApplicationForVisaModel model=null;
		if(appDetails.size()>0) {
			model = appDetails.get(appDetails.size()-1);
		}
		session.setAttribute("AppDetailsByUser", model);
		
		return loginDetails;
		
		
	}
	@PostMapping("/forgotpassword")
	public HashMap<String, Object> forgotPassword(@RequestBody String jsonStr) {
		
		return userService.forgotPassword(jsonStr);
		
	}
	
	@GetMapping("/getUnpaidApplication")
	public List<ApplicationForVisaModel> getUnpaidApplication(@RequestParam String email){
		return userService.getUnpaideApplication(email);
		
	}
	
	@GetMapping("/getPaidApplication")
	public List<ApplicationForVisaModel> getPaidApplication(@RequestParam String email){
		return userService.getPaidApplication(email);
		
	}
	@PostMapping("/updateUserFullName")
	public UserModel updateUserFullName(@RequestBody UserModel model,@RequestParam long userId) {
		return userService.updateUserFullName(model, userId);
		
	}
	
	@PostMapping("/updateUserPassword/{userId}/{newPassword}")
	public UserModel updateUserPassword(@RequestBody UserModel model, @PathVariable long userId,@PathVariable String newPassword) {
		return userService.updateUserPassword(model, userId, newPassword);
	}
	
	
	

}
