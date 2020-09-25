package com.javaex.dao;

import java.util.ArrayList;
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
	
	// Dao 프로모션 구성품목(menuNo, cateNo) 가져오기
	public List<Object> getPromotionInfo(int menuNo) {
		System.out.println("dao(adminMenu) - 프로모션 구성품목(menuNo, cateNo) 가져오기");
		
		List<Object> pList =  sqlSession.selectList("adminMenu.getPromotionInfo", menuNo);
		
		return pList;
	}
	
	
	// Dao 연관메뉴 개수 세기 (메뉴 추가 및 삭제에서 연관 메뉴 유무 판단)
	public int getUseMenuCnt(int menuNo) {
		System.out.println("dao(adminMenu) - 연관메뉴 개수 세기");
		
		return sqlSession.selectOne("adminMenu.getUseMenuCnt", menuNo);
	}
	
	// Dao 해당 메뉴를 연관메뉴로 사용중인 메뉴넘버와 이름 받아오기
	public List<MenuVo> getUseMenuInfo(int menuNo) {
		System.out.println("dao(adminMenu) - 해당 메뉴를 연관메뉴로 쓰고 있는 메뉴넘버와 이름 받아오기");
		
		List<MenuVo> useMenuList = sqlSession.selectList("adminMenu.getUseMenuInfo", menuNo);
		
		return useMenuList;
	}
	
	// Dao 메뉴 추가
	public int menuInsert(MenuVo menuVo) {
		System.out.println("dao(adminMenu) - 메뉴 추가");
		System.out.println(menuVo.toString());
		sqlSession.insert("adminMenu.menuInsert", menuVo);
		int getMenuNo = menuVo.getMenuNo();
		
		return getMenuNo;
	}
	
	// Dao 연관 메뉴 추가 
	public int useInsert(int menuNo, int useMenu) {
		System.out.println("dao(adminMenu) - 연관 메뉴 추가");

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("menuNo", useMenu); // 연관 된 메뉴 (ex : 치킨 단품)
		map.put("setNo", menuNo); // 현재 선택 된 메뉴 (ex : 치킨 3조각, 5조각)
		
		return sqlSession.insert("adminMenu.useInsert", map);
	}
	
	// Dao 메뉴 수정
	public int menuUpdate(MenuVo menuVo) {
		System.out.println("dao(adminMenu) - 메뉴 수정");
		
		return sqlSession.update("adminMenu.menuUpdate", menuVo);
	}
	
	public int selectUseDefault(int menuNo) {
		System.out.println("dao(adminMenu) - 디폴트 메뉴 확인");
		return sqlSession.selectOne("adminMenu.selectDefaultCount", menuNo);
	}	

	// Dao 연관 메뉴 수정
	public int useMenuUpdate(int menuNo, int useMenu) {
		System.out.println("dao(adminMenu) - 연관 메뉴 수정");

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("useMenu", useMenu); // 연관 된 메뉴 (ex : 치킨 단품)
		map.put("menuNo", menuNo); // 현재 선택 된 메뉴 (ex : 치킨 3조각, 5조각)
		
		return sqlSession.update("adminMenu.useMenuUpdate", map);
	}

	// Dao 메뉴 삭제
	public int delMenu(int menuNo) {
		System.out.println("dao(adminMenu) - 메뉴 삭제");

		return sqlSession.delete("adminMenu.delMenu", menuNo);
	}
	
	// Dao 해당 메뉴를 연관 메뉴로 사용하고 있는 메뉴의 연관메뉴 삭제
	public int delUseMenu(String column, int menuNo) {
		System.out.println("dao(adminMenu) - 연관 메뉴 삭제");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("column", column);
		map.put("menuNo", menuNo);
		
		return sqlSession.delete("adminMenu.delUseMenu", map);
	}
	
	// 해당 매장의 단위 넘버와 이름 가져오기
	public List<MenuVo> getUnitBasicInfo(int storeNo) {
		System.out.println("dao(adminMenu) - 해당 매장의 단위 넘버와 이름 가져오기");
		
		List<MenuVo> getUnitList = sqlSession.selectList("adminMenu.getUnitBasicInfo", storeNo);
		
		return getUnitList;
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
	
	// Dao 단위 모달 - 단위 이름 조회
	public String getUnitName(int unitNo) {
		System.out.println("dao(adminMenu) - 단위 이름 조회");
		
		return sqlSession.selectOne("adminMenu.getUnitName", unitNo);
	}
	
	// Dao 단위 모달 - 단위 생성
	public int unitInsert(int storeNo, String unitName) {
		System.out.println("dao(adminMenu) - 단위 생성");
		
		Map<String, Object> unitMap = new HashMap<String, Object>();
		unitMap.put("storeNo", storeNo);
		unitMap.put("unitName", unitName);
		
		return sqlSession.insert("adminMenu.unitInsert", unitMap);
	}
	
	// Dao 단위 모달 - 가장 최근에 생긴 유닛 넘버 가져옴
	public int getUnitNo(int storeNo) {
		System.out.println("dao(adminMenu) - 가장 최근에 생긴 유닛 넘버 가져옴");
		
		Map<String, Object> map = sqlSession.selectOne("adminMenu.getUnitNo", storeNo);
		
		// Oracle에서 데이터 타입이 number인 데이터를 Java에서 Integer로 받을 때 오류가 발생
		// 오브젝트를 String으로 만든 후 Integer.parseInt를 통해 Integer로 바꿔줘야 함
		int unitNo = Integer.parseInt(String.valueOf(map.get("UNIT_NO")));
		
		return unitNo;
	}
	
	// Dao 단위 모달 - 단위의 구성품목 삽입
	public int unitComponentInsert(int menuNo, int unitNo) {
		System.out.println("dao(adminMenu) - 단위의 구성품목 삽입");
		
		Map<String, Object> unitMap = new HashMap<String, Object>();
		unitMap.put("menuNo", menuNo);
		unitMap.put("unitNo", unitNo);
		
		return sqlSession.insert("adminMenu.unitComponentInsert", unitMap);
	}
	
	// Dao 단위 모달 - 단위 이름 수정
	public int unitNameModify(int unitNo, String unitName) {
		System.out.println("dao(adminMenu) - 단위 이름 수정");

		Map<String, Object> unitMap = new HashMap<String, Object>();
		unitMap.put("unitNo", unitNo);
		unitMap.put("unitName", unitName);
		
		return sqlSession.update("adminMenu.updateUnitName", unitMap);
	}
	
	// Dao 단위 모달 - 현재 해당 단위를 사용하고 있는 메뉴의 개수 구하기
	public int countUnit(int unitNo) {
		System.out.println("dao(adminMenu) - 현재 해당 단위를 사용하고 있는 메뉴의 개수 구하기");
		
		return sqlSession.selectOne("adminMenu.countUnit", unitNo);
	}
	
	// Dao 단위 모달 - 단위 넘버를 null값으로 초기화
	public int updateUnitNo(int unitNo) {
		System.out.println("dao(adminMenu) - 단위 넘버를 null값으로 초기화");
		
		return sqlSession.update("adminMenu.updateUnitNo", unitNo);
	}
	
	// Dao 단위 모달 - 단위의 구성 품목 삭제
	public int delUnitComponent(int unitNo) {
		System.out.println("dao(adminMenu) - 단위 구성 품목 삭제");
		
		return sqlSession.delete("adminMenu.delUnitComponent", unitNo);
	}
	
	// Dao 단위 모달 - 단위 삭제
	public int delUnit(int unitNo) {
		System.out.println("dao(adminMenu) - 단위 삭제");

		return sqlSession.delete("adminMenu.delUnit", unitNo);
	}
}
