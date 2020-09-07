package com.javaex.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.AdminMenuDao;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.MenuVo;
import com.javaex.vo.UnitModalVo;

@Service
public class AdminMenuService {
	@Autowired
	private AdminMenuDao adminMenuDao;

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
	
	// Service 메뉴 추가
	public int addMenu(MenuVo menuVo) {
		
		return adminMenuDao.menuInsert(menuVo);
	}
	
	// Service 메뉴 수정
	public MenuVo menuUpdate(MenuVo menuVo) {
		
		adminMenuDao.menuUpdate(menuVo); // 메뉴 업데이트
		
		// 업데이트 한 메뉴 정보 담기
		MenuVo updateMenuInfo = adminMenuDao.getMenuInfo(menuVo.getMenuNo());
		
		return updateMenuInfo;
	}
	
	// Service 메뉴 삭제
	public int delMenu(int menuNo) {
		
		return adminMenuDao.delMenu(menuNo);
	}
	
	// Service 단위 모달 - 모든 단위 정보 가져오기
	public List<UnitModalVo> getUnitList(int storeNo) {
		
		List<UnitModalVo> unitList = adminMenuDao.getUnitList(storeNo);
		
		return unitList;
	}
	
	// Service 단위 모달 - 특정 단위에 속해있는 단위 정보 모두 가져옴
	public List<UnitModalVo> adminUnitInfoList(int unitNo) {
		
		return adminMenuDao.selectByUnitNo(unitNo);
	}

	// Service 단위 모달 - 단위 생성
	public int unitInsert(int storeNo, String unitName) {
		
		return adminMenuDao.unitInsert(storeNo, unitName);
	}

	// Service 단위 모달 - 단위의 구성품목 삽입
	public int unitComponentInsert(int menuNo, String unitNo) {

		return adminMenuDao.unitComponentInsert(menuNo, unitNo);
	}

	// Service 단위 모달 - 단위의 구성 품목 수정
	public int updateUnit(String setMenuName, int menuNo, String unitNo) {
		
		return adminMenuDao.updateUnit(setMenuName, menuNo, unitNo);
	}

	// Service 단위 모달 - 단위 삭제
	public int delUnit(int unitNo) {
		
		return adminMenuDao.delUnit(unitNo);
	}
}
