package com.javaex.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.AdminMenuService;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.MenuVo;
import com.javaex.vo.ToppingVo;
import com.javaex.vo.UnitModalVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping("/admin")
public class AdminMenuController {
	@Autowired
	private AdminMenuService adminMenuService;

	@RequestMapping("/adminMenu")
	public String adminMenu(Model model, HttpSession session) {
		System.out.println("admin컨트롤러");
		int no = ((UserVo)session.getAttribute("authUser")).getUserNo();
		
		List<ToppingVo> list = adminMenuService.getToppingList(no);
		
		model.addAttribute("list", list);
		
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
	public Map<String, Object> adminMenuInfo(@RequestParam("menuNo") int menuNo, HttpSession session) {
		int userNo = ((UserVo)session.getAttribute("authUser")).getUserNo();
		Map<String, Object> map = adminMenuService.getMenuInfo(menuNo, userNo);
		
		return map;
	}
	
	// 메뉴 추가
	@ResponseBody
	@RequestMapping("/adminAddeMenu")
	public int adminAddeMenu(@RequestParam("file") MultipartFile file, @RequestParam("categoryNo") int categoryNo, @RequestParam("menuName") String menuName,
			@RequestParam("menuDesc") String menuDesc, @RequestParam(value="isSpecial", defaultValue="0") int isSpecial, @RequestParam("menuPrice") int menuPrice,
			@RequestParam(value="isChange", defaultValue="0") int isChange, @RequestParam(value="unitNo", defaultValue="0") int unitNo,
			@RequestParam(value="useMenu", defaultValue="0") int useMenu, @RequestParam(value="discount", defaultValue="0") int discount,
			@RequestParam(value="promotion", defaultValue="0") String promotion, @RequestParam("useToppingList")List<Integer> useToppingList) {
			
			System.out.println("menuAdd controller promotion : " + promotion);
		 	return adminMenuService.addMenu(file, categoryNo, menuName, menuDesc, isSpecial, menuPrice, isChange, unitNo, useMenu, discount, promotion, useToppingList);
	}
	
	// 메뉴 수정
	@ResponseBody
	@RequestMapping("/adminUpdateMenu")
	public Map<String, Object> adminUpdateMenu(@RequestParam("file") MultipartFile file, @RequestParam("categoryNo") int categoryNo, @RequestParam("menuName") String menuName,
			@RequestParam("menuDesc") String menuDesc, @RequestParam(value="isSpecial", defaultValue="0") int isSpecial, @RequestParam("menuPrice") int menuPrice,
			@RequestParam(value="isChange", defaultValue="0") int isChange, @RequestParam(value="unitNo", defaultValue="0") int unitNo, @RequestParam("menuNo") int menuNo,
			@RequestParam(value="useMenu", defaultValue="0") int useMenu, @RequestParam(value="discount", defaultValue="0") int discount,
			@RequestParam(value="promotion", defaultValue="0") String promotion, @RequestParam("useToppingList")List<Integer> useToppingList, @RequestParam("prevToppingList")List<Integer> prevToppingList,
			HttpSession session) {

		System.out.println("menuModify controller promotion : " + promotion);

		while (prevToppingList.remove(null));
		
		Map<String, Object> map = adminMenuService.menuUpdate(file, categoryNo, menuName, menuDesc, isSpecial, menuPrice, isChange, unitNo, menuNo, useMenu, discount, promotion, useToppingList, prevToppingList, ((UserVo)session.getAttribute("authUser")).getUserNo());
	
		
		// 업데이트 한 메뉴 정보 보내기
		return map;
	}

	// 메뉴 삭제 시 해당 메뉴를 연관메뉴 혹은 프로모션 구성품으로 '사용중'인 메뉴넘버와 이름 받아오기
	@ResponseBody
	@RequestMapping("/getDelMenuUseInfo")
	public Map<String, Object> getDelMenuInfo(@RequestParam("menuNo") int menuNo) {
		Map<String, Object> map = adminMenuService.getDelMenuUseInfo(menuNo);

		map.put("setMenu", map.get("setMenu"));
		map.put("promotionUseMenu", map.get("promotionUseMenu"));
		
		return map;
	}
	
	// 메뉴 삭제
	@ResponseBody
	@RequestMapping("/adminDelMenu")
	public int adminDelMenu(@RequestParam("delDecision") int delDecision, @RequestParam("menuNo") int menuNo) {
		return adminMenuService.delMenu(delDecision, menuNo);
	}
	
	// 해당 매장의 단위 넘버와 이름 가져오기 
	@ResponseBody
	@RequestMapping("/getUnitBasicInfo")
	public List<MenuVo> getUnitBasicInfo(@RequestParam("storeNo") int storeNo) {

		List<MenuVo> getUnitList = adminMenuService.getUnitBasicInfo(storeNo);
		
		return getUnitList;
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

		return unitInfoList;
	}
	
	// 단위 모달 - 단위 추가/수정
	@ResponseBody
	@RequestMapping("/unitInsert")
	public Map<String, Object> adminUnitAdd(@RequestParam("storeNo") int storeNo,
											@RequestParam("unitNo") int unitNo,
											@RequestParam("unitName") String unitName,
											@RequestParam(value="arrNumber[]") List<Integer> arrNumber) {
		
		Map<String, Object> map = adminMenuService.unitInsert(storeNo, unitNo, unitName, arrNumber);
		map.put("result", map.get("result"));
		map.put("unitInfo", map.get("getUnitInfo"));
		
		return map;
	}

	// 단위 모달 - 해당 단위를 사용 중인 메뉴의 개수 세기
	@ResponseBody
	@RequestMapping("/countUnit")
	public List<String> countUnit(@RequestParam(value="unitNo[]") List<Integer> unitNo) {

		System.out.println(unitNo);
		return adminMenuService.countUnit(unitNo);
	}
	
	// 단위 모달 - 단위 삭제
	@ResponseBody
	@RequestMapping("/unitDel")
	public int adminUnitAdd(@RequestParam("delDecision") int delDecision,
							@RequestParam(value="unitNo[]") List<Integer> unitNo) {

		return adminMenuService.delUnit(delDecision, unitNo);
	}
}
