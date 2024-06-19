package com.sport.controller;

import com.sport.entity.Users;
import com.sport.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;


@Controller
public class UserController {
	
	@Autowired
	private IUserService service;

	@RequestMapping("/toUserSystem")
	public String toUserSystemPage() {
		return "customer";
	}
	
	@RequestMapping("/toAllSport")
	public String toAllSport() {
		return "myrental";
	}
	
	@RequestMapping("/welcome")
	public String toWelcomePage() {
		return "welcome";
	}

	@RequestMapping("/updateInfo")
	public String updateInfo() {
		return "updatepwd";
	}

	@RequestMapping("/updateUserPwd")
	@ResponseBody
	public String updateUserPwd(String id, String newPwd, String oldPwd, Integer age, Double weight, Double height, HttpServletRequest req ) {
		Users oldUser = new Users();
		oldUser.setuID(Integer.parseInt(id));
		oldUser.setuPassword(oldPwd);
		Users checkUser = service.checkOldPwd(oldUser);
		if(checkUser!=null) {
			Users newUser = new Users();
			newUser.setuID(Integer.parseInt(id));
			newUser.setuPassword(newPwd);
			newUser.setAge(age);
			newUser.setHeight(height);
			newUser.setWeight(weight);
			int n = service.updateUserPwd(newUser);
			if(n>0) {
				req.getSession().setAttribute("loginUser", newUser);
				return "OK";
			}
		}
		return "FAIL";
	}
}
