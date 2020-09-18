package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.ToppingVo;

@Repository
public class AdminToppingDao {

	@Autowired
	SqlSession sqlSession;
	
	//토핑 리스트 다오
	public List<ToppingVo> adminToppingSelectList(){
		System.out.println("과연 너가 넘어왔을까");
		List<ToppingVo> toppingList = sqlSession.selectList("adminToping.selectTopingList");
		
		//System.out.println(toppingList.toString());
		return toppingList;
	}
	
	//토핑 추가하기 다오 --확인버튼 누르면 토핑 추가
	public int adminToppingInsert(ToppingVo toppingVo) {
		System.out.println("확인버튼 누르면 토핑 추가하기");
		return sqlSession.insert("adminToping.adminToppingInsert", toppingVo);	
	}
	
	//토핑 추가하기 --토핑 목록에 추가하기
	public ToppingVo selectToppingOne(int toppingNo) {
		System.out.println("토핑 목록에 추가하기");
		return sqlSession.selectOne("adminToping.selectToppingOne", toppingNo);
	}
	
	//토핑이름 중복 방지 
	public int selectToppingNameCheck(String toppingName) {
		
		return sqlSession.selectOne("adminToping.selectToppingCount", toppingName);
	}
}
