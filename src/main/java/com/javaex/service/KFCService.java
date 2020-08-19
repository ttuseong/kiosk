package com.javaex.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.KFCDao;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.MenuVo;
import com.javaex.vo.PageVo;
import com.javaex.vo.ToppingVo;

@Service
public class KFCService {
	@Autowired
	KFCDao kfcDao;
	
	public Map<String, Object> cateList(PageVo pageVo) {
		List<CategoryVo> cateList = kfcDao.selectCateList();
		
		
		if(pageVo.getCategoryNo() == 0) {
			pageVo.setCategoryNo(cateList.get(0).getCategoryNo());
		}
		
		if(pageVo.getCurrentPage() == 0) {
			pageVo.setCurrentPage(1);
		}
		
		pageVo.setStartPoint((pageVo.getCurrentPage()-1)*9+1);
		pageVo.setEndPoint(pageVo.getStartPoint()+8);
		
		List<MenuVo> menuList = menuList(pageVo);
		
		System.out.println(pageVo.toString());
		
		
		int menuMaxCount = (int)Math.ceil((menuCount(pageVo.getCategoryNo())/9.0));
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("currentPage", pageVo.getCurrentPage());
		map.put("menuMaxCount", menuMaxCount);
		map.put("cateList", cateList);
		map.put("menuList", menuList);
		map.put("categoryNo", pageVo.getCategoryNo());
		
		return map;
	}

	public List<MenuVo> menuList(PageVo pageVo) {
		return kfcDao.selectMenuList(pageVo);
	}
	
	public int menuCount(int categoruNo) {
		return kfcDao.selectCountMenu(categoruNo);
	}
	
	public List<MenuVo> selectMenu(int menuNo) {
		List<MenuVo> list = kfcDao.selectSetMenus(menuNo);
		
		list.add(kfcDao.selectMenu(menuNo));

		return list;
	}
	
	public List<ToppingVo> selectToppingList(){
		
		return kfcDao.selectToppingList();
		
	}
	
	public List<ToppingVo> intiTopping() {
		return kfcDao.selectToppingbasicInfo();
	}
	
	public List<MenuVo> changeMenu(int changeNo){
		List<MenuVo> list = null;

		
		switch(changeNo) {
		case 2:
			list = changeSide();
			break;
		case 3:
			list = changeDrinking();
			break;
		case 4:
			list = changeChicken();
			break;
		default:
			System.out.println("KFC_Service changeMenu메소드에 잘못된 입력이 들어왔습니다.");
		}
		
		return list;
	}
	public List<MenuVo> changeSide(){
		List<MenuVo> list = kfcDao.selectAnotherSide();
		
		list.add(selectBasicSide());
		
		return list;
	}
	
	public MenuVo selectBasicSide() {
		return kfcDao.selectBasicSide();
	}
	
	public List<MenuVo> selectAnotherSide(){
		return kfcDao.selectAnotherSide();
	}
	
	public List<MenuVo> changeDrinking(){
		return kfcDao.selectDrinkingList();
	}
	
	public List<MenuVo> changeChicken(){
		return kfcDao.selectChickenList();
	}
	
	public List<MenuVo> recommenDationMenuList() {
		
		return kfcDao.selectRecommenDationMenuList();
	}
}
