package com.javaex.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.StatsVo;

@Repository
public class AdminStatsDao {
	@Autowired
	SqlSession sqlSession;
	
	public List<StatsVo> selectFailDataList(Map<String, Integer> map) {
		return sqlSession.selectList("statistics.selectDataList", map);
	}
	
	public List<StatsVo> selectStoreRankList(){
		return sqlSession.selectList("statistics.selectStoreRankList");
	}
	
	public List<Integer> selectYearList(Map<String, Integer> map){
		return sqlSession.selectList("statistics.selectYearList", map);
	}
	
	public List<StatsVo> selectMonthlySuccessRate(StatsVo vo){
		return sqlSession.selectList("statistics.selectMonthlySuccessRateList", vo);
	}
	
	public float selectSuccessRate(Map<String, Integer> map) {
		return sqlSession.selectOne("statistics.selectSuccessRate", map);
	}
}
		