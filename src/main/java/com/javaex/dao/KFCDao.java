package com.javaex.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.CategoryVo;
import com.javaex.vo.MenuVo;
import com.javaex.vo.ToppingVo;


@Repository
public class KFCDao {
	@Autowired
	SqlSession sqlSession;
	
	public List<CategoryVo> selectCateList(int storeNo) {
		return sqlSession.selectList("kfc.selectCateList", storeNo);
	}
	
	public List<MenuVo> selectBasicMenuList(int categoryNo){
		return sqlSession.selectList("kfc.selectMenuList", categoryNo);
	}
	
	public List<MenuVo> selectHighlightMenuList(Map<String, Integer> map){
		return sqlSession.selectList("kfc.selectHighlightMenuList", map);
	}
	
	public List<MenuVo> selectMenu(MenuVo menuVo) {
		return sqlSession.selectList("kfc.selectMenu", menuVo);
	}
	
	public List<String> selectDefaultCategoryName(int unitNo){
		return sqlSession.selectList("kfc.selectDefaultCategoryName", unitNo);
	}
	
	public List<MenuVo> selectDefaultMenuList(int unitNo){
		return sqlSession.selectList("kfc.selectDefaultMenuList", unitNo);
	}
	
	public List<MenuVo> selectSetMenus(int menuNo){
		return sqlSession.selectList("kfc.selectSetMenus", menuNo);
	}
	
	public List<MenuVo> selectToppingList(int menuNo){
		return sqlSession.selectList("kfc.selectToppingList", menuNo);
	}
	
	public List<ToppingVo> selectToppingbasicInfo(){
		return sqlSession.selectList("kfc.selectToppingbasicInfo");
	}
	

	public MenuVo selectBasicSide(int menuNo) {
		return sqlSession.selectOne("kfc.selectBasicSide", menuNo);
	}
	
	public List<MenuVo> selectAnotherSide(MenuVo menuVo){
		return sqlSession.selectList("kfc.selectAnotherSide", menuVo);
	}

	public List<MenuVo> selectRecommenDationMenuList() {
		return sqlSession.selectList("kfc.selectRecommenDationMenuList");

	}
}
