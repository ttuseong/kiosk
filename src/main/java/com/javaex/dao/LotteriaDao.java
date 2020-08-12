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

	public int firstCategoryNo() {
		return sqlSession.selectOne("lotteria.firstCategoryNo");
	}
	
	public List<LotteriaVo> list(int categoryNo){
		return sqlSession.selectList("lotteria.list", categoryNo);
	}
	
}
