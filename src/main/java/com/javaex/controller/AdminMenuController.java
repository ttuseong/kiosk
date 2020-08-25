package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.AdminMenuService;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.MenuVo;

@Controller
@RequestMapping("/admin")
public class AdminMenuController {
	@Autowired
	private AdminMenuService adminMenuService;

	// 카테고리 리스트
	@RequestMapping("/adminMenu")
	public String adminMenu(Model model) {
		
		int storeNo = 1;
		
		List<CategoryVo> cateList = adminMenuService.getCateList(storeNo);
		
		model.addAttribute("cateList", cateList);
		
		return "/admin/adminMenu";
	}

	// 메뉴 리스트
	@ResponseBody
	@RequestMapping("/adminMenuList")
	public List<MenuVo> adminMenuList(@RequestParam("cateNo") int cateNo) {
		
		List<MenuVo> menuList = adminMenuService.getMenuList(cateNo);
		
		return menuList;
	}
	
	// 메뉴 정보
	@ResponseBody
	@RequestMapping("/adminMenuInfo")
	public MenuVo adminMenuInfo(@RequestParam("menuNo") int menuNo) {
		
		MenuVo menuVo = adminMenuService.getMenuInfo(menuNo);
		
		return menuVo;
	}
	
}
