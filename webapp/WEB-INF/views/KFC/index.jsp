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
	<div id="tooltipContainer">
		<span class="tooltip-text">
			주문전<br>
			- 카테고리와 메뉴르를 클릭하여 원하시는 메뉴를 주문합니다<br><br>
			주문후<br>
			- 주문 버튼을 클릭해주세요
		</span>
		<span class="tooltip-text">
			세트 구성<br>
			 - 보이시는 구성 중 원하시는 것을 클릭한 후 완료 버튼을 클릭하세요
		</span>
		<span class="tooltip-text">
			사이드 변경 선택<br>
			 - 사이드나 토핑 변경을 원하시면 해당되는 변경버튼을 클릭하고<br>
			  &nbsp;&nbsp;&nbsp;아닌경우 완료버튼을 클릭하세요
		</span>
		<span class="tooltip-text">
			토핑 변경<br>
			 - 원하시는 토핑을 플러스와 마이너스 버튼을 이용하여<br>
			 &nbsp;&nbsp;&nbsp;갯수를 설정하고 완료버튼을 클릭하세요<br>
			사이드 변경<br>
			 - 원하시는 메뉴를 클릭한 후 완료버튼을 클릭하세요
		</span>
		<span class="tooltip-text">
			장소 선택<br>
			 - 희망하는 장소를 클릭하세요
		</span>
		<span class="tooltip-text">
			추천 메뉴<br>
			 - 추가로 원하시는 메뉴가 있는 경우 메뉴를 클릭하고 완료버튼을 눌러주세요
		</span>
		<span class="tooltip-text">
			주문 리스트<br>
			 - 주문 내역을 확인한 후 결제 버튼을 클릭해주세요
		</span>
		<span class="tooltip-text">
			결제 수단<br>
			 - 원하시는 결제 수단을 클릭해주세요
		</span>
		<span class="tooltip-text">
			확인<br>
			 - 결제 방법 및 금액을 확인한 후 결제 버튼을 클릭하세요
		</span>
		<span class="tooltip-text">
			결제<br>
			 - 결제 방법을 숙지하신 후 확인 버튼을 클릭하세요<br>
			  ※실제 메장에서는 화면에 나타난 설명대로 결제를 진행해야 결제가 완료됩니다.
		</span>
	</div>
	<div id="kfc">
		<section id="FKCHeader">
			<h1>
				<a>KFC</a>
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
						<c:when test="${cateVo.highlight==1 }">
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