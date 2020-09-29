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
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.AdminMenuDao;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.MenuVo;
import com.javaex.vo.UnitModalVo;

@Service
public class AdminMenuService {
	@Autowired
	private AdminMenuDao adminMenuDao;

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
	public MenuVo getMenuInfo(int menuNo) {		
		MenuVo menuVo = adminMenuDao.getMenuInfo(menuNo);
		
		int useMenuCnt = adminMenuDao.getPromotionCnt(menuNo); // 프로모션 구성품목 유무 받기(return 값이 0이면 구성품 없음, 0 이상이면 구성품 있음)
		if(useMenuCnt > 0) { // 구성품이 있을 경우
			menuVo.setPromotion(adminMenuDao.getPromotionInfo(menuNo));
		}
		
		return menuVo;
	}
	
	// Service 메뉴 추가
	public int addMenu(MultipartFile file, int categoryNo, String menuName, String menuDesc, int isSpecial, int menuPrice, int isChange, int unitNo, int useMenu, int discount, String promotion) {
		MenuVo menuVo;
		String promotionComponents[]; // 프로모션 구성품목 메뉴 넘버 담아줄 배열
		
		if(!file.getOriginalFilename().equals("")) {
			String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
			String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
			menuVo = new MenuVo(categoryNo, menuName, menuDesc, menuPrice, saveName, isSpecial, isChange, unitNo, discount);
			
			try {
				byte[] fileData = file.getBytes();
				
				/* 윈도우에서 사용 */
				/* OutputStream out = new FileOutputStream("C:\\test\\"+saveName); */
				
				/* 리눅스에서 사용 */
				OutputStream out = new FileOutputStream("/kiosk/kfc/"+saveName);
				BufferedOutputStream bout = new BufferedOutputStream(out);
				
				bout.write(fileData);
				bout.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			
			menuVo = new MenuVo(categoryNo, menuName, menuDesc, menuPrice, "icon1.png", isSpecial, isChange, unitNo, discount);
		}
		
		int menuNo = adminMenuDao.menuInsert(menuVo); // 메뉴 인서트 후 인서트 한 메뉴 넘버 받아오기
		
		if(useMenu != 0) { // useMenu를 선택한 경우
			adminMenuDao.useInsert(menuNo, useMenu); // 연관메뉴 인서트
		}

		if(!promotion.equals("0")) { // 프로모션 구성품목을 삽입한 경우
			System.out.println("프로모션 구성품목을 삽입한 경우");
			promotionComponents = promotion.split(","); // split() : 지정한 문자를 기준으로 문자열을 잘라 배열로 반환하는 함수
	        
	        for(int i = 0 ; i < promotionComponents.length ; i++)
	        {
				adminMenuDao.useInsert(Integer.parseInt(promotionComponents[i]), menuNo); // 연관메뉴 인서트
	        }
		}
		
		return 1;
	}
	
	// Service 메뉴 수정
	public MenuVo menuUpdate(MultipartFile file, int categoryNo, String menuName, String menuDesc, int isSpecial, int menuPrice, int isChange, int unitNo, int menuNo, int useMenu, int discount, String promotion) {
		MenuVo menuVo;
		System.out.println("menuModify service promotion:" + promotion);
		
		if(!file.getOriginalFilename().equals("")) {
			String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
			String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
			menuVo = new MenuVo(categoryNo, menuName, menuDesc, menuPrice, saveName, isSpecial, isChange, unitNo, menuNo, discount);
			
			try {
				byte[] fileData = file.getBytes();
				
				/* 윈도우에서 사용 */
				/* OutputStream out = new FileOutputStream("C:\\test\\"+saveName); */
				
				/* 리눅스에서 사용 */
				OutputStream out = new FileOutputStream("/kiosk/kfc/"+saveName);
				BufferedOutputStream bout = new BufferedOutputStream(out);
				
				bout.write(fileData);
				bout.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			menuVo = new MenuVo(categoryNo, menuName, menuDesc, menuPrice, "", isSpecial, isChange, unitNo, menuNo, discount);
		}

		int useMenuCnt = adminMenuDao.getUseMenuCnt(menuNo); // 연관 메뉴 유무 받기(return 값이 0이면 연관메뉴 없음, 0 이상이면 연관메뉴 있음)
		System.out.println("service 연관 메뉴 유무 받기: " + useMenuCnt);

		if(useMenuCnt == 0 && useMenu != 0) { // 해당 메뉴에 연관 메뉴가 없었던 상태였으나 새로 연관메뉴를 선택했다면
			adminMenuDao.useInsert(menuNo, useMenu);
		}
		
		if(useMenuCnt > 0) { // 기존에 연관 메뉴가 있었던 상태라면
			if(useMenu == 0) { // useMenu를 선택하지 않은 경우
				adminMenuDao.delUseMenu("setNo", menuNo); // 연관 메뉴 삭제
			}
			else { // 새로운 useMenu를 선택한 경우
				adminMenuDao.useMenuUpdate(menuNo, useMenu); // 연관 메뉴 업데이트
			}
		}

		adminMenuDao.menuUpdate(menuVo); // 메뉴 수정
		MenuVo updateMenuInfo = adminMenuDao.getMenuInfo(menuVo.getMenuNo()); // 업데이트 한 메뉴 정보 담기
		System.out.println(updateMenuInfo.toString());
		
		return updateMenuInfo;
	}

	// Service 해당 메뉴를 연관메뉴로 사용중인 메뉴넘버와 이름 받아오기
	public List<MenuVo> getUseMenuInfo(int menuNo) {
		List<MenuVo> useMenuList = adminMenuDao.getUseMenuInfo(menuNo);
		
		return useMenuList;
	}
	
	// Service 메뉴 삭제
	public int delMenu(int delDecision, int menuNo) {
		System.out.println(delDecision + ", " + menuNo);
		
		int useDefault = adminMenuDao.selectUseDefault(menuNo);
		int useMenuCnt = adminMenuDao.getUseMenuCnt(menuNo); // 연관 메뉴 유무 받기(return 값이 0이면 연관메뉴 없음, 0 이상이면 연관메뉴 있음)
		
		if(useDefault > 0) {
			return -1;
		}
		else if(useMenuCnt == 1) { // 해당 메뉴가 연관 메뉴를 사용하고 있다면
			adminMenuDao.delUseMenu("setNo", menuNo); // 연관 메뉴 삭제
		}

		if(delDecision == 1){ // 현재 연관메뉴로 사용중인 메뉴일 경우
			adminMenuDao.delUseMenu("menuNo", menuNo); // 연관 메뉴 삭제
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
		
		if(unitNo == 0) { // 단위 번호가 0일 경우 단위 추가
			System.out.println("단위 추가");
			adminMenuDao.unitInsert(storeNo, unitName); // 단위생성
			unitNo = adminMenuDao.getUnitNo(storeNo); // 생성 된 단위의 no 받아옴
		}
		else if(unitNo > 0) { // 단위 번호가 있을 경우 단위 수정
			System.out.println("단위 수정");
			if(unitName != null) {
				// 단위 이름 업데이트
				adminMenuDao.unitNameModify(unitNo, unitName);
			}
			
			adminMenuDao.delUnitComponent(unitNo); // 해당 단위의 데이터 모두 삭제해 줌
			result = 1; // result가 1일 경우 수정임
		}

		// 배열을 모두 돌며 생성된 단위에 메뉴 insert
		for(int i = 0; i < arrNumber.size(); i++) {
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
		
		for(int i = 0; i < unitNo.size(); i++) { // 선택 된 단위 개수만큼 반복
			int countUnit = adminMenuDao.countUnit(unitNo.get(i)); // 해당 단위를 사용중인 메뉴가 있는 지 검색

			if(countUnit > 0) { // 사용중인 메뉴가 있을 경우 countUnit에 1이 리턴되어 옴
				unitName.add(adminMenuDao.getUnitName(unitNo.get(i))); // 사용중인 단위 이름을 리스트에 담아줌
			}
		}
		
		return unitName;
	}
	
	// Service 단위 모달 - 단위 삭제
	public int delUnit(int delDecision, List<Integer> unitNo) {
		
		for(int i = 0; i < unitNo.size(); i++) { // 선택 된 단위 개수만큼 반복
			if(delDecision > 0) { // 해당 단위를 사용하고 있는 메뉴가 있을 경우
				adminMenuDao.updateUnitNo(unitNo.get(i)); // 해당 단위를 사용중인 메뉴들의 단위 넘버를 null값으로 초기화
			}

			adminMenuDao.delUnitComponent(unitNo.get(i)); // 해당 단위의 데이터 모두 삭제해 줌
			adminMenuDao.delUnit(unitNo.get(i)); // 단위 삭제
		}
			
		return 0;
	}
}
