package com.javaex.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.KFCService;
import com.javaex.vo.MenuVo;
import com.javaex.vo.ToppingVo;

@Controller
@RequestMapping("/KFC")
public class KFCController {
	@Autowired
	KFCService kfcService;
	
	@RequestMapping("/index")
	public String index(Model model, @RequestParam(value="categoryNo", required=false, defaultValue = "0") int categoryNo) {		
		System.out.println(categoryNo);
		
		Map<String, Object> map = kfcService.cateList(categoryNo);

		model.addAttribute("map", map);
		
		System.out.println(map.toString());
		return "/KFC/index";
	}
	
	@ResponseBody
	@RequestMapping("/selectMenu")
	public List<MenuVo> selectMenu(@RequestParam("menuNo") int menuNo) {
		System.out.println(menuNo);
		
		return kfcService.selectMenu(menuNo);
	}
	
	@ResponseBody
	@RequestMapping("/selectMode")
	public List<MenuVo> selectMode(@RequestParam(value="utilName", required=false, defaultValue = "null") String utilName){
		
		return kfcService.selectMode(utilName);
	}
	
	@ResponseBody
	@RequestMapping("/changeList")
	public List<MenuVo> changeList(@RequestParam("no") int no) {
		
		return kfcService.changeList(no);
	}
	
	@ResponseBody
	@RequestMapping("/initTopping")
	public List<ToppingVo> initTopping() {
		return kfcService.intiTopping();
	}
	
	@ResponseBody
	@RequestMapping("/initSide")
	public List<Integer> initSide(@RequestParam("defaultName") String defaultName){
		System.out.println(defaultName);
		return kfcService.initSide(defaultName);
	}

	@ResponseBody
	@RequestMapping("/recommenDationMenu")
	public List<MenuVo> recommenDationMenu() {
		List<MenuVo> mList = kfcService.recommenDationMenuList();
		System.out.println(mList.toString());
		return mList;
	}

}
