package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.StatisticsDao;
import com.javaex.vo.StatsVo;

@Service
public class StatisticsService {
	@Autowired
	StatisticsDao statisticsDao;
	
	public void addFailData(String endPoint, int no) {
		StatsVo vo = new StatsVo(endPoint, no); 
		statisticsDao.insertFailData(vo);
	}
	
	public void addServeyData(int no, String levels) {
		StatsVo vo = new StatsVo(no, levels); 
		statisticsDao.insertServeyData(vo);
	}
}
