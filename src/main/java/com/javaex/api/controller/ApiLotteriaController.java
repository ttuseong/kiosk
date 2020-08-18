package com.javaex.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.LotteriaService;

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
}
