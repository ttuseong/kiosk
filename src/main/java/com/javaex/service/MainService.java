package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.MainDao;
import com.javaex.vo.StoreVo;

@Service
public class MainService {
	@Autowired
	MainDao mainDao;
	
	public List<StoreVo> selectStoreList(){
		return mainDao.selectStoreList();
	}
}
