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
		<c:if test="${check == true}">
			<div class="main-headerAdminLogin">
			<!-- 관리자가 로그인 하지 않은 경우 -->
				<c:if test="${empty sessionScope.authUser.userNo }">
					<a href="${pageContext.request.contextPath}/users/loginForm">관리자로그인</a>
				</c:if>
	
				<!-- 관리자가 로그인 한 경우 -->
				<c:if test="${!empty sessionScope.authUser.userNo }">
					<a href="${pageContext.request.contextPath}/admin/adminMenu">관리자페이지</a>
					&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/users/logout">로그아웃</a>
				</c:if>
				
			</div>
		</c:if>
		
	</div>

