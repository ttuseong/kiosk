<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<title>관리자페이지</title>

<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/admin/menuInfo.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fontello/css/fontello.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

</head>
<body>
	<!-- 관리자페이지 헤더 -->
		<jsp:include page="/WEB-INF/views/includes/adminHeader.jsp" />
	<!-- 관리자페이지 헤더 -->
	
	<aside class="aminPage-aside">
		<div class="adminPage-manuInfoBtn bold">
			<a href="${pageContext.request.contextPath}/admin/menuInfo">
				<span>메뉴 정보</span>
			</a>
		</div>
		
		<div class="adminPage-manuInfoBtn">
			<a href="${pageContext.request.contextPath}/admin/menuCate">
				<span>카테고리</span>
			</a>
		</div>
		
		<div class="adminPage-manuInfoBtn" style="border-bottom: none;">
			<a href="${pageContext.request.contextPath}/admin/menuStats">
				<span>통계</span>
			</a>
		</div>
	</aside>
	
	<section class="adminPage-section">
		<div class="manuInfo-contentContainer">
			<div class="manuInfo-menuInfoTitle bold">
				<span>메뉴 정보</span>
			</div>
			
			<div class="manuInfo-menuInfoContent"> <!-- 내용 -->
			
				<div class="menuInfo-menuCateAndImg"> <!-- 드롭다운 및 이미지 관리 -->

					<div class="dropdown">
					  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
							카테고리를 선택하세요. <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu"
							aria-labelledby="dropdownMenu1">
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="#">햄버거</a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="#">음료</a></li>
						</ul>
					</div>

					<img src="${pageContext.request.contextPath}/assets/images/icon1.png" class="menuInfo-menuImg img-rounded">
					<input id="menuInfo-menuImgInput" type="file"/>
				</div>
				
			</div>
		</div>

	</section>
</body>
</html>