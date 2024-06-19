package com.sport.controller;

import com.sport.entity.Sport;
import com.sport.service.ISportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class AddSportController {

	@Autowired
	private ISportService service;


	@RequestMapping("/addSport")
	public String addSport() {
		return "addSport";
	}
	
	@RequestMapping("/addSportRecord")
	@ResponseBody
	public String addSport(Sport sport) {
		if(sport.getPublisher()==null||"".equals(sport.getPublisher())) {
			sport.setPublisher("管理员");
		}
		int n = service.addNewSport(sport);
		if(n>0) {
			return "OK";
		}
		return "FAIL";
	}
}
