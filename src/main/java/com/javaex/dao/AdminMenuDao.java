package com.javaex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.CategoryVo;
import com.javaex.vo.MenuVo;
import com.javaex.vo.UnitModalVo;

@Repository
public class AdminMenuDao {
	@Autowired
	private SqlSession sqlSession;
	
	// Dao 드롭다운 - 카테고리 리스트 불러오기
	public List<CategoryVo> getCateList(int storeNo) {
		System.out.println("dao(adminMenu) - 카테고리 리스트 불러오기");
		
		List<CategoryVo> getCateList = sqlSession.selectList("adminMenu.getCateList", storeNo);
		
		return getCateList;
	}
	
	// Dao 드롭다운 - 메뉴 리스트 불러오기
	public List<MenuVo> getMenuList(int categoryNo) {
		System.out.println("dao(adminMenu) - 메뉴 리스트 불러오기");
		
		List<MenuVo> getMenuList = sqlSession.selectList("adminMenu.getMenuList", categoryNo);
		
		return getMenuList;
	}

	// Dao 메뉴 정보 불러오기
	public MenuVo getMenuInfo(int menuNo) {
		System.out.println("dao(adminMenu) - 메뉴 정보 불러오기");

		return sqlSession.selectOne("adminMenu.getMenuInfo", menuNo);
	}
	
	// Dao 메뉴 추가
	public int menuInsert(MenuVo menuVo) {
		System.out.println("dao(adminMenu) - 메뉴 추가");
		
		return sqlSession.insert("adminMenu.menuInsert", menuVo);
	}
	
	// Dao 메뉴 수정
	public int menuUpdate(MenuVo menuVo) {
		System.out.println("dao(adminMenu) - 메뉴 수정");
		
		return sqlSession.update("adminMenu.menuUpdate", menuVo);
	}

	// Dao 메뉴 삭제
	public int delMenu(int menuNo) {
		System.out.println("dao(adminMenu) - 메뉴 삭제");

		return sqlSession.delete("adminMenu.delMenu", menuNo);
	}
	
	// Dao 단위 모달 - 단위 정보 가져오기
	public List<UnitModalVo> getUnitList(int storeNo) {
		System.out.println("dao(adminMenu) - 단위 정보 가져오기");
		
		List<UnitModalVo> unitList = sqlSession.selectList("adminMenu.getUnitList", storeNo);
		
		return unitList;
	}
	
	// Dao 단위 모달 - 특정 단위에 속해있는 단위 정보 모두 가져옴
	public List<UnitModalVo> selectByUnitNo(int unitNo) {
		System.out.println("dao(adminMenu) - 특정 단위에 속해있는 단위 정보 모두 가져옴");

		return sqlSession.selectList("adminMenu.selectByUnitNo", unitNo);
	}
	
	// Dao 단위 모달 - 단위 생성
	public int unitInsert(int storeNo, String unitName) {
		System.out.println("dao(adminMenu) - 단위 생성");
		
		Map<String, Object> unitMap = new HashMap<String, Object>();
		unitMap.put("storeNo", storeNo);
		unitMap.put("unitName", unitName);
		
		return sqlSession.insert("adminMenu.unitInsert", unitMap);
	}
	
	// Dao 단위 모달 - 단위의 구성품목 삽입
	public int unitComponentInsert(int menuNo, String unitNo) {
		System.out.println("dao(adminMenu) - 단위의 구성품목 삽입");
		
		Map<String, Object> unitMap = new HashMap<String, Object>();
		unitMap.put("menuNo", menuNo);
		unitMap.put("unitNo", unitNo);
		
		return sqlSession.insert("adminMenu.unitComponentInsert", unitMap);
	}
	
	// Dao 단위 모달 - 단위의 구성 품목 수정
	public int updateUnit(String setMenuName, int menuNo, String unitNo) {
		System.out.println("dao(adminMenu) - 단위의 구성품목 수정");
		
		Map<String, Object> unitMap = new HashMap<String, Object>();
		unitMap.put("setMenuName", setMenuName);
		unitMap.put("menuNo", menuNo);
		unitMap.put("unitNo", unitNo);
		
		return sqlSession.insert("adminMenu.unitComponentInsert", unitMap);
	}
	
	// Dao 단위 모달 - 단위 삭제
	public int delUnit(int unitNo) {
		System.out.println("dao(adminMenu) - 단위 삭제");

		return sqlSession.selectOne("adminMenu.delUnit", unitNo);
	}
}
