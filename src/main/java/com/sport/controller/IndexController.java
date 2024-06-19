package com.sport.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class IndexController {

	@RequestMapping("/toIndexPage")
	public String toIndexPage(HttpServletRequest request) {
		return "index";
	}


}
