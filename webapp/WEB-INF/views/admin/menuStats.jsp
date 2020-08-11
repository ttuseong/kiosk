<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 메타태그 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- css -->
<link href="/kiosk/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="/kiosk/assets/css/main/main.css" rel="stylesheet" type="text/css">
<link href="/kiosk/assets/css/admin/admin.css" rel="stylesheet" type="text/css">
<link href="/kiosk/assets/css/admin/menuInfo.css" rel="stylesheet" type="text/css">
<link href="/kiosk/assets/css/fontello/css/fontello.css" rel="stylesheet" type="text/css">

<!-- 자바스크립트 -->
<script type="text/javascript" src="/kiosk/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="/kiosk/assets/bootstrap/js/bootstrap.js"></script>

<title>관리자페이지</title>
</head>
	
	<!-- 관리자페이지 헤더 -->
	<jsp:include page="/WEB-INF/views/includes/adminHeader.jsp" />
	<!-- 관리자페이지 헤더 -->
	
	<div class="adminPage-body">
		<div class="adminPage-Container">
			<div class="adminPage-adminContent">
				<!-- 메뉴정보 버튼 -->
				<a href="${pageContext.request.contextPath}/admin/menuInfo">
					<button type="button" class="btn btnMenuInfo">메뉴정보</button>
				</a>
				
				<!-- 카테고리 버튼 -->
				<a href="${pageContext.request.contextPath}/admin/menuCate">
					<button type="button" class="btn btnMenuCatea">카테고리</button>
				</a>
				
				<!-- 통계 버튼 -->
				<a href="${pageContext.request.contextPath}/admin/menuStats">
					<button type="button" class="btn btnMenuStats adminActive">메뉴정보</button>
				</a>
				
	
				<div class="adminPage-Content">
					<!-- 내용 -->
				</div>
				
			</div>
		</div>
	</div>
	
	<!-- 풋터 -->
	<div class="adminPage-footer">
		<jsp:include page="/WEB-INF/views/includes/footer.jsp" />
	</div>
	<!-- 풋터 -->
<body>
</body>
</html>