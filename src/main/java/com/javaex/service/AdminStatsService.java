package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.AdminStatsDao;
import com.javaex.vo.StatsVo;

@Service
public class AdminStatsService {
	@Autowired
	AdminStatsDao adminStatsDao;
	
	public Map<String, Object> selectDataList() {
		Map<String, Object> map = new HashMap<String, Object>();
		List<Integer> yearList = selectYear();
		map.put("failData", selectFailDataList());
		map.put("storeRank", selectStoreRank());
		map.put("yearList", yearList);
		map.put("monthlySuccessRate", selectMonthlySuccessRate(yearList.get(0)));
		map.put("successRate", selectSuccessRate());
		
		return map;
	}
	
	public List<StatsVo> selectFailDataList(){
		return adminStatsDao.selectFailDataList();
	}
	
	public List<StatsVo> selectStoreRank(){
		return adminStatsDao.selectStoreRankList();
	}
	
	public List<Integer> selectYear(){
		return adminStatsDao.selectYearList();
	}
	
	public List<StatsVo> selectMonthlySuccessRate(int year){
		return adminStatsDao.selectMonthlySuccessRate(year);
	}
	
	public float selectSuccessRate() {
		return adminStatsDao.selectSuccessRate();
	}
	
}
