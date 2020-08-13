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
<link href="/kiosk/assets/bootstrap/css/bootstrap.css" rel="stylesheet"
	type="text/css">
<link href="/kiosk/assets/css/main/main.css" rel="stylesheet"
	type="text/css">
<link href="/kiosk/assets/css/admin/menuInfo.css" rel="stylesheet"
	type="text/css">
<link href="/kiosk/assets/css/admin/admin.css" rel="stylesheet"
	type="text/css">
<link href="/kiosk/assets/css/fontello/css/fontello.css"
	rel="stylesheet" type="text/css">

<!-- 자바스크립트 -->
<script type="text/javascript"
	src="/kiosk/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="/kiosk/assets/bootstrap/js/bootstrap.js"></script>

<title>관리자페이지</title>
</head>

<!-- 관리자페이지 헤더 -->
<jsp:include page="/WEB-INF/views/includes/adminHeader.jsp" />
<!-- 관리자페이지 헤더 -->

<div class="adminPage-body">
	<div class="adminPage-Container">
		<div class="adminPage-adminContent">
		
			<div class="menuInfo-menuInfoContainer">
				<div class="menuInfo-menuCateAndImgContainer"> <!-- 드롭다운 및 이미지 관리 -->
					<!-- 드롭다운 -->
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
					</div> <!-- 드롭다운 -->
					
					<img src="#" class="img-rounded">
					
					<input id="menuInfo-menuImgInput" type="file"/>
				</div><!-- menuInfo-menuCateAndImg -->
				
				<div class="menuInfo-btnAndInfoContainer"> <!-- 버튼과 메뉴정보를 담는 켄터이너 -->
					<div class="adminPage-btnContainer">  <!-- 메뉴 버튼 css -->
						<!-- 메뉴정보 버튼 -->
						<a href="${pageContext.request.contextPath}/admin/menuInfo">
							<button type="button" class="btn btnMenuInfo adminActive"
								id="menuInfo-btnMenuInfo">메뉴정보</button>
						</a>
		
						<!-- 카테고리 버튼 -->
						<a href="${pageContext.request.contextPath}/admin/menuCate">
							<button type="button" class="btn btnMenuCate"
								id="menuInfo-btnMenuCate">카테고리</button>
						</a>
		
						<!-- 통계버튼 -->
						<a href="${pageContext.request.contextPath}/admin/menuStats">
							<button type="button" class="btn btnMenuStats"
								id="menuInfo-btnMenuStats">통계</button>
						</a>
					</div>
					
					<!-- 메뉴이름, 가격, 칼로리, 설명 등 -->
					<div class="adminPage-Content menuInfo-menuInfo">		
						
					</div>
				</div>
			</div> <!-- menuInfo-menuInfoContainer -->

			<!-- 토핑 -->
			<div class="adminPage-Content menuInfo-topingInfo">	
				<p>알랄랄</p>
				<div class="cateIcon">
					<div class="menuCate-cateName">단품/세트/박스단품/세트/박스</div>
					<div class="icon-cancel menuCate-cateDel"></div>
				</div>
				<div class="cateIcon">
					<div class="menuCate-cateName">음료</div>
					<div class="icon-cancel menuCate-cateDel"></div>
				</div>
				<div class="cateIcon">
					<div class="menuCate-cateName">디저트</div>
					<div class="icon-cancel menuCate-cateDel"></div>
				</div>
			</div>
			
			<div class="adminPage-btnContainer menuInfo-submitBtnContainer">
				<!-- 삭제 버튼 -->
				<a href="#">
					<button type="button" class="btn btnMenuInfoDel"
						id="btnMenuInfoDel">삭제</button>
				</a>
				
				<!-- 확인 버튼 -->
				<a href="#">
					<button type="button" class="btn btnMenuInfoComplete"
						id="btnMenuInfoComplete">완료</button>
				</a>
			</div>
			
		</div> <!-- adminPage-adminContent -->
	</div> <!-- adminPage-Container -->
</div> <!-- adminPage-body -->

<!-- 풋터 -->
<div class="adminPage-footer">
	<jsp:include page="/WEB-INF/views/includes/footer.jsp" />
</div>
<!-- 풋터 -->
<body>
</body>
</html>