package com.javaex.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.LotteriaService;
import com.javaex.vo.LotteriaVo;

@Controller
@RequestMapping("/lotteria")
public class LotteriaController {

	@Autowired
	LotteriaService lotteriaService;
	
	@RequestMapping("/index")
	public String index() {
		return "/lotteria/index";
	}
	
	@RequestMapping("/payment")
	public String payment() {
		return "/lotteria/payment";
	}
	
	@RequestMapping("/order")
	public String order(Model model) {
		List<LotteriaVo> categoryList = lotteriaService.categoryList();
		List<LotteriaVo> menuList=lotteriaService.menuList();
		
		for(LotteriaVo vo: categoryList) {
			System.out.println(vo.toString());
		}
		for(LotteriaVo vo: menuList) {
			System.out.println(vo.toString());
		}
		
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("menuList", menuList);
		return "/lotteria/order";
	}

	@RequestMapping("/orderList")
	public String orderList() {
		return "/lotteria/orderList";
	}
}
