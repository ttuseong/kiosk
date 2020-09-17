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
	
	public Map<String, Object> menuList(int categoryNo, int pg){
		Paging pgVo = new Paging(8,5,categoryMenuCount(categoryNo), pg, categoryNo);
		Map<String, Object> menuListAndPg = new HashMap<String, Object>();

		menuListAndPg.put("menuList",lotteriaDao.menuList(pgVo));
		menuListAndPg.put("pgVo",pgVo);
		return menuListAndPg;
	}
	
	public int setOrSingle(int menuNo) {
		return lotteriaDao.setOrSingle(menuNo);
	}
	
	public List<LotteriaVo>selectMenu(int menuNo){
		return lotteriaDao.selectMenu(menuNo);
	}
	
	public List<LotteriaVo>selectCommboMenu(int menuNo){
		return lotteriaDao.selectCommboMenu(menuNo);
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
		Paging selectDrink1 = new Paging(16,5,categoryMenuCount(378),pg,378);
		Paging selectDrink2 = new Paging(16,5,categoryMenuCount(379),pg,379);
		Paging ckPackDs = new Paging(16,5,categoryMenuCount(382),pg,382);
		Paging ckPackSs = new Paging(16,5,categoryMenuCount(383),pg,383);
		
		side.put("dessert",lotteriaDao.side(dessertPg));
		side.put("drink",lotteriaDao.side(drinkPg));
		side.put("dessertPg", dessertPg);
		side.put("drinkPg", drinkPg);
		side.put("selectDrink1", lotteriaDao.side(selectDrink1));
		side.put("selectDrink2", lotteriaDao.side(selectDrink2));
		side.put("ckPackDs", lotteriaDao.side(ckPackDs));
		side.put("ckPackSs", lotteriaDao.side(ckPackSs));
		
		return side;
	}

}
