package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.StatsVo;

@Repository
public class StatisticsDao {
	@Autowired
	SqlSession sqlSession;
	
	public void insertFailData(StatsVo vo) {
		System.out.println(vo);
		sqlSession.insert("statistics.insertFailData", vo);
	}
	
	public void insertServeyData(StatsVo vo) {
		sqlSession.insert("statistics.insertServeyData", vo);
	}
}
