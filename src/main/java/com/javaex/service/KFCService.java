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
	
	public List<CategoryVo> cateList(int no) {
		List<CategoryVo> cateList = kfcDao.selectCateList(no);
	
		return cateList;
	}
	
	public List<ToppingVo> intiTopping() {
		return kfcDao.selectToppingbasicInfo();
	}
	
	public List<MenuVo> initSide(int unitNo){
		return kfcDao.selectDefaultMenuList(unitNo);
	}

	public Map<String, Object> menuList(int categoryNo, int highlight) {
		Map<String, Object>resultMap = new HashMap<String, Object>();
		resultMap.put("highlight", highlight);
		List<MenuVo> list;
		
		if(highlight == 0) {
			list = kfcDao.selectBasicMenuList(categoryNo);
		} else {
			Map<String, Integer>map = new HashMap<String, Integer>();
			map.put("highlight", highlight);
			list = kfcDao.selectHighlightMenuList(map);	
		}
		
		resultMap.put("list", list);
		
		return resultMap;
	}
	
	public List<MenuVo> selectMenu(MenuVo menuVo) {

		List<MenuVo> list = kfcDao.selectMenu(menuVo); 
		
		System.out.println(list.toString());
		
		for(int i = 0; i < list.size(); i++) {
			list.get(i).setComposition(list.get(0).getMenuName());
			if(list.get(i).getUnitNo() != 0) {
				List<String> categoryNameList = kfcDao.selectDefaultCategoryName(list.get(i).getUnitNo());
				System.out.println(categoryNameList.toString() + "+" + categoryNameList.size() + "+" +list.get(i).getUnitNo());
				for(int j = 0; j < categoryNameList.size(); j++) {
					System.out.println(categoryNameList.get(j));
					list.get(i).setComposition(list.get(i).getComposition() + "+" + categoryNameList.get(j)+" 변경");
					System.out.println(list.get(i).getComposition());
				}
			}
		}
		
		return list;
	}
	
	public List<MenuVo> changeList(MenuVo menuVo){
		List<MenuVo> list;
		if(menuVo.getCategoryNo() == 0) {
			list = kfcDao.selectToppingList(menuVo.getMenuNo());
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
