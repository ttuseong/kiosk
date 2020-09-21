package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.UsersDao;
import com.javaex.vo.UserVo;

@Service
public class UsersService {
	
	@Autowired
	UsersDao userDao;
	
	public void register(UserVo userVo){
		userDao.register(userVo);
	}
	public UserVo login(UserVo userVo) {
		return userDao.login(userVo);
	}
	
}
