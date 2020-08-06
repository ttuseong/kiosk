package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/KFC")
public class KFCController {
	@RequestMapping("/index")
	public String index() {
		
		return "/KFC/index";
	}
}
