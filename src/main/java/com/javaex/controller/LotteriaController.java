package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
		List<LotteriaVo> list = lotteriaService.categoryList();
		System.out.println(list.toString());
		model.addAttribute("categoryList", list);
		return "/lotteria/order";
	}

	@RequestMapping("/orderList")
	public String orderList() {
		return "/lotteria/orderList";
	}
}
