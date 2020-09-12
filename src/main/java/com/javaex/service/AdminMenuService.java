package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
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
		
		return menuVo;
	}
	
	// Service 메뉴 추가
	public int addMenu(MultipartFile file, int categoryNo, String menuName, String menuDesc, int isSpecial, int menuPrice, int isChange, int unitNo) {
		
		String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		
		String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
		
		MenuVo menuVo = new MenuVo(categoryNo, menuName, menuDesc, menuPrice, saveName, isSpecial, isChange, unitNo);
		
		System.out.println(menuVo.toString());
		
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
		
		return adminMenuDao.menuInsert(menuVo);
	}
	
	// Service 메뉴 수정
	public MenuVo menuUpdate(MenuVo menuVo) {
		
		adminMenuDao.menuUpdate(menuVo); // 메뉴 업데이트
		
		// 업데이트 한 메뉴 정보 담기
		MenuVo updateMenuInfo = adminMenuDao.getMenuInfo(menuVo.getMenuNo());
		
		return updateMenuInfo;
	}
	
	// Service 메뉴 삭제
	public int delMenu(int menuNo) {
		
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
	public int unitInsert(int storeNo, int unitNo, String unitName, List<Integer> arrNumber) {
		
		if(unitNo == 0) { // 단위 번호가 0일 경우 단위 추가
			System.out.println("단위 추가");
			adminMenuDao.unitInsert(storeNo, unitName); // 단위생성
			int getUnitNo = adminMenuDao.getUnitNo(storeNo); // 생성 된 단위의 no 받아옴
			
			// 배열을 모두 돌며 생성된 단위에 메뉴 insert
			for(int i = 0; i < arrNumber.size(); i++) {
				adminMenuDao.unitComponentInsert(arrNumber.get(i), getUnitNo);
			}
		}
		else if(unitNo > 0) { // 단위 번호가 있을 경우 단위 수정
			System.out.println("단위 수정");
			if(unitName != null) {
				// 단위 이름 업데이트
				adminMenuDao.unitNameModify(unitNo, unitName);
			}
			
			adminMenuDao.delUnitComponent(unitNo); // 해당 단위의 데이터 모두 삭제해 줌
			
			// 배열을 모두 돌며 메뉴 insert
			for(int i = 0; i < arrNumber.size(); i++) {
				adminMenuDao.unitComponentInsert(arrNumber.get(i), unitNo);
			}
		}
		
		return 0;
	}

	// Service 단위 모달 - 단위 삭제
	public int delUnit(int unitNo) {

		adminMenuDao.delUnitComponent(unitNo); // 해당 단위의 데이터 모두 삭제해 줌
		adminMenuDao.delUnit(unitNo); // 단위 삭제
		
		return 0;
	}
}
