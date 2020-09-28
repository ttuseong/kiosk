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
	
	public Map<String, Object> selectDataList(int userNo) {
		Map<String, Integer> noMap = new HashMap<String, Integer>();
		noMap.put("userNo", userNo);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<Integer> yearList = selectYear(noMap);
		map.put("failData", selectFailDataList(noMap));
		map.put("storeRank", selectStoreRank());
		map.put("yearList", yearList);
		map.put("monthlySuccessRate", selectMonthlySuccessRate(yearList.get(0), userNo));
		map.put("successRate", selectSuccessRate(noMap));
		return map;
	}
	
	public List<StatsVo> selectFailDataList(Map<String, Integer> map){
		return adminStatsDao.selectFailDataList(map);
	}
	
	public List<StatsVo> selectStoreRank(){
		return adminStatsDao.selectStoreRankList();
	}
	
	public List<Integer> selectYear(Map<String, Integer> map){
		return adminStatsDao.selectYearList(map);
	}
	
	public List<StatsVo> selectMonthlySuccessRate(int year, int userNo){
		StatsVo statsVo = new StatsVo(userNo, year);
		System.out.println(statsVo.toString());
		return adminStatsDao.selectMonthlySuccessRate(statsVo);
	}
	
	public float selectSuccessRate(Map<String, Integer> map) {
		return adminStatsDao.selectSuccessRate(map);
	}
	
}
