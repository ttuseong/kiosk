package com.javaex.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.AdminCategoryService;
import com.javaex.vo.CategoryVo;


@Controller
@RequestMapping("/admin")
public class AdminCategoryController {

	@Autowired
	AdminCategoryService adminCategoryService;
	
	// 카테고리 kfc 리스트, 서치
	@RequestMapping("/adminCate")
	public String adminCate(Model model, @RequestParam(value="searchTerm", required=false) String searchTerm,
			 @RequestParam(value="point", defaultValue = "1") int point) {
		System.out.println(searchTerm + "***********************************************************");
		//List<CategoryVo> cateList = adminCategoryService.adminCateList(searchTerm, point);
		Map<String, Object> resultMap = adminCategoryService.adminCateList(searchTerm, point);

		
		model.addAttribute("resultMap", resultMap);
		
		return "/admin/adminCate";
	}
	
	//카테고리 롯데리아 리스트

	
	
	//카테고리 추가  --카테고리 이름값 가져오기 count값만 가지고왔다가 ajax로뿌려줌
	@ResponseBody
	@RequestMapping("/adminCateUpdate")
	public int adminCateUpdate(@ModelAttribute CategoryVo categoryVo) {
		System.out.println("adminCateUpdate");
		
		int result = adminCategoryService.adminCateUpdate(categoryVo);

		return result;
	}
	
	//카테고리 추가 --확인버튼 누르면 카테고리 추가 이미지넣을때 ajax에서 변경되는 부분이있기때문에 model로 받았을경우 매칭되지않은 값들에대한 오류가 생김 그래서 requestParam으로 넣어준것
	@ResponseBody
	@RequestMapping("/adminCateAdd")
	public CategoryVo adminCateAdd(@RequestParam("title") String categoryName, @RequestParam("cate-openStatus") int publicYN,
			@RequestParam(value="cateimgCheck", defaultValue="0") int cateimgCheck,
			@RequestParam("file") MultipartFile file) {
		System.out.println("adminCateAdd");

		
		//추가할때 한줄 읽어오기
		CategoryVo cateVo = adminCategoryService.adminCateAdd(categoryName, publicYN, cateimgCheck, file);
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
	  @RequestMapping("/titleClickUpdate") //진짜 업데이트하는애고
	  public int titleClickUpdate(@RequestParam("title") String categoryName, @RequestParam("cate-openStatus") int publicYN,
				@RequestParam(value="cateimgCheck", defaultValue="0") int cateimgCheck,
				@RequestParam("file") MultipartFile file, @RequestParam("cateNo") int categoryNo) {
		  System.out.println("titleClickUpdate-컨트롤러");
		  
		  int categoryUpdate = adminCategoryService.titleClickUpdate(categoryName, publicYN, cateimgCheck, categoryNo, file);
		  
		  return categoryUpdate;
	  }
	  
	  
	  
}
