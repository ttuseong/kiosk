package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.KFCDao;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.MenuVo;
import com.javaex.vo.ToppingVo;

@Service
public class KFCService {
	@Autowired
	KFCDao kfcDao;
	
	public Map<String, Object> cateList(int  categoryNo) {
		float maxOnePageMenu = 9;
		List<CategoryVo> cateList = kfcDao.selectCateList();
		
		if(categoryNo == 0) {
			categoryNo = cateList.get(0).getCategoryNo();
		}
		
		List<MenuVo> menuList = menuList(categoryNo);
		
		int menuMaxCount = (int)(Math.ceil((menuCount(categoryNo)/maxOnePageMenu)));
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("cateList", cateList);
		map.put("menuList", menuList);
		map.put("menuMaxCount", menuMaxCount);
		
		return map;
	}
	
	public List<ToppingVo> intiTopping() {
		return kfcDao.selectToppingbasicInfo();
	}

	public List<MenuVo> menuList(int categoryNo) {
		return kfcDao.selectMenuList(categoryNo);
	}
	
	public int menuCount(int categoryNo) {
		return kfcDao.selectCountMenu(categoryNo);
	}
	
	public List<MenuVo> selectMenu(int menuNo) {
		List<MenuVo> list = kfcDao.selectSetMenus(menuNo);
		
		list.add(kfcDao.selectMenu(menuNo));

		return list;
	}
	
	public List<MenuVo> selectMode(String utilName) {
		return kfcDao.selectCountUseCategory(utilName);
	}
	
	public List<MenuVo> changeList(int defaultNo){
		List<MenuVo> list;
		if(defaultNo == 0) {
			list = kfcDao.selectToppingList();
		}
		else {
			list = sideList(defaultNo);
		}
		
		System.out.println(list);
		return list;
	}
	
	public List<MenuVo> sideList(int defaultNo) {
		List<MenuVo> list = sideAnotherList(defaultNo);
		list.add(sideDefaultMenu(defaultNo));
		return list;
	}
	
	public MenuVo sideDefaultMenu(int defaultNo) {
		return kfcDao.selectBasicSide(defaultNo);
	}
	
	public List<MenuVo> sideAnotherList(int defaultNo) {
		
		return kfcDao.selectAnotherSide(defaultNo);
	}
	
	public List<MenuVo> recommenDationMenuList() {
		
		return kfcDao.selectRecommenDationMenuList();
	}
}
