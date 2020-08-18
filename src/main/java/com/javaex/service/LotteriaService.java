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
	
	public List<LotteriaVo> menuList(){
		return lotteriaDao.menuList();
	}
	
	public List<LotteriaVo> cateNo4setMenu(){
		return lotteriaDao.cateNo4setMenu();
	}
	
	public int setOrSingle(int menuNo) {
		return lotteriaDao.setOrSingle(menuNo);
	}
	
	public List<LotteriaVo>selectMenu(int menuNo){
		return lotteriaDao.selectMenu(menuNo);
	}
	
	public List<LotteriaVo> dessertAndDrink(){
		return lotteriaDao.dessertAndDrink();
	}
}
