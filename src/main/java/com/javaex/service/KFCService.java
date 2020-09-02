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
	
	public List<CategoryVo> cateList() {
		List<CategoryVo> cateList = kfcDao.selectCateList();
	
		return cateList;
	}
	
	public List<ToppingVo> intiTopping() {
		return kfcDao.selectToppingbasicInfo();
	}
	
	public List<MenuVo> initSide(int unitNo){
		return kfcDao.selectDefaultMenuList(unitNo);
	}

	public List<MenuVo> menuList(int categoryNo) {
		return kfcDao.selectMenuList(categoryNo);
	}
	
	public List<MenuVo> selectMenu(MenuVo menuVo) {

		return kfcDao.selectMenu(menuVo);
	}
	
	public List<MenuVo> changeList(MenuVo menuVo){
		List<MenuVo> list;
		if(menuVo.getCategoryNo() == 0) {
			list = kfcDao.selectToppingList();
		}
		else {
			list = sideList(menuVo);
		}
		
		System.out.println(list);
		return list;
	}
	
	public List<MenuVo> sideList(MenuVo menuVo) {
		List<MenuVo> list = sideAnotherList(menuVo);
		list.add(sideDefaultMenu(menuVo.getMenuNo()));
		return list;
	}
	
	public MenuVo sideDefaultMenu(int menuNo) {
		return kfcDao.selectBasicSide(menuNo);
	}
	
	public List<MenuVo> sideAnotherList(MenuVo menuVo) {
		
		return kfcDao.selectAnotherSide(menuVo);
	}
	
	public List<MenuVo> recommenDationMenuList() {
		
		return kfcDao.selectRecommenDationMenuList();
	}
}
