package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.StatisticsService;

@Controller
@RequestMapping("/share")
public class ShareController {
	@Autowired
	StatisticsService statisticsService;
	
	@ResponseBody
	@RequestMapping("/addFailData")
	public int addFailData(@RequestParam(value ="endPoint", required=false) String endPoint, HttpSession httpSession) {
		System.out.println(endPoint);
		statisticsService.addFailData(endPoint, (int)httpSession.getAttribute("no"));
		
		return 1;
	}
	
	@RequestMapping("/addServeyData")
	public String addServeyData(@RequestParam("levels") String levels, HttpSession httpSession) {
		System.out.println(levels);
		statisticsService.addServeyData((int)httpSession.getAttribute("no"), levels);
		return "redirect:/";
	}
}
