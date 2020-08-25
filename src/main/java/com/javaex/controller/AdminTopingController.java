package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminTopingController {
	// 토핑정보
	@RequestMapping("/adminToping")
	public String adminToping() {
		return "/admin/adminToping";
	}
}
