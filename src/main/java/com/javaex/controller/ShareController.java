package com.javaex.controller;

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
	public void addFailData(@RequestParam(value ="endPoint", required=false) String endPoint) {
		System.out.println(endPoint);
		statisticsService.addFailData(endPoint);
	}
	
	@RequestMapping("/addServeyData")
	public String addServeyData(@RequestParam("levels") String levels) {
		System.out.println(levels);
		statisticsService.addServeyData(levels);
		return "redirect:/";
	}
}
