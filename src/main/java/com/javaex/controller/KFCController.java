package com.javaex.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.KFCService;
import com.javaex.vo.MenuVo;
import com.javaex.vo.PageVo;
import com.javaex.vo.ToppingVo;

@Controller
@RequestMapping("/KFC")
public class KFCController {
	@Autowired
	KFCService kfcService;
	
	@RequestMapping("/index")
	public String index(Model model, @ModelAttribute PageVo pageVo) {		
		System.out.println(pageVo.toString());
		
		Map<String, Object> map = kfcService.cateList(pageVo);

		model.addAttribute("map", map);
		
		System.out.println(map.toString());
		return "/KFC/index";
	}
	
	@ResponseBody
	@RequestMapping("/selectMenu")
	public List<MenuVo> selectMenu(@RequestParam("menuNo") int menuNo) {
		System.out.println(menuNo);
		
		return kfcService.selectMenu(menuNo);
	}
	
	@ResponseBody
	@RequestMapping("/selectTopping")
	public List<ToppingVo> selectTopping() {
		return kfcService.selectToppingList();
	}
	
	@ResponseBody
	@RequestMapping("/initTopping")
	public List<ToppingVo> initTopping() {
		return kfcService.intiTopping();
	}
	
//	@ResponseBody
//	@RequestMapping("/sideChange")
//	public String sideChange(@RequestParam("changeNo") int changeNo){
//		System.out.println(changeNo);
//		
//		List<MenuVo> list = kfcService.changeMenu();
//		
//		return "";
//	}
}
