<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<title>관리자페이지</title>

<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/admin/menuStats.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/admin/menuCate.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/admin/menuInfo.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fontello/css/fontello.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/extrafontello/fontello/css/fontello.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

</head>
<body>
	<!-- 관리자페이지 헤더 -->
		<jsp:include page="/WEB-INF/views/includes/adminHeader.jsp" />
	<!-- 관리자페이지 헤더 -->
	
	<aside class="aminPage-aside">
		<div class="adminPage-manuInfoBtn">
			<div class="icon-right-open" id="menuInfoBtn-iconLeft"></div>
			<a href="${pageContext.request.contextPath}/admin/menuInfo">
				<span>메뉴 정보</span>
			</a>
			<div class="icon-cog" id="manuInfoBtn-iconRight"></div>
		</div>
		
		<div class="adminPage-manuInfoBtn bold">
			<div class="icon-right-open" id="menuInfoBtn-iconLeft"></div>
			<a href="${pageContext.request.contextPath}/admin/menuCate">
				<span>카테고리</span>
			</a>
			<div class="icon-list" id="manuInfoBtn-iconRight"></div>
		</div>
		
		<div class="adminPage-manuInfoBtn" style="border-bottom: none;">
			<div class="icon-right-open" id="menuInfoBtn-iconChoose"></div>
			<a href="${pageContext.request.contextPath}/admin/menuStats">
				<span id="menuInfoSpan-Stats">통계</span>
			</a>
			<div class="icon-chart-area" id="manuInfoBtn-iconRight"></div>
		</div>
	</aside>
	
	<section class="adminPage-section">
		<div class="adminPage-adminPageBody">
			<div class="manuInfo-contentContainer">
				<div class="manuInfo-menuInfoTitle bold">
					<span>통계</span>
				</div>
				
				<div class="manuInfo-menuInfoContent manuCate-menuCateContent"> <!-- 내용 -->
					
					
				</div>
			</div>
		</div>
	
		<!-- 푸터 -->
		<jsp:include page="/WEB-INF/views/includes/adminFooter.jsp" />
		<!-- 푸터 -->
	</section>
</body>
</html>