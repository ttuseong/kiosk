package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.UserVo;

@Repository
public class UsersDao {
	
	@Autowired
	SqlSession sqlSession;
	
	public void register(UserVo userVo) {
		sqlSession.insert("user.register", userVo);
	}
	public UserVo login(UserVo userVo) {
		return sqlSession.selectOne("user.login", userVo);
	}
	public int adminCheck(int userNo) {
		return sqlSession.selectOne("user.adminCheck", userNo);
	}
}
