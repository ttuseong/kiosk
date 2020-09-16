package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.util.Paging;
import com.javaex.vo.LotteriaToppingVo;
import com.javaex.vo.LotteriaVo;

@Repository
public class LotteriaDao {
	
	@Autowired
	SqlSession sqlSession;
	
	public List<LotteriaVo> categoryList(){
		return sqlSession.selectList("lotteria.categoryList");
	}

	public List<LotteriaVo> menuList(Paging pgVo){
		return sqlSession.selectList("lotteria.menuList", pgVo);
	}
	
	public int setOrSingle(int menuNo) {
		return sqlSession.selectOne("lotteria.setOrSingle", menuNo);
	}
	
	public List<LotteriaVo>selectMenu(int menuNo){
		return sqlSession.selectList("lotteria.selectMenu", menuNo);
	}
	
	public List<LotteriaVo>selectCommboMenu(int menuNo){
		System.out.println("콤보메뉴 다오 시작");
		
		List<LotteriaVo> commbo =sqlSession.selectList("lotteria.selectCommboMenu", menuNo); 
		
		System.out.println("콤보메뉴 다우 끝");
		return commbo;
	}
	
	public List<LotteriaVo> dessertList(Paging pgVo){
		return sqlSession.selectList("lotteria.dessertList",pgVo);
	}
	
	public List<LotteriaVo> drinkList(Paging pgVo){
		return sqlSession.selectList("lotteria.drinkList", pgVo);
	}
	
	public int menuCategoryNo(int menuNo) {
		return sqlSession.selectOne("lotteria.menuCategoryNo", menuNo);
	}
	
	public int categoryMenuCount(int categoryNo) {
		return sqlSession.selectOne("lotteria.categoryMenuCount", categoryNo);
	}
	
	public List<LotteriaToppingVo> toppingList(int menuNo){
		return sqlSession.selectList("lotteria.toppingList", menuNo);
	}

}
