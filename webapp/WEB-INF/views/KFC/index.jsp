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
				<c:forEach items="${map.cateList }" var="cateVo">
					<c:choose>
						<c:when test="${cateVo.isSet==1 }">
							<li class="categoryColorRed">
						</c:when>
						<c:otherwise>
							<li class="categoryColorWhite">
						</c:otherwise>
					</c:choose>
						<a href="${pageContext.request.contextPath}/KFC/index?categoryNo=${cateVo.categoryNo}">
							<img class="categoryImg" alt="매장행사 이미지" src="${pageContext.request.contextPath}/assets/images/icon1.png">
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
					<c:set var="loop_flag" value="false"></c:set>
					<c:forEach begin="1" end="${((fn:length(map.menuList))/9)+(1-(((fn:length(map.menuList))/9)%1))%1}" var="i">
						<div>
							<c:forEach begin="1" end="9" var="j">
								<c:if test="${((i-1)*9+j-1) == fn:length(map.menuList)}">
									<c:set var="loop_flag" value="true"></c:set>
								</c:if>
								<c:if test="${not loop_flag }">
									<div class="menu" data-no="${map.menuList[(i-1)*9+j-1].menuNo}" data-status="${map.menuList[(i-1)*9+j-1].isSet}">
										<img class="menuImg" alt="메뉴 이미지" src="${pageContext.request.contextPath}/assets/images/icon1.png">
										<div class="menuContent">
											<p>${map.menuList[(i-1)*9+j-1].menuName}</p>
											<p>${map.menuList[(i-1)*9+j-1].menuPrice}</p>
										</div>
									</div>
								</c:if>
							</c:forEach>
						</div>						
					</c:forEach>
				</div>
			</nav>
		</section>

		<section id="pageSection">
			<div id="pagecontainer">
				<button id="btnLeft" class="btnPage">이전</button>
				<ul id="pageCircleGroup">
					<c:forEach var="current" begin="1" end="${map.menuMaxCount }">
						<li><div class="pageCircle 
						<c:if test="${1 == current }">
							pageActive
						</c:if>
						
						">${current}</div></li>
					</c:forEach>
				</ul>
				<button id="btnRight" class="btnPage">다음</button>
			</div>
		</section>
		
		<section id="menuTableSection">
			<div id="tableSize">
				<table id="menuTable">
					<thead>
						<th>메뉴</th>
						<th>수량</th>
						<th>가격</th>
						<th></th>
					</thead>
					<tbody>
						<tr>
							<td>
								<div class="textarea">
									<p>[행사] 커넬통다리버거세트</p>
									<p>- 커널통다리버거 2개, 후렌치후라이(M), 콜라(M) 2개</p>
								</div>
							</td>
							<td>
								<div class="count">
									<div class="icon-minus iconCombination"></div>
									<p>1</p>
									<div class="icon-plus iconCombination"></div>
								</div>
							</td>
							<td>
								<div class="price">
									<div class="pricePos">
										<p>5,800</p>
										<div class="icon-cancel"></div>
									</div>
								</div>
							</td>
							<td rowspan="4">
								<div id="scrollGroup">
									<div class="icon-up-open-big">
										<p>up</p>
									</div>
									<div class="icon-down-open-big">
										<p>down</p>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
						</tr>

					</tbody>
				</table>
			</div>
		</section>
		<section id="ordersection">
			<div id="ordercontainer">
				<div id="orderLeft">
					<div class="orderCount">
						<p class="string">수량</p>
						<p class="number">1</p>
					</div>
					<div class="orderCount">
						<p class="string">금액</p>
						<p class="number">5,800</p>
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
	</div>

	<!-- 풋터 -->
	<jsp:include page="/WEB-INF/views/includes/footer.jsp" />
	<!-- 풋터 -->
</body>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/kfc/main.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/kfc/modal.js"></script>




<script type="text/javascript">	
</script>




</html>