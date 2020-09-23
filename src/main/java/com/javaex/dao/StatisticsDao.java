package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StatisticsDao {
	@Autowired
	SqlSession sqlSession;
	
	public void insertFailData(String endPoint) {
		System.out.println(endPoint);
		sqlSession.insert("statistics.insertFailData", endPoint);
	}
	
	public void insertServeyData(String levels) {
		sqlSession.insert("statistics.insertServeyData",levels);
	}
}
