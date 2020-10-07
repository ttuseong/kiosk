package com.javaex.util;

import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.javaex.service.UsersService;
import com.javaex.vo.UserVo;

public class Interceptor extends HandlerInterceptorAdapter{
	private final static Logger log = Logger.getGlobal();

	@Autowired
	UsersService userService;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		
		UserVo user = (UserVo)session.getAttribute("authUser");
		
		if(user == null) {
			log.info("비로그인 접근자");
			response.sendRedirect("/kiosk/");
			return false;
		}else{
			int adminCheck = userService.adminCheck(user.getUserNo());
			
			if(adminCheck <= 0 ) {
				log.info("로그인은 했으나 관리자 권한이 없는 접근자");
				response.sendRedirect("/kiosk/");
				return false;
			}else {
				return true;
			}
		}		
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		super.postHandle(request, response, handler, modelAndView);
	}

}
