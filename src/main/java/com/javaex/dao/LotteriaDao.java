package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.LotteriaVo;

@Repository
public class LotteriaDao {
	
	@Autowired
	SqlSession sqlSession;
	
	public List<LotteriaVo> categoryList(){
		return sqlSession.selectList("lotteria.categoryList");
	}

	public List<LotteriaVo> menuList(){
		return sqlSession.selectList("lotteria.menuList");
	}
	
	public List<LotteriaVo> cateNo4(){
		return sqlSession.selectList("lotteria.cateNo4");
	}
	
}
