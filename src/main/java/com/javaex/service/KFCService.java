package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.KFCDao;
import com.javaex.vo.KFCCategoryVo;
import com.javaex.vo.KFCMenuVo;
import com.javaex.vo.KFCPageVo;

@Service
public class KFCService {
	@Autowired
	KFCDao kfcDao;
	
	public Map<String, Object> cateList(KFCPageVo kfcPageVo) {
		List<KFCCategoryVo> cateList = kfcDao.selectCateList();
		
		
		if(kfcPageVo.getCategoryNo() == 0) {
			kfcPageVo.setCategoryNo(cateList.get(0).getCategoryNo());
		}
		
		if(kfcPageVo.getCurrentPage() == 0) {
			kfcPageVo.setCurrentPage(1);
		}
		
		kfcPageVo.setStartPoint((kfcPageVo.getCurrentPage()-1)*9+1);
		kfcPageVo.setEndPoint(kfcPageVo.getStartPoint()+8);
		
		List<KFCMenuVo> menuList = menuList(kfcPageVo);
		
		System.out.println(kfcPageVo.toString());
		
		
		int menuMaxCount = (int)Math.ceil((menuCount(kfcPageVo.getCategoryNo())/9.0));
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("currentPage", kfcPageVo.getCurrentPage());
		map.put("menuMaxCount", menuMaxCount);
		map.put("cateList", cateList);
		map.put("menuList", menuList);
		return map;
	}

	public List<KFCMenuVo> menuList(KFCPageVo kfcPageVo) {
		return kfcDao.selectMenuList(kfcPageVo);
	}
	
	public int menuCount(int categoruNo) {
		return kfcDao.selectCountMenu(categoruNo);
	}
}
