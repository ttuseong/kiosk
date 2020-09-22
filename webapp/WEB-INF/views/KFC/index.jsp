<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title></title>

<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/KFC/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/KFC/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/KFC/modal.css">
<link href="${pageContext.request.contextPath }/assets/css/main/index.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fontello/css/fontello.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>


</head>
<body>

	<!-- 헤더 -->
	<jsp:include page="/WEB-INF/views/includes/header.jsp" />
	<!-- 헤더 -->
	<div id="kfc">
		<section id="FKCHeader">
			<h1>
				<a href="#">KFC</a>
			</h1>
			<nav class="spot">
				<ul>
					<li>HOME</li>
					<li>사용안내</li>
					<li>영양정보</li>
					<li>language</li>
				</ul>
			</nav>
		</section>

		<section id="categorySection">
			<nav id="category">
				<ul>
				<c:forEach items="${list }" var="cateVo">
					<c:choose>
						<c:when test="${cateVo.isSet==1 }">
							<li class="categoryColorRed">
						</c:when>
						<c:otherwise>
							<li class="categoryColorWhite">
						</c:otherwise>
					</c:choose>
						<a href="#" data-no="${cateVo.categoryNo}" class="menuLink">
							<img class="categoryImg" alt="매장행사 이미지" src="${pageContext.request.contextPath}/kfc/${cateVo.categoryImg}">
							<p>${cateVo.categoryName }</p>
						</a>
					</li>
				</c:forEach>
				</ul>
			</nav>
		</section>
		<section id="menuSection">
			<nav id="menuSectionContainer">
				<div id="menuSectionContent">
				</div>
			</nav>
		</section>

		<section id="pageSection">
			<div id="pagecontainer">
				<button id="btnLeft" class="btnPage">이전</button>
				<ul id="pageCircleGroup">
					
				</ul>
				<button id="btnRight" class="btnPage">다음</button>
			</div>
		</section>
		
		<section id="menuTableSection">
			<div id="tableSize">
				<div id="menuTable">
					<div id="menuTableHead">
						<div>메뉴</div>
						<div>수량</div>
						<div>가격</div>
					</div>
					<div id="menuTableBody">
						<div id="menuTableContents">
						</div>
					</div>
				</div>
			</div>
				<div id="scrollGroup">
				<div id="blank"></div>
				<div id="scrollContatiner">
					<div id="scrollContents">
						<div class="icon-up-open-big kfcMainScroll" id="scrollUp">
							<p class="hidden">up<p>
						</div>
						<div class="icon-down-open-big kfcMainScroll" id="scrollDown">
							<p class="hidden">down</p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section id="ordersection">
			<div id="ordercontainer">
				<div id="orderLeft">
					<div class="orderCount">
						<p class="string">수량</p>
						<p class="number">0</p>
					</div>
					<div class="orderCount">
						<p class="string">금액</p>
						<p class="number">0</p>
					</div>
				</div>
				<div id="orderRigth">
					<div id="allCancelBtn">전체취소</div>
					<div id="cuponBtn">쿠폰</div>
					<div id="orderBtn">주문</div>	
				</div>
			</div>
		</section>



		<!-- 모달 -->
		<jsp:include page="/WEB-INF/views/includes/modal/modalKFC.jsp" />
		<!-- 모달 -->
		
		<!-- 모달 -->
		<jsp:include page="/WEB-INF/views/includes/modal/shareModal.jsp" />
		<!-- 모달 -->
	</div>

	<!-- 풋터 -->
	<jsp:include page="/WEB-INF/views/includes/footer.jsp" />
	<!-- 풋터 -->
</body>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/kfc/main.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/kfc/modal.js"></script>


</html>