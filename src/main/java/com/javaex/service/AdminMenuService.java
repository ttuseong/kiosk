package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.AdminMenuDao;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.MenuVo;
import com.javaex.vo.ToppingVo;
import com.javaex.vo.UnitModalVo;

@Service
public class AdminMenuService {
	@Autowired
	private AdminMenuDao adminMenuDao;

	public List<ToppingVo> getToppingList(int no) {
		return adminMenuDao.getToppingList(no);
	}

	// Service 카테고리 리스트
	public List<CategoryVo> getCateList(int storeNo) {
		List<CategoryVo> cateList = adminMenuDao.getCateList(storeNo);

		return cateList;
	}

	// Service 메뉴 리스트
	public List<MenuVo> getMenuList(int cateNo) {
		List<MenuVo> menuList = adminMenuDao.getMenuList(cateNo);

		return menuList;
	}

	// Service 메뉴 정보
	public Map<String, Object> getMenuInfo(int menuNo, int userNo) {
		MenuVo menuVo = adminMenuDao.getMenuInfo(menuNo);

		int componentsCnt = adminMenuDao.getPromotionComponentsCnt(menuNo); // 프로모션 구성품목 유무 받기(return 값이 0이면 구성품 없음, 0
																			// 이상이면 구성품 있음)
		if (componentsCnt > 0) { // 구성품이 있을 경우
			menuVo.setPromotion(adminMenuDao.getPromotionComponentsInfo(menuNo));
		}

		List<Integer> useToppingList = getUseToppingList(userNo, menuNo);
		System.out.println(useToppingList.toString());
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("menuVo", menuVo);
		map.put("useToppingList", useToppingList);

		return map;
	}

	// 프로모션 구성품 추가 함수
	public void promotionComponentsInsert(String promotion, int menuNo) {
		String promotionComponents[]; // 프로모션 구성품목 메뉴 넘버 담아줄 배열
		promotionComponents = promotion.split(","); // split() : 지정한 문자를 기준으로 문자열을 잘라 배열로 반환하는 함수

		for (int i = 0; i < promotionComponents.length; i++) {
			adminMenuDao.promotionComponentsInsert(menuNo, Integer.parseInt(promotionComponents[i])); // 구성품 인서트
		}
	}

	public List<Integer> getUseToppingList(int userNo, int menuNo) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("userNo", userNo);
		map.put("menuNo", menuNo);

		return adminMenuDao.getUseToppingList(map);
	}

	// Service 메뉴 추가
	public int addMenu(MultipartFile file, int categoryNo, String menuName, String menuDesc, int isSpecial,
			int menuPrice, int isChange, int unitNo, int useMenu, int discount, String promotion,
			List<Integer> useToppingList) {
		MenuVo menuVo;

		if (!file.getOriginalFilename().equals("")) {
			String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
			String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
			menuVo = new MenuVo(categoryNo, menuName, menuDesc, menuPrice, saveName, isSpecial, isChange, unitNo,
					discount);

			try {
				byte[] fileData = file.getBytes();

				/* 윈도우에서 사용 */
				/* OutputStream out = new FileOutputStream("C:\\test\\"+saveName); */

				/* 리눅스에서 사용 */
				OutputStream out = new FileOutputStream("/backup/kiosk/kfc/" + saveName);
				BufferedOutputStream bout = new BufferedOutputStream(out);

				bout.write(fileData);
				bout.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {

			menuVo = new MenuVo(categoryNo, menuName, menuDesc, menuPrice, "icon1.png", isSpecial, isChange, unitNo,
					discount);
		}

		int menuNo = adminMenuDao.menuInsert(menuVo); // 메뉴 인서트 후 인서트 한 메뉴 넘버 받아오기

		if (useMenu != 0) { // useMenu를 선택한 경우
			adminMenuDao.useInsert(menuNo, useMenu); // 연관메뉴 인서트
		}

		if (!promotion.equals("0")) { // 프로모션 구성품목을 삽입한 경우
			promotionComponentsInsert(promotion, menuNo); // 구성품 추가
		}

		if (useToppingList.size() != 0) {
			insertUseTopping(useToppingList, menuNo);
		}

		return 1;
	}

	public void insertUseTopping(List<Integer> useToppingList, int menuNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("useToppingList", useToppingList);
		map.put("menuNo", menuNo);

		System.out.println(map.toString());

		adminMenuDao.setUseTopping(map);
	}

	// Service 메뉴 수정
	public Map<String, Object> menuUpdate(MultipartFile file, int categoryNo, String menuName, String menuDesc, int isSpecial,
			int menuPrice, int isChange, int unitNo, int menuNo, int useMenu, int discount, String promotion,
			List<Integer> useToppingList, List<Integer> prevToppingList, int userNo) {
		MenuVo menuVo;
		System.out.println("menuModify service promotion:" + promotion);

		if (!file.getOriginalFilename().equals("")) {
			String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
			String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
			menuVo = new MenuVo(categoryNo, menuName, menuDesc, menuPrice, saveName, isSpecial, isChange, unitNo,
					menuNo, discount);

			try {
				byte[] fileData = file.getBytes();

				/* 윈도우에서 사용 */
				/* OutputStream out = new FileOutputStream("C:\\test\\"+saveName); */

				/* 리눅스에서 사용 */
				OutputStream out = new FileOutputStream("/backup/kiosk/kfc/" + saveName);
				BufferedOutputStream bout = new BufferedOutputStream(out);

				bout.write(fileData);
				bout.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			menuVo = new MenuVo(categoryNo, menuName, menuDesc, menuPrice, "", isSpecial, isChange, unitNo, menuNo,
					discount);
		}

		int useMenuCnt = adminMenuDao.getUseMenuCnt(menuNo); // 연관 메뉴 유무 받기(return 값이 0이면 연관메뉴 없음, 0 이상이면 연관메뉴 있음)
		int componentsCnt = adminMenuDao.getPromotionComponentsCnt(menuNo); // 구성품 유무 받기

		if (useMenuCnt == 0 && useMenu != 0) { // 해당 메뉴에 연관 메뉴가 없었던 상태였으나 새로 연관메뉴를 선택했다면
			adminMenuDao.useInsert(menuNo, useMenu);
		}
		if (useMenuCnt > 0) { // 기존에 연관 메뉴가 있었던 상태라면
			if (useMenu == 0) { // useMenu를 선택하지 않은 경우
				adminMenuDao.delUseMenu("set", menuNo); // 연관 메뉴 삭제
			} else { // 새로운 useMenu를 선택한 경우
				adminMenuDao.useMenuUpdate(menuNo, useMenu); // 연관 메뉴 업데이트
			}
		}

		if (componentsCnt == 0 && !promotion.equals("0")) { // 해당 메뉴에 프로모션 구성품이 없었던 상태였으나 새로 구성품을 선택했다면
			promotionComponentsInsert(promotion, menuNo); // 구성품 추가
		}
		if (componentsCnt > 0) { // 기존에 구성품이 있었던 상태였다면
			adminMenuDao.delPromotionComponents("delPromotion", menuNo); // 해당 메뉴의 프로모션 구성품 전체 삭제
			if (!promotion.equals("0")) {
				promotionComponentsInsert(promotion, menuNo); // 구성품 추가
			}
		}

		adminMenuDao.menuUpdate(menuVo); // 메뉴 수정

		
		 for(int i = 0; i < useToppingList.size(); i++) { 
			 System.out.println("i : " + i);
			 for(int j = 0; j <prevToppingList.size(); j++) {
				 System.out.println("j : " + j);
				 System.out.println(prevToppingList.size());
				 if(useToppingList.get(i) == prevToppingList.get(j)) {
					 useToppingList.remove(i);
					 prevToppingList.remove(j);
					 i--; 
					 break;
				 } 
				 System.out.println("여기는 오나");
			 } 
		 }
		 
		System.out.println(useToppingList.toString());
		System.out.println(prevToppingList.toString());
		
		if(prevToppingList.size() != 0) {
			removeUseTopping(prevToppingList, menuNo);
		}
		
		if(useToppingList.size() != 0) {
			insertUseTopping(useToppingList, menuNo);
		}
		
		List<Integer> list = getUseToppingList(userNo, menuNo);
		
		MenuVo updateMenuInfo = adminMenuDao.getMenuInfo(menuVo.getMenuNo()); // 업데이트 한 메뉴 정보 담기

		System.out.println(updateMenuInfo.toString());

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("useToppingList", list);
		map.put("menuVo", updateMenuInfo);
		
		
		return map;
	}
	
	public void removeUseTopping(List<Integer> prevToppingList, int menuNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("prevToppingList", prevToppingList);
		map.put("menuNo", menuNo);
		adminMenuDao.removeUseTopping(map);
	}

	// Service 해당 메뉴를 연관메뉴/프로모션 구성품으로 사용중인 메뉴넘버와 이름 받아오기
	public Map<String, Object> getDelMenuUseInfo(int menuNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<Map<String, Object>> setMenu = adminMenuDao.getUseMenuInfo(menuNo);
		List<Map<String, Object>> promotionUseMenu = adminMenuDao.getPromotionComponentsUseMenu(menuNo);

		map.put("setMenu", setMenu);
		map.put("promotionUseMenu", promotionUseMenu);

		System.out.println("해당 메뉴를 연관메뉴로 사용 중인 메뉴 : " + setMenu);
		System.out.println("해당 메뉴를 프로모션 구성품으로 사용 중인 메뉴 : " + promotionUseMenu);

		return map;
	}

	// Service 메뉴 삭제
	public int delMenu(int delDecision, int menuNo) {
		int useDefault = adminMenuDao.selectUseDefault(menuNo);
		int useMenuCnt = adminMenuDao.getUseMenuCnt(menuNo); // 연관 메뉴 유무 받기(return 값이 0이면 연관메뉴 없음, 0 이상이면 연관메뉴 있음)
		int componentsCnt = adminMenuDao.getPromotionComponentsCnt(menuNo); // 연관 메뉴 유무 받기(return 값이 0이면 연관메뉴 없음, 0 이상이면
																			// 연관메뉴 있음)
		List<Map<String, Object>> promotionComponentsUseMenu = adminMenuDao.getPromotionComponentsUseMenu(menuNo);
		int promotionComponentsUseMenuNo = 0;
		int promotionComponentsCnt = 0;
		
		if(useDefault > 0) { // 단위 테이블에서 추가 구성 품목으로 사용중인 메뉴의 경우 -1을 반환하여 단위에서 사용되는 메뉴임을 알림
			return -1;
		}
		else if(useMenuCnt > 0 || componentsCnt > 0) { // 연관 메뉴를 사용하고 있거나 프로모션 구성품이 있는 메뉴의 경우
			if(useMenuCnt > 0) {
				System.out.println("연관메뉴 있음");
				adminMenuDao.delUseMenu("set", menuNo); // 메뉴 삭제 전 연관 메뉴 먼저 삭제
			}
			if(componentsCnt > 0){
				System.out.println("프로모션 있음");
				adminMenuDao.delPromotionComponents("delPromotion", menuNo); // 메뉴 삭제 전 프로모션 구성품 먼저 삭제
			}
		}

		if (delDecision == 1) { // 해당 메뉴를 연관메뉴&프로모션 구성품으로 사용 중인 메뉴가 있는 경우
			System.out.println("둘 다 있음");
			adminMenuDao.delUseMenu("menu", menuNo); // 해당 메뉴를 연관 메뉴로 사용 중인 메뉴의 연관 메뉴 삭제
			adminMenuDao.delPromotionComponents("delComponents", menuNo); // 해당 메뉴를 프로모션 구성품으로 사용 중인 메뉴의 구성품에서 삭제
			for (int i = 0; i < promotionComponentsUseMenu.size(); i++) {
				// parseInt() 함수는 매개변수로 String 형만 받기 때문에 Object를 String으로 형변환 한 후 입력해야 함
				// Object를 String으로 변환할 땐 toString() 함수를 사용함
				promotionComponentsUseMenuNo = Integer
						.parseInt(promotionComponentsUseMenu.get(i).get("MENUNO").toString());
				promotionComponentsCnt = adminMenuDao.getPromotionComponentsCnt(promotionComponentsUseMenuNo);
				if (promotionComponentsCnt == 1) {
					adminMenuDao.isSpecialUpdate(promotionComponentsUseMenuNo);
				}
			}
		} else if (delDecision == 2) { // 해당 메뉴를 연관메뉴로 사용 중인 메뉴가 있는 경우
			System.out.println("연관만 있음");
			adminMenuDao.delUseMenu("menu", menuNo); // 해당 메뉴를 연관 메뉴로 사용 중인 메뉴의 연관 메뉴 삭제
		} else if (delDecision == 3) { // 해당 메뉴를 프로모션 구성품으로 사용 중인 메뉴가 있는 경우
			System.out.println("프로모션만 있음");
			adminMenuDao.delPromotionComponents("delComponents", menuNo); // 해당 메뉴를 프로모션 구성품으로 사용 중인 메뉴의 구성품에서 삭제
			for (int i = 0; i < promotionComponentsUseMenu.size(); i++) {
				// parseInt() 함수는 매개변수로 String 형만 받기 때문에 Object를 String으로 형변환 한 후 입력해야 함
				// Object를 String으로 변환할 땐 toString() 함수를 사용함
				promotionComponentsUseMenuNo = Integer
						.parseInt(promotionComponentsUseMenu.get(i).get("MENUNO").toString());
				promotionComponentsCnt = adminMenuDao.getPromotionComponentsCnt(promotionComponentsUseMenuNo);
				if (promotionComponentsCnt == 0) {
					adminMenuDao.isSpecialUpdate(promotionComponentsUseMenuNo);
				}
			}
		}

		return adminMenuDao.delMenu(menuNo);
	}

	// Service 해당 매장의 단위 넘버와 이름 가져오기
	public List<MenuVo> getUnitBasicInfo(int storeNo) {

		List<MenuVo> getUnitList = adminMenuDao.getUnitBasicInfo(storeNo);

		return getUnitList;
	}

	// Service 단위 모달 - 모든 단위 정보 가져오기
	public List<UnitModalVo> getUnitList(int storeNo) {

		List<UnitModalVo> unitList = adminMenuDao.getUnitList(storeNo);

		return unitList;
	}

	// Service 단위 모달 - 특정 단위에 속해있는 단위 정보 모두 가져옴
	public List<UnitModalVo> adminUnitInfoList(int unitNo) {

		return adminMenuDao.selectByUnitNo(unitNo);
	}

	// Service 단위 모달 - 단위 추가/수정
	public Map<String, Object> unitInsert(int storeNo, int unitNo, String unitName, List<Integer> arrNumber) {

		Map<String, Object> unitInsert = new HashMap<String, Object>();
		int result = 0; // 추가/수정 판단을 위함 (판단에 따라 ajax 처리 방식이 달라짐)

		if (unitNo == 0) { // 단위 번호가 0일 경우 단위 추가
			System.out.println("단위 추가");
			adminMenuDao.unitInsert(storeNo, unitName); // 단위생성
			unitNo = adminMenuDao.getUnitNo(storeNo); // 생성 된 단위의 no 받아옴
		} else if (unitNo > 0) { // 단위 번호가 있을 경우 단위 수정
			System.out.println("단위 수정");
			if (unitName != null) {
				// 단위 이름 업데이트
				adminMenuDao.unitNameModify(unitNo, unitName);
			}
			adminMenuDao.delUnitComponent(unitNo); // 해당 단위의 데이터 모두 삭제해 줌
			result = 1; // result가 1일 경우 수정임
		}

		// 배열을 모두 돌며 생성된 단위에 메뉴 insert
		for (int i = 0; i < arrNumber.size(); i++) {
			adminMenuDao.unitComponentInsert(arrNumber.get(i), unitNo);
		}

		List<UnitModalVo> getUnitInfo = adminMenuDao.selectByUnitNo(unitNo);
		unitInsert.put("getUnitInfo", getUnitInfo);
		unitInsert.put("result", result);

		return unitInsert;
	}

	// Service 단위 모달 - 해당 단위를 사용중인 메뉴의 개수 세기
	public List<String> countUnit(List<Integer> unitNo) {

		List<String> unitName = new ArrayList<String>();

		for (int i = 0; i < unitNo.size(); i++) { // 선택 된 단위 개수만큼 반복
			int countUnit = adminMenuDao.countUnit(unitNo.get(i)); // 해당 단위를 사용중인 메뉴가 있는 지 검색

			if (countUnit > 0) { // 사용중인 메뉴가 있을 경우 countUnit에 1이 리턴되어 옴
				unitName.add(adminMenuDao.getUnitName(unitNo.get(i))); // 사용중인 단위 이름을 리스트에 담아줌
			}
		}

		return unitName;
	}

	// Service 단위 모달 - 단위 삭제
	public int delUnit(int delDecision, List<Integer> unitNo) {

		for (int i = 0; i < unitNo.size(); i++) { // 선택 된 단위 개수만큼 반복
			if (delDecision > 0) { // 해당 단위를 사용하고 있는 메뉴가 있을 경우
				adminMenuDao.updateUnitNo(unitNo.get(i)); // 해당 단위를 사용중인 메뉴들의 단위 넘버를 null값으로 초기화
			}
			adminMenuDao.delUnitComponent(unitNo.get(i)); // 해당 단위의 데이터 모두 삭제해 줌
			adminMenuDao.delUnit(unitNo.get(i)); // 단위 삭제
		}

		return 0;
	}
}
