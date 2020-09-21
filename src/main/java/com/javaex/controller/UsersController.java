package com.javaex.controller;

import javax.servlet.http.HttpSession;

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
	@RequestMapping("/loginForm")
	public String loginFrom() {
		return "/users/login";
	}
	
	//회원가입 페이지
	@RequestMapping("/registerFrom")
	public String registerFrom() {
		return "/users/register";
	}
	
	//비밀번호 찾기 페이지
	@RequestMapping("/forgotPassword")
	public String forgotPassword() {
		return "/users/forgot-password";
	}
	
	//회원가입후 로그인 페이지 리다이렉트.
	@RequestMapping("/register")
	public String register(@ModelAttribute UserVo userVo) {
		userService.register(userVo);
		return "redirect:/users/login";
	}
	
	@RequestMapping("/login")
	public String loginComplete(@ModelAttribute UserVo userVo, HttpSession session) {
		UserVo authUser= userService.login(userVo);
		
		System.out.println(authUser.getUserId());
		
		if(authUser != null) {
			System.out.println("로그인 성공");
			return "redirect:/";
		}else {
			System.out.println("로그인 실패");
		}
		return "";
	}

}
