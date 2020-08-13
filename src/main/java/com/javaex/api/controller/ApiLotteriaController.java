package com.javaex.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.LotteriaService;
import com.javaex.vo.LotteriaVo;

@Controller
@RequestMapping("/api")
public class ApiLotteriaController {
	
	@Autowired
	LotteriaService lotteriaService;
	
	@ResponseBody
	@RequestMapping("/list")
	public List<LotteriaVo> list(@RequestBody LotteriaVo lotteriaVo){
		System.out.println("api list Controller");
		List<LotteriaVo> list = lotteriaService.list(lotteriaVo);
		
		/*for(LotteriaVo vo: list) {
			System.out.println(vo.toString());
		}*/
		
		return list;
	}
}
