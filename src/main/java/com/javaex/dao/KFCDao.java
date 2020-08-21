package com.javaex.dao;

import java.util.List;

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
	
	public List<CategoryVo> selectCateList() {
		return sqlSession.selectList("kfc.selectCateList");
	}
	
	public List<MenuVo> selectMenuList(int categoryNo){
		return sqlSession.selectList("kfc.selectMenuList", categoryNo);
	}
	
	public int selectCountMenu(int categoruNo) {
		return sqlSession.selectOne("kfc.selectCountMenu", categoruNo);
	}
	
	public MenuVo selectMenu(int menuNo) {
		return sqlSession.selectOne("kfc.selectMenu", menuNo);
	}
	
	public List<MenuVo> selectSetMenus(int menuNo){
		return sqlSession.selectList("kfc.selectSetMenus", menuNo);
	}
	
	public List<MenuVo> selectCountUseCategory(String utilName) {
		return sqlSession.selectList("kfc.selectCountUseCategory", utilName);
	}
	
	public List<MenuVo> selectToppingList(){
		return sqlSession.selectList("kfc.selectToppingList");
	}
	
	public List<ToppingVo> selectToppingbasicInfo(){
		return sqlSession.selectList("kfc.selectToppingbasicInfo");
	}
	

	public MenuVo selectBasicSide(int defaultNo) {
		return sqlSession.selectOne("kfc.selectBasicSide", defaultNo);
	}
	
	public List<MenuVo> selectAnotherSide(int defaultNo){
		return sqlSession.selectList("kfc.selectAnotherSide", defaultNo);
	}

	public List<MenuVo> selectRecommenDationMenuList() {
		return sqlSession.selectList("kfc.selectRecommenDationMenuList");

	}
}
