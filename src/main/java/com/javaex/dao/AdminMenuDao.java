package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.CategoryVo;
import com.javaex.vo.MenuVo;

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

	// Dao 메뉴 삭제
	public int delMenu(int menuNo) {
		System.out.println("dao(adminMenu) - 메뉴 삭제");

		return sqlSession.delete("adminMenu.delMenu", menuNo);
	}
}
