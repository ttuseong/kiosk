package com.javaex.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.CategoryVo;

@Repository
public class AdminCategoryDao {

	@Autowired
	SqlSession sqlSession;

	// 카테고리 리스트
	public List<CategoryVo> selectAdminCateList(Map<String, Object> map) {
		System.out.println("CateList");
		List<CategoryVo> cateList = sqlSession.selectList("adminCategory.selectAdminCateList", map);
		return cateList;
	}
	
	//페이지 categoryNo 값 가져오기
	public int selectAdminCateCount(Map<String, Object> map) {
		
		return sqlSession.selectOne("adminCategory.selectAdminCateCount", map);
		
	}
	
	
	// 카테고리 추가 
	public int selectCateUpdate(CategoryVo categoryVo) {
		return sqlSession.selectOne("adminCategory.selectCateUpdate", categoryVo);
	}

	// 카테고리 추가  --확인버튼 누르면 카테고리 추가
	public int insertCateAdd(CategoryVo categoryVo) {
		System.out.println("엥");
		return sqlSession.insert("adminCategory.insertCateAdd", categoryVo);
	}

	// 카테고리 추가  --카테고리 목록에 추가
	public CategoryVo selectCateOne(int categoryNo) {
		System.out.println("카테고리로로로로로");
		return sqlSession.selectOne("adminCategory.selectCateOneByCategoryNo", categoryNo);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//카테고리 삭제 -- 첫번째 ajax alert창 띄우기
	public int selectMenuCount(int categoryNo) {
		System.out.println("다오- 카테고리 alert창 뜨게하기");
		//X버튼 누르면 메뉴의 갯수를 세주는 ajax.alert
		int cnt = sqlSession.selectOne("adminCategory.selectOneMenuCount", categoryNo);
		
		return cnt;
	}

	// 카테고리 삭제 -- 두번째 ajax 삭제하기
	public int deleteCate(int categoryNo) {
		System.out.println("다오 - 카테고리 정보 불러오기");		  
		
		int cnt = sqlSession.delete("adminCategory.deleteCate", categoryNo);
		//삭제해주면 갯수가나온다 
		
		return cnt;
	}
	
	//카테고리 수정
	public int titleUpdate(CategoryVo categoryVo) {
		System.out.println("다오 - 카테고리 수정 불러오기");
		
		
		
		return sqlSession.update("adminCategory.titleUpdate", categoryVo);
	}

}
