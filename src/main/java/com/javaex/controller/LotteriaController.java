package com.javaex.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.LotteriaService;

@Controller
@RequestMapping("/lotteria")
public class LotteriaController {

	@Autowired
	LotteriaService lotteriaService;
	
	@RequestMapping("/index")
	public String index(HttpSession httpSession, @RequestParam("no")int no) {
		httpSession.setAttribute("no", no);
		return "/lotteria/index";
	}
	
	@RequestMapping("/payment")
	public String payment() {
		return "/lotteria/payment";
	}
	
	@RequestMapping("/order")
	public String order(Model model, @RequestParam(value="categoryNo", required=false, defaultValue = "4") int categoryNo,
			 						 @RequestParam(value="pg", required=false, defaultValue = "1") int pg) {
		
		model.addAttribute("categoryList", lotteriaService.categoryList());
		model.addAttribute("menuListAndPg", lotteriaService.menuList(categoryNo,pg));
		
		return "/lotteria/order";
	}

	@RequestMapping("/orderList")
	public String orderList(@RequestParam Map map, Model model) {
		model.addAttribute("menuList", map);
		return "/lotteria/orderList";
	}
	
}
