<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="${pageContext.request.contextPath }/assets/css/main/index.css" rel="stylesheet" type="text/css">

	<div class="main-headerContainer">	
			<div class="main-mainLogo">
				<a href="#">
					<img src="${pageContext.request.contextPath}/assets/images/icon1.png">
				</a>
			</div>
			
			<div class="main-headerSearchInputAndBtn">
				<input type="text" class="main-headerSearchInput" value="검색" onfocus="this.value=''">
				<button type="submit" class="btn main-headerSearchBtn icon-search" id="main-headerSearch"></button>
			</div>
		
		<div class="main-headerAdminLogin">
			<!-- 관리자가 로그인 하지 않은 경우 -->
			<a href="${pageContext.request.contextPath}/users/loginForm">관리자로그인</a>
			
			<!-- 관리자가 로그인 한 경우
			<a href="#">관리자페이지</a>
			<a href="#">로그아웃</a>
			-->
		</div>
	</div>

