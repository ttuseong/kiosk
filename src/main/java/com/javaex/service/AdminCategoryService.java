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

	// 카테고리 리스트, 서치, 페이징
	public Map<String, Object> adminCateList(String searchTerm, int point) {

		int totalCount = adminCateCount(1, searchTerm); //괄호에 스토어 넘버가 들어가면 됨 KFC=1 롯데리아=2
        System.out.println(totalCount);
        int totalPage = (int)Math.ceil(totalCount/5.0);
        System.out.println(totalPage);
        int startPoint = (point-1)*5+1;
        int endPoint = startPoint+4;

        Map<String, Object> map = new HashMap<String, Object>();
          map.put("searchTerm", searchTerm);
          map.put("totalCount", totalCount);
          map.put("startPoint", startPoint);
          map.put("endPoint", endPoint);
          

        System.out.println(map.get("searchTerm"));
        List<CategoryVo> cateList = adminCategoryDao.selectAdminCateList(map);

        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("cateList", cateList);
        resultMap.put("totalPage", totalPage);
        resultMap.put("point", point);
        resultMap.put("searchTerm", searchTerm);


        return resultMap;
	}

	//페이징 - storeno를 읽고 categoryNo의 count를 세어줄것
	public int adminCateCount(int storeNo, String searchTerm) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("storeNo", storeNo);
		map.put("searchTerm", searchTerm);
		return adminCategoryDao.selectAdminCateCount(map);
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
