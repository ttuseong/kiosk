package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.StatsVo;

@Repository
public class AdminStatsDao {
	@Autowired
	SqlSession sqlSession;
	
	public List<StatsVo> selectFailDataList() {
		return sqlSession.selectList("statistics.selectDataList");
	}
	
	public List<StatsVo> selectStoreRankList(){
		return sqlSession.selectList("statistics.selectStoreRankList");
	}
	
	public List<Integer> selectYearList(){
		return sqlSession.selectList("statistics.selectYearList");
	}
	
	public List<StatsVo> selectMonthlySuccessRate(int year){
		return sqlSession.selectList("statistics.selectMonthlySuccessRateList", year);
	}
	
	public float selectSuccessRate() {
		return sqlSession.selectOne("statistics.selectSuccessRate");
	}
}
		