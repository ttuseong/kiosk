package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaex.service.LotteriaService;

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
		
		model.addAttribute("categoryList", lotteriaService.categoryList());
		model.addAttribute("menuList", lotteriaService.menuList());
		model.addAttribute("cateNo4SetMenu", lotteriaService.cateNo4setMenu());
		model.addAttribute("setList",lotteriaService.dessertAndDrink());
		
		return "/lotteria/order";
	}

	@RequestMapping("/orderList")
	public String orderList() {
		return "/lotteria/orderList";
	}
	
}
