package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.StatisticsDao;

@Service
public class StatisticsService {
	@Autowired
	StatisticsDao statisticsDao;
	
	public void addFailData(String endPoint) {
		statisticsDao.insertFailData(endPoint);
	}
}
