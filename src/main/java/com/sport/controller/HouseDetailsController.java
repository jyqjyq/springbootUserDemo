package com.sport.controller;

import com.sport.entity.Sport;
import com.sport.service.ISportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;



@Controller
public class HouseDetailsController {
	
	@Autowired
	private ISportService service;
	
	@RequestMapping("/toDetailsPage")
	public String toDetailsPage(int id,HttpServletRequest request) {
		Sport sportDetails = service.findSportDetailsById(id);
		request.getSession().setAttribute("Details", sportDetails);
		return "sportdetails";
	}
}
