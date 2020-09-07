package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.AdminMenuService;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.MenuVo;
import com.javaex.vo.UnitModalVo;

@Controller
@RequestMapping("/admin")
public class AdminMenuController {
	@Autowired
	private AdminMenuService adminMenuService;

	// 카테고리 리스트
	@RequestMapping("/adminMenu")
	public String adminMenu(Model model) {
		
		return "/admin/adminMenu";
	}
	
	// 카테고리 리스트
	@ResponseBody
	@RequestMapping("/adminCateList")
	public List<CategoryVo> adminCateList(@RequestParam("storeNo") int storeNo) {

		List<CategoryVo> cateList = adminMenuService.getCateList(storeNo);
		
		return cateList;
	}

	// 메뉴 리스트
	@ResponseBody
	@RequestMapping("/adminMenuList")
	public List<MenuVo> adminMenuList(@RequestParam("cateNo") int cateNo) {
		
		List<MenuVo> menuList = adminMenuService.getMenuList(cateNo);
		
		return menuList;
	}
	
	// 메뉴 정보
	@ResponseBody
	@RequestMapping("/adminMenuInfo")
	public MenuVo adminMenuInfo(@RequestParam("menuNo") int menuNo) {
		
		MenuVo menuVo = adminMenuService.getMenuInfo(menuNo);
		
		return menuVo;
	}
	
	// 메뉴 추가
	@ResponseBody
	@RequestMapping("/adminAddeMenu")
	public int adminAddeMenu(@RequestBody MenuVo menuVo) {
		System.out.println(menuVo.toString());
		
		adminMenuService.addMenu(menuVo);
	
		return 0;
	}
	
	// 메뉴 수정
	@ResponseBody
	@RequestMapping("/adminUpdateMenu")
	public MenuVo adminUpdateMenu(@RequestBody MenuVo menuVo) {
		
		MenuVo updateMenuInfo = adminMenuService.menuUpdate(menuVo);
		
		// 업데이트 한 메뉴 정보 보내기
		return updateMenuInfo;
	}
	
	// 메뉴 삭제
	@ResponseBody
	@RequestMapping("/adminDelMenu")
	public int adminDelMenu(@RequestParam("menuNo") int menuNo) {
		return adminMenuService.delMenu(menuNo);
	}
	
	// 단위 모달 - 해당 매장의 단위 정보 모두 가져옴
	@ResponseBody
	@RequestMapping("/adminUnitList")
	public List<UnitModalVo> adminUnitList(@RequestParam("storeNo") int storeNo) {

		List<UnitModalVo> unitList = adminMenuService.getUnitList(storeNo);
		
		return unitList;
	}
	
	// 단위 모달 - 특정 단위에 속해있는 단위 정보 모두 가져옴
	@ResponseBody
	@RequestMapping("/adminUnitInfoList")
	public List<UnitModalVo> adminUnitInfo(@RequestParam("unitNo") int unitNo) {

		List<UnitModalVo> unitInfoList = adminMenuService.adminUnitInfoList(unitNo);
		System.out.println(unitInfoList.toString());

		return unitInfoList;
	}
}
