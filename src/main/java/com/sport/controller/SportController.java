package com.sport.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.sport.entity.Sport;
import com.sport.entity.Page;
import com.sport.entity.UserSportData;
import com.sport.entity.Users;
import com.sport.service.ISportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class SportController {
	
	@Autowired
	private ISportService service;



	@RequestMapping("/findAllSport")
	@ResponseBody
	public UserSportData findAllSport(HttpServletRequest request, int page, int limit) {
		Page p = new Page();
		p.setLimit(limit);
		p.setPage((page - 1) * limit);
		List<Sport> list = service.findAllSport(p);
		System.out.println(list);
		UserSportData data = new UserSportData(0, "200", list.size(), list);
		return data;
	}
	
	@RequestMapping("/deleteUserHouse")
	@ResponseBody
	public String deleteUserSport(String hID) {
		int n = service.deleteUserSport(Integer.parseInt(hID));
		if(n>0) {
			return "OK";
		}
		return "FAIL";
	}
	
	@RequestMapping("/updateSport")
	@ResponseBody
	public String updateSport(Sport sport) {
		int n = service.updateSport(sport);
		if(n>0)
			return "OK";
		return "FAIL";
	}
}
