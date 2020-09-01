package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.LotteriaDao;
import com.javaex.util.Paging;
import com.javaex.vo.LotteriaToppingVo;
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
	
	public int menuCategoryNo(int menuNo) {
		return lotteriaDao.menuCategoryNo(menuNo);
	}
	
	public int categoryMenuCount(int categoryNo) {
		return lotteriaDao.categoryMenuCount(categoryNo);
	}
	
	public List<LotteriaToppingVo> toppingList(int menuNo){
		return lotteriaDao.toppingList(menuNo);
	}
	

	public Map<String, Object> side(int pg){
		Map<String, Object> side = new HashMap<String, Object>();
		
		Paging drinkPg = new Paging(16,5,categoryMenuCount(29), pg, 29);
		
		Paging dessertPg = new Paging(16,5,categoryMenuCount(28), pg, 28);
		
		side.put("dessert",lotteriaDao.dessertList(dessertPg));
		side.put("drink",lotteriaDao.drinkList(drinkPg));
		side.put("dessertPg", dessertPg);
		side.put("drinkPg", drinkPg);
		return side;
	}

}
