package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.LotteriaDao;
import com.javaex.vo.LotteriaVo;

@Service
public class LotteriaService {
	
	@Autowired
	LotteriaDao lotteriaDao;
	
	public List<LotteriaVo> categoryList(){
		return lotteriaDao.categoryList();
	}
	
	public List<LotteriaVo> list(LotteriaVo lotteriaVo){
		return lotteriaDao.list(lotteriaVo.getCategoryNo());
	}
	
	public List<LotteriaVo> menuList(){
		return lotteriaDao.menuList();
	}
}
