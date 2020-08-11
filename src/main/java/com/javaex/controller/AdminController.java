package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

	// 메뉴정보
	@RequestMapping("/menuInfo")
	public String menuInfo() {
		return "/admin/menuInfo";
	}
	
	// 카테고리
	@RequestMapping("/menuCate")
	public String menuCate() {
		return "/admin/menuCate";
	}

	// 통계
	@RequestMapping("/menuStats")
	public String menuStats() {
		return "/admin/menuStats";
	}
}
