package com.javaex.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.AdminStatsService;
import com.javaex.vo.StatsVo;

@Controller
@RequestMapping("/admin")
public class AdminStatsController {
	@Autowired
	AdminStatsService adminStatsService;
	
	// 통계 페이지 호출
	@RequestMapping("/adminStats")
	public String adminStats() {
		return "/admin/adminStats";
	}
	
	//통계 데이터 호출
	@ResponseBody
	@RequestMapping("/selectData")
	public Map<String, Object> selectData() {
	
		return adminStatsService.selectDataList();
	}
	
	@ResponseBody
	@RequestMapping("/clickYear")
	public List<StatsVo> clickYearLi(@RequestParam("year") int year){
		System.out.println(year);
		return adminStatsService.selectMonthlySuccessRate(year);
	}
}
