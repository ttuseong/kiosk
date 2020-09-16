package com.javaex.api.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.LotteriaService;
import com.javaex.vo.LotteriaToppingVo;
import com.javaex.vo.LotteriaVo;

@Controller
@RequestMapping("/api")
public class ApiLotteriaController {
	
	@Autowired
	LotteriaService lotteriaService;
	
	@RequestMapping("/setOrSingle")
	@ResponseBody
	public int setOrSingle(@RequestBody int menuNo) {
		return lotteriaService.setOrSingle(menuNo);
	}
	
	@RequestMapping("/selectMenu")
	@ResponseBody
	public List<LotteriaVo> selectMenu(@RequestBody int menuNo){
		return lotteriaService.selectMenu(menuNo);
	}
	
	@RequestMapping("/menuCategoryNo")
	@ResponseBody
	public int menuCategoryNo(@RequestBody int selectMenuNo){
		return lotteriaService.menuCategoryNo(selectMenuNo);
	}
	
	@RequestMapping("/toppingList")
	@ResponseBody
	public List<LotteriaToppingVo> toppingList(@RequestBody int menuNo){
		return lotteriaService.toppingList(menuNo);
	}
	
	@RequestMapping("/side")
	@ResponseBody
	public Map<String, Object> side(@RequestBody int pg){
		return lotteriaService.side(pg);
	}
	
	@RequestMapping("/selectCommboMenu")
	@ResponseBody
	public List<LotteriaVo> selectCommboMenu(@RequestBody int menuNo){
		return lotteriaService.selectCommboMenu(menuNo);
	}
}
