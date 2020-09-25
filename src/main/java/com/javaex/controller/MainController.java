package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaex.service.MainService;
import com.javaex.vo.StoreVo;

@Controller
public class MainController {
	@Autowired
	MainService mainService;
	
	@RequestMapping("/")
	public String main(Model model) {
		System.out.println("test");
		List<StoreVo> list = mainService.selectStoreList();
		
		System.out.println(list.toString());
		
		model.addAttribute("list", list);
		
		return "/main/main";
	}
}
