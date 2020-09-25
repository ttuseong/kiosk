package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.StoreVo;

@Repository
public class MainDao {
	@Autowired
	SqlSession sqlSession;
	
	public List<StoreVo> selectStoreList(){
		return sqlSession.selectList("main.selectStoreList");
	}
}
