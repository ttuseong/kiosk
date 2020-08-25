package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminStatsController {

	// 통계
	@RequestMapping("/adminStats")
	public String adminStats() {
		return "/admin/adminStats";
	}
}
