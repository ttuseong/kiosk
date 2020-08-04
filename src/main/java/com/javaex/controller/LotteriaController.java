package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/lotteria")
public class LotteriaController {
	
	@RequestMapping("/order")
	public String order() {
		return "/lotteria/order";
	}

}
