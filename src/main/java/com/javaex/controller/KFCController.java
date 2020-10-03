package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.KFCService;
import com.javaex.vo.CategoryVo;
import com.javaex.vo.MenuVo;
import com.javaex.vo.ToppingVo;

@Controller
@RequestMapping("/kfc")
public class KFCController {
	@Autowired
	KFCService kfcService;
	
	@RequestMapping("/index")
	public String index(Model model, HttpSession httpSession, @RequestParam("no")int no) {				
		List<CategoryVo> list = kfcService.cateList(no);
		System.out.println("no" + no);
		System.out.println(list.toString());

		httpSession.setAttribute("no", no);
		
		model.addAttribute("list", list);
		
		return "/KFC/index";
	}
	
	@ResponseBody
	@RequestMapping("menuList")
	public List<MenuVo> menuList(@RequestParam("categoryNo") int categoryNo) {
		System.out.println(categoryNo);
		List<MenuVo> list = kfcService.menuList(categoryNo);
		System.out.println(list.toString());
		return list;
	}
	
	@ResponseBody
	@RequestMapping("/selectMenu")
	public List<MenuVo> selectMenu(@ModelAttribute MenuVo menuVo) {
		
		return kfcService.selectMenu(menuVo);
	}
	
	@ResponseBody
	@RequestMapping("/changeList")
	public List<MenuVo> changeList(@ModelAttribute MenuVo menuVo) {
		System.out.println(menuVo.toString());
		return kfcService.changeList(menuVo);
	}
	
	@ResponseBody
	@RequestMapping("/initTopping")
	public List<ToppingVo> initTopping() {
		return kfcService.intiTopping();
	}
	
	@ResponseBody
	@RequestMapping("/initSide")
	public List<MenuVo> initSide(@RequestParam("unitNo") int unitNo){
		System.out.println(unitNo);
		List<MenuVo> list = kfcService.initSide(unitNo);
		System.out.println(list);
		return list;
	}

	@ResponseBody
	@RequestMapping("/recommenDationMenu")
	public List<MenuVo> recommenDationMenu() {
		List<MenuVo> mList = kfcService.recommenDationMenuList();
		System.out.println(mList.toString());
		return mList;
	}

}
