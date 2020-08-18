package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

	
	
@Controller
@RequestMapping("/users")
public class UsersController {
	
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

}
