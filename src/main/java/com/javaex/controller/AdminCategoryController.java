package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminCategoryController {

	// 카테고리
	@RequestMapping("/adminCate")
	public String adminCate() {
		return "/admin/adminCate";
	}
}
