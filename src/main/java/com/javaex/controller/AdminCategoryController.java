package com.javaex.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.AdminCategoryService;
import com.javaex.vo.CategoryVo;


@Controller
@RequestMapping("/admin")
public class AdminCategoryController {


	@Autowired
	AdminCategoryService adminCategoryService;
	
	// 카테고리 kfc 리스트
	@RequestMapping("/adminCate")
	public String adminCate(Model model) {
		List<CategoryVo> cateList = adminCategoryService.adminCateList();

		model.addAttribute("cateList", cateList);
		
		return "/admin/adminCate";
	}
	
	//카테고리 롯데리아 리스트

	
	//카테고리 추가  --카테고리 값 가져오기
	@ResponseBody
	@RequestMapping("/adminCateUpdate")
	public boolean adminCateUpdate(@RequestParam ("cateName") String categoryName) {
		System.out.println("adminCateUpdate");
		System.out.println(categoryName);
		
		boolean result = adminCategoryService.adminCateUpdate(categoryName);

		return result;
	}
	
	//카테고리 추가 --확인버튼 누르면 카테고리 추가
	@ResponseBody
	@RequestMapping("/adminCateAdd")
	public CategoryVo adminCateAdd(@ModelAttribute CategoryVo categoryVo) {
		System.out.println("adminCateAdd");
		
		//로그인 개발하고 수정할것!!!!
		//세션에 있는  storeNo를 추가해준다
		categoryVo.setStoreNo(1);
		
		//isSet 정책 결정되면 수정할것!!!
		categoryVo.setIsSet(0);
		
		
		System.out.println(categoryVo.toString());
		CategoryVo cateVo = adminCategoryService.adminCateAdd(categoryVo);
		System.out.println("넘어왔따");
		
		return cateVo;
	}
	  //카테고리 삭제 --게시글이 있냐없냐를 판단
	  @ResponseBody
	  @RequestMapping("/adminCateDel")
	  public int adminCateDel(@RequestParam("categoryNo") int categoryNo) {
		  System.out.println("adminCate삭제");	
	  
		  int cnt = adminCategoryService.adminCateDel(categoryNo);
		  System.out.println("cnt넘어옴");
		  return cnt; 
	  }
	  
	  //카테고리 수정
	  @ResponseBody
	  @RequestMapping("/titleClickUpdate")
	  public int titleClickUpdate(@RequestParam("categoryNo") int categoryNo) {
		  System.out.println("titleClickUpdate-컨트롤러");
		  
		  int update = adminCategoryService.titleClickUpdate(categoryNo);
		  System.out.println("update넘어옴");
		  
		  return update;
	  }
	  
	  
	  
}
