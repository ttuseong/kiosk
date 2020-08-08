package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/lotteria")
public class LotteriaController {
	
	@RequestMapping("/index")
	public String index() {
		return "/lotteria/index";
	}
	
	@RequestMapping("/payment")
	public String payment() {
		return "/lotteria/payment";
	}
	
	@RequestMapping("/order")
	public String order() {
		return "/lotteria/order";
	}

}
