package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.AdminMenuDao;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.MenuVo;

@Service
public class AdminMenuService {
	@Autowired
	private AdminMenuDao adminMenuDao;

	// Service 카테고리 및 메뉴 정보 불러오기
	public Map<String, Object> getMenuInfo(int storeNo, int categoryNo, int menuNo) {
		System.out.println("service(adminMenu) - 카테고리 및 메뉴 정보 불러오기");
		
		Map<String, Object> adminMenuInfo = new HashMap<String, Object>();
		
		// 드롭다운 - 카테고리 리스트 담기
		List<CategoryVo> cateList = adminMenuDao.getCateList(storeNo);
		System.out.println(cateList.toString());
		adminMenuInfo.put("cateList", cateList);
		
		// 드롭다운 - 메뉴 리스트 담기
		List<MenuVo> menuList = adminMenuDao.getMenuList(categoryNo);

		System.out.println(menuList.toString());
		adminMenuInfo.put("menuList", menuList);
		
		// 특정 메뉴 정보 담기
		MenuVo menuInfo = adminMenuDao.getMenuInfo(menuNo);
		adminMenuInfo.put("menuInfo", menuInfo);
		System.out.println(menuInfo.toString());
		
		return adminMenuInfo;
	}

	// Service 카테고리 리스트
	public List<CategoryVo> getCateList(int storeNo) {
		List<CategoryVo> cateList = adminMenuDao.getCateList(storeNo);
		
		return cateList;
	}

	// Service 메뉴 리스트
	public List<MenuVo> getMenuList(int cateNo) {
		List<MenuVo> menuList = adminMenuDao.getMenuList(cateNo);
		
		return menuList;
	}
	
	// Service 메뉴 정보
	public MenuVo getMenuInfo(int menuNo) {
		MenuVo menuVo = adminMenuDao.getMenuInfo(menuNo);
		
		return menuVo;
	}
	
	// Service 메뉴 삭제
	public int delMenu(int menuNo) {
		
		return adminMenuDao.delMenu(menuNo);
	}
}
