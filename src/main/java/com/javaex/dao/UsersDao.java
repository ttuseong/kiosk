package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.UserVo;

@Repository
public class UsersDao {
	
	@Autowired
	SqlSession sqlSession;
	
	public void registerComplete(UserVo userVo) {
		sqlSession.insert("user.registerComplete", userVo);
	}
	
	public int loginCheck(UserVo userVo) {
		return sqlSession.selectOne("user.loginCheck", userVo); 
	}
}
