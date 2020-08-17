package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

	// 메뉴정보
	@RequestMapping("/adminMenu")
	public String adminMenu() {
		return "/admin/adminMenu";
	}
	
	// 카테고리
	@RequestMapping("/adminCate")
	public String adminCate() {
		return "/admin/adminCate";
	}

	// 통계
	@RequestMapping("/adminStats")
	public String adminStats() {
		return "/admin/adminStats";
	}
}
