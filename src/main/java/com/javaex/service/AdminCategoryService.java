package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.AdminCategoryDao;
import com.javaex.vo.CategoryVo;

@Service
public class AdminCategoryService {
	@Autowired
	AdminCategoryDao adminCategoryDao;

	// 카테고리 리스트
	public List<CategoryVo> adminCateList(String searchTerm) {
		Map<String, String> map = new HashMap<String, String>();
	      map.put("searchTerm", searchTerm);
	    System.out.println(map.get("searchTerm"));
		List<CategoryVo> cateList = adminCategoryDao.selectAdminCateList(map);
		return cateList;
	}

	
	
	
	
	// 카테고리 추가 --카테고리 값 가져오기
	public boolean adminCateUpdate(String categoryName) {
		CategoryVo categoryVo = adminCategoryDao.selectCateUpdate(categoryName);
		boolean result = true;

		if (categoryVo == null) {
			result = true;
		} else {
			result = false;
		}
		return result;
	}

	// 카테고리 추가  --확인버튼 누르면 카테고리 추가
	public CategoryVo adminCateAdd(CategoryVo categoryVo) {
		adminCategoryDao.insertCateAdd(categoryVo);

		int categoryNo = categoryVo.getCategoryNo();
		
		CategoryVo cateVo = adminCategoryDao.selectCateOne(categoryNo);

		return cateVo;
	}
	
	
	
	
	
	

	  //카테고리 삭제 
	 public int adminCateDel(int categoryNo) {
		 System.out.println("서비스-카테고리 삭제하기" + categoryNo); 
		 //X버튼 누르면 메뉴의 갯수를 세주는 ajax.
		  
		 int cnt = adminCategoryDao.selectMenuCount(categoryNo);
		 System.out.println(cnt);
		  
		  if(cnt>=1) {
		  	System.out.println("삭제 alert창 띄어주기");
		  	return 0;
		  }else {
		  	System.out.println("삭제 성공");
		  	cnt = adminCategoryDao.deleteCate(categoryNo);
		  	System.out.println("test");
			System.out.println(cnt);
			return cnt;  	
		  }

	 }
	  
	 //카테고리 수정
	 public int titleClickUpdate(CategoryVo categoryVo) {
		System.out.println("서비스 -카테고리 타이틀 클릭"); 
		 
		
		
		return adminCategoryDao.titleUpdate(categoryVo);
	 }

}
