<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">

<link href="${pageContext.request.contextPath }/assets/css/main/index.css" rel="stylesheet" type="text/css">
	
	<div class="main-headerContainer admin-headerContainer">
		<div class="main-mainLogo">
			<a href="${pageContext.request.contextPath}/">
				<img src="${pageContext.request.contextPath}/assets/images/icon1.png">
			</a>
		</div>
		
		<c:if test="${!empty sessionScope.authUser.userNo }">
			<div class="main-headerAdminLogin">
				<a href="${pageContext.request.contextPath}/admin/adminMenu">관리자페이지</a>
				&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/users/logout">로그아웃</a>
			</div>
		</c:if>
	</div>
	