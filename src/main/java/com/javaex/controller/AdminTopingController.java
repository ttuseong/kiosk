package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.AdminToppingService;
import com.javaex.vo.ToppingVo;

@Controller
@RequestMapping("/admin")
public class AdminTopingController {
	
	@Autowired
	AdminToppingService adminToppingService;
	
	// 토핑 리스트
	@RequestMapping("/adminToping")
	public String adminTopping(Model model) {
		System.out.println("토핑 리스트 컨트롤러");
			
		List<ToppingVo> toppingList = adminToppingService.adminToppingList();
			
		model.addAttribute("toppingList", toppingList);
			
		return "/admin/adminToping";
	}
	
	//토핑 추가하기 --확인버튼을 누르면 토핑 추가, 파일첨부
	@ResponseBody
	@RequestMapping("/adminTopingAdd")
	public ToppingVo adminTopingAdd(@RequestParam("toppingName") String toppingName, @RequestParam("toppingPrice") int toppingPrice,
			@RequestParam("file") MultipartFile file) { //이미지는file로 들어가니까 안써줘도돼!
		System.out.println("토핑추가하기 컨트롤러");
		System.out.println(file.getOriginalFilename()); 
		//추가할때 한줄 읽어오기
		ToppingVo toVo= adminToppingService.adminToppingAdd(toppingName, toppingPrice, file);
		System.out.println("토핑추가하기 넘어왔다");
		
		return toVo;
	}
		
}
