package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.AdminCategoryDao;
import com.javaex.vo.CategoryVo;

@Service
public class AdminCategoryService {
	@Autowired
	AdminCategoryDao adminCategoryDao;

	// 카테고리 리스트, 서치, 페이징
	public Map<String, Object> adminCateList(String searchTerm, int point, int userNo) {

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
          map.put("userNo", userNo);
          

        System.out.println(map.get("searchTerm"));
        List<CategoryVo> cateList = adminCategoryDao.selectAdminCateList(map);
        System.out.println(cateList.toString());

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
	public int adminCateUpdate(CategoryVo categoryVo) {
		
		return adminCategoryDao.selectCateUpdate(categoryVo);
		
	}

	// 카테고리 추가  --확인버튼 누르면 카테고리 추가
	public CategoryVo adminCateAdd(String categoryName, int publicYN, int cateimgCheck, MultipartFile file, int userNo) {
		CategoryVo categoryVo;
		if(cateimgCheck == 1) {
			String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")); //첫번째는 확장자만 뽑아오기 
			
			String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;//파일이름 안겹치게 랜덤으로해야함
			
			categoryVo = new CategoryVo(categoryName, publicYN, saveName, userNo);
			
			try {
				byte[] fileData = file.getBytes();
				
				OutputStream out = new FileOutputStream("/kiosk/kfc/"+saveName); //saveName으로 이름 저장할것
				BufferedOutputStream bout = new BufferedOutputStream(out);
				
				bout.write(fileData);
				bout.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			categoryVo = new CategoryVo(categoryName, publicYN, "", userNo);
		}
		
		//일단 KFC만
		//categoryVo.setStoreNo(1);
		
		System.out.println(categoryVo.toString());
		
		int a = adminCategoryDao.insertCateAdd(categoryVo);
		
		System.out.println(a);
		
		System.out.println(categoryVo.toString());

		int categoryNo = categoryVo.getCategoryNo();
		
		CategoryVo cateVo = adminCategoryDao.selectCateOne(categoryNo);

		return cateVo;
	}

	  //카테고리 삭제 
	 public int adminCateDel(int categoryNo) {
		 System.out.println("서비스-카테고리 삭제하기" + categoryNo); 
		 //X버튼 누르면 메뉴의 갯수를 세주는 ajax.
		 
		 //return 1이라는게 삭제를 성공했을시에 성공한 갯수가 return되기때문에 1로 넣었음
		 int cnt = adminCategoryDao.selectMenuCount(categoryNo);
		 System.out.println(cnt);
		 
		 //카운트를 다오에서 받아온값 1이상일 경우 아직 메뉴에 값이있다
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
	 public int titleClickUpdate(String categoryName, int publicYN, int cateimgCheck, int categoryNo, MultipartFile file) {
		System.out.println("서비스 -카테고리 타이틀 클릭"); 
		
		CategoryVo categoryVo;
		if(cateimgCheck == 1) {
			String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
			
			String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
			
			categoryVo = new CategoryVo(categoryName, publicYN, saveName, categoryNo); //카테고리가 null이 아닐경운 if문이 돈다 xml:"titleUpdate"
			
			try {  //try catch 파일 예외처리
				byte[] fileData = file.getBytes();
				
				OutputStream out = new FileOutputStream("/kiosk/kfc/"+saveName);
				BufferedOutputStream bout = new BufferedOutputStream(out);
				
				bout.write(fileData);
				bout.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			categoryVo = new CategoryVo(categoryName, publicYN, "", categoryNo); //카테고리가 null일 경우는 if문이 안돈다
		}
		
		categoryVo.setStoreNo(1);
		
		return adminCategoryDao.titleUpdate(categoryVo);
	 }

}
