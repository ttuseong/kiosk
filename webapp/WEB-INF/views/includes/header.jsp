<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="${pageContext.request.contextPath }/assets/css/main/index.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/extrafontello/fontello/css/fontello.css">
	
	<div class="main-headerContainer">	
			<div class="main-mainLogo">
				<a href="#">
					<img src="${pageContext.request.contextPath}/assets/images/icon1.png">
				</a>
			</div>
			
			<div class="main-headerSearchInputAndBtn">
				<input type="text" class="main-headerSearchInput" value="검색">
				<button type="submit" class="btn main-headerSearchBtn"><i class="icon-search-1"></i></button>
			</div>
			
			<div class="main-headerAdminLogin">
				<p>관리자로그인</p>
			</div>
	</div>