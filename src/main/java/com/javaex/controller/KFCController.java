package com.javaex.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.KFCService;
import com.javaex.vo.KFCMenuVo;
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
	
	@ResponseBody
	@RequestMapping("/selectMenu")
	public KFCMenuVo selectMenu(@RequestParam("menuNo") int menuNo) {
		System.out.println(menuNo);
		
		return kfcService.selectMenu(menuNo);
	}
}
