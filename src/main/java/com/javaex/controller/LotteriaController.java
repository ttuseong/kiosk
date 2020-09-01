package com.javaex.controller;

import java.util.List;

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
	public String order(Model model, @RequestParam(value="categoryNo", required=false, defaultValue = "4") int categoryNo,
									 @RequestParam(value="pg", required=false, defaultValue = "1") int pg) {
		
		/*카테고리 리스트*/
		model.addAttribute("categoryList", lotteriaService.categoryList());
		
		/*메뉴리스트*/
		model.addAttribute("menuListAndPg", lotteriaService.menuList(categoryNo,pg));
		
		/*모달창 데이터리스트*/
		model.addAttribute("dessertMenu",lotteriaService.dessertList());
		model.addAttribute("drinkMenu", lotteriaService.drinkList());
		
		return "/lotteria/order";
	}

	@RequestMapping("/orderList")
	public String orderList() {
		return "/lotteria/orderList";
	}
	
}
