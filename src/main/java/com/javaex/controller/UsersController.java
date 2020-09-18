package com.javaex.controller;

import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaex.service.UsersService;
import com.javaex.vo.UserVo;

	
	
@Controller
@RequestMapping("/users")
public class UsersController {
	
	@Autowired
	UsersService userService;
	
	//로그인 페이지
	@RequestMapping("/login")
	public String login() {
		return "/users/login";
	}
	
	//회원가입 페이지
	@RequestMapping("/register")
	public String register() {
		return "/users/register";
	}
	
	//비밀번호 찾기 페이지
	@RequestMapping("/forgotPassword")
	public String forgotPassword() {
		return "/users/forgot-password";
	}
	
	//회원가입후 로그인 페이지 리다이렉트.
	@RequestMapping("/registerComplete")
	public String registerComplete(@ModelAttribute UserVo userVo) {
		userService.registerComplete(userVo);
		return "redirect:/users/login";
	}
	
	@RequestMapping("/loginComplete")
	public String loginComplete(@ModelAttribute UserVo userVo, Session session) {
		userService.loginComplete(userVo);
		return "";
	}

}
