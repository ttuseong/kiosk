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
	
	public List<LotteriaVo> cateNo4setMenu(){
		return lotteriaDao.cateNo4setMenu();
	}
	
	public int setOrSingle(int menuNo) {
		return lotteriaDao.setOrSingle(menuNo);
	}
	
	public List<LotteriaVo>selectMenu(int menuNo){
		return lotteriaDao.selectMenu(menuNo);
	}
	
	public List<LotteriaVo> dessertList(){
		return lotteriaDao.dessertList();
	}
	
	public List<LotteriaVo> drinkList(){
		return lotteriaDao.drinkList();
	}
	
	public int menuCategoryNo(int menuNo) {
		return lotteriaDao.menuCategoryNo(menuNo);
	}
	
	public int categoryMenuCount(int categoryNo) {
		if(categoryNo != 4) {
			return lotteriaDao.categoryMenuCount(categoryNo);
		}else {
			return lotteriaDao.category4MenuCount(categoryNo);
		}
	}
	
	public List<LotteriaToppingVo> toppingList(int menuNo){
		return lotteriaDao.toppingList(menuNo);
	}

}
