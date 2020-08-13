package com.javaex.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaex.service.KFCService;
import com.javaex.vo.KFCPageVo;

@Controller
@RequestMapping("/KFC")
public class KFCController {
	@Autowired
	KFCService kfcService;
	
	@RequestMapping("/index")
	public String index(Model model, @ModelAttribute KFCPageVo kfcPageVo) {		
		System.out.println(kfcPageVo.toString());
		
		Map<String, Object> map = kfcService.cateList(kfcPageVo);

		model.addAttribute("map", map);
		
		System.out.println(map.toString());
		return "/KFC/index";
	}
	
	
}
