package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

	// 메뉴정
	@RequestMapping("/menuInfo")
	public String main() {
		return "/admin/menuInfo";
	}
}
