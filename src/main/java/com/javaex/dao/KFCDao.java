package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.CategoryVo;
import com.javaex.vo.MenuVo;
import com.javaex.vo.PageVo;
import com.javaex.vo.ToppingVo;


@Repository
public class KFCDao {
	@Autowired
	SqlSession sqlSession;
	
	public List<CategoryVo> selectCateList() {
		return sqlSession.selectList("kfc.selectCateList");
	}
	
	public List<MenuVo> selectMenuList(PageVo kfcPageVo){
		return sqlSession.selectList("kfc.selectMenuList", kfcPageVo);
	}
	
	public int selectCountMenu(int categoruNo) {
		return sqlSession.selectOne("kfc.selectCountMenu", categoruNo);
	}
	
	public MenuVo selectMenu(int menuNo) {
		return sqlSession.selectOne("kfc.selectMenu", menuNo);
	}
	
	public List<ToppingVo> selectToppingList(){
		return sqlSession.selectList("kfc.selectToppingList");
	}
	
	public List<ToppingVo> selectToppingbasicInfo(){
		return sqlSession.selectList("kfc.selectToppingbasicInfo");
	}
}
