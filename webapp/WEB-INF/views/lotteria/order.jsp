<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 메타태그 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- css -->
<link href="/kiosk/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="/kiosk/assets/css/lotteria/order.css" rel="stylesheet"type="text/css">
<link href="/kiosk/assets/css/fontello/css/fontello.css"rel="stylesheet" type="text/css">

<!-- 자바스크립트 -->
<script type="text/javascript" src="/kiosk/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript"src="/kiosk/assets/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="/kiosk/assets/js/lotteria/order.js"></script>

<title>키오스크-롯데리아</title>
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/WEB-INF/views/includes/header.jsp" />
	<!-- 헤더 -->

	<div class="container width800height1200">
		<div class="height250">
			<div class="width300">
				<imgsrc="${pageContext.request.contextPath}/assets/images/icon1.png" width="100%">
			</div>
			<div class="width50">
				<h2>사이다氷</h2>
				<br>
				<h4>톡톡 쏘는 청량감이 느껴지는 음료</h4>
			</div>
			<div class="width-auto">
				<!-- <button type="button" class="btn-red">&nbsp;&nbsp;영양성분&nbsp;&nbsp;</button> -->
			</div>
		</div>

		<div id="wrapper">
			<!--탭 메뉴 영역 -->
			<ul class="tabs">
				<c:forEach items="${categoryList}" var="vo">
					<li><a href="#tab${vo.categoryNo}">${ vo.categoryName}</a></li>
				</c:forEach>
			</ul>

			<!--탭 콘텐츠 영역 -->
			<div class="tab_container" id="tab_menu">
				<c:forEach items="${categoryList }" var="vo">
					<div id="tab${vo.categoryNo }" class="tab_content">

						<c:forEach items="${menuList }" var="menu" >
							<c:if test="${vo.categoryNo eq menu.categoryNo }">
							<div class="menu">
								<div class="menu-img">
									<img src="${pageContext.request.contextPath}/upload/${menu.menuImg }"width=" 100%">
								</div>
								<div class="menu-text">
									<div>${menu.menuName}</div>
									<div class="menu-price">${menu.menuPrice}</div>
								</div>
							</div>
							</c:if>
						</c:forEach>
						
						<c:if test="${vo.categoryNo eq 4}">
							<c:forEach items="${cateNo4SetMenu }" var="cateNo4">

								<div class="menu">
									<div class="menu-img">
										<img src="${pageContext.request.contextPath}/upload/${cateNo4.setImg }" width=" 100%">
									</div>
									<div class="menu-text">
										<div>${cateNo4.setName}</div>
										<div class="menu-price">${cateNo4.setPrice}</div>
									</div>
								</div>
							</c:forEach>
  						</c:if>

					</div>
				</c:forEach>
			</div>
				<!--Content-->
			
			<table class="table-center">
				<colgroup>
					<col width="33%">
					<col width="33%">
					<col width="33%">
				</colgroup>
				<tr class="tr-center">
					<td>총주문내역</td>
					<td>2 개</td>
					<td class="td-red">13,000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				</tr>

				<tr>
					<td>치즈인더에그</td>
					<td>1</td>
					<td>
						<div class="row">
							<div class="col-md-6">3,000</div>
							<div class="col-md-6">
								<button type="button">삭제</button>
							</div>
						</div>
					</td>
				</tr>

				<tr>
					<td>1인혼닭</td>
					<td>1</td>
					<td>
						<div class="row">
							<div class="col-md-6">10,000</div>
							<div class="col-md-6">
								<button type="button">삭제</button>
							</div>
						</div>
					</td>
				</tr>

				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>


			</table>

			<div class="row height60">
				<div class="col-md-4 height100">
					<div class="icon-wheelchair helpIcon">
						<p>장애인</p>
					</div>
					<div class="icon-search helpIcon">
						<p>돋보기</p>
					</div>
					<div class="icon-volume-high helpIcon">
						<p>직원호출</p>
					</div>
					<div class="icon-left-small helpIcon">
						<p>이전</p>
					</div>
				</div>
				<div class="col-md-4 margin-top10px">
					<button type="button" class="btn-radius12px" onclick="location.href='${pageContext.request.contextPath}/lotteria/payment'">취소하기</button>
				</div>
				<div class="col-md-4 margin-top10px">
					<button type="button" class="btn-backColor" onclick="location.href='${pageContext.request.contextPath}/lotteria/orderList'">결제하기</button>
				</div>
			</div>
		</div>






		<!-- 토핑모달 -->
		<div class="modal fade" id="topping">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">세트_디저트</h4>
					</div>
					<div class="modal-body modal-height800px">

						<!--탭 메뉴 영역 -->
						<ul class="modal-tabs">
							<li><a href="#modal-tab1">세트_디저트</a></li>
							<li><a href="#modal-tab2">세트_드링크</a></li>
						</ul>

						<!--탭 콘텐츠 영역 -->
						<div class="modal-tab_container">

							<div id="modal-tab1" class="modal-tab_content">
								<!--Content-->
								<div class="modal-float">
									<div>
										<img src="${pageContext.request.contextPath}/assets/images/icon1.png" width="130px">
									</div>
									<div class="modal-center">
										포테이토
										<p class="modal-red">0</p>
									</div>
								</div>

								<div class="modal-float">
									<div>
										<img src="${pageContext.request.contextPath}/assets/images/icon1.png" width="130px">
									</div>
									<div class="modal-center">
										양념감자
										<p class="modal-red">500</p>
									</div>
								</div>

								<div class="modal-float">
									<div>
										<img src="${pageContext.request.contextPath}/assets/images/icon1.png" width="130px">
									</div>
									<div class="modal-center">
										치즈스틱
										<p class="modal-red">500</p>
									</div>
								</div>

								<div class="modal-float">
									<div>
										<img src="${pageContext.request.contextPath}/assets/images/icon1.png" width="130px">
									</div>
									<div class="modal-center">
										오지어링
										<p class="modal-red">700</p>
									</div>
								</div>
							</div>

							<div id="modal-tab2" class="modal-tab_content">
								<!--Content-->
								<h1>tab2영역</h1>
								내용 내용 내용 내용 내용 내용
							</div>


						</div>

					</div>
					<div class="modal-footer">
						<div class="modalFooter-float">
							<ul class="modalfooter-color">
								<li>선택수량: 2</li>
								<li>잔여수량: 0</li>
							</ul>
						</div>
						<div class="modalFooter-width33">
							<button type="button" data-dismiss="modal" class="modalFooter-btn1">취소하기</button>
						</div>
						<div class="modalFooter-width33">
							<button type="button" class="modalFooter-btn2">선택완료</button>
						</div>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- 토핑모달 -->


		<!-- 단품, 세트 선택 모달 -->
		<!-- id="modalName(임의지정)" => 모달 사용 용도에 따라 아이디를 부여해주세요! -->
		<div class="modal" id="setAndSingle">
			<div class="modal-dialog" id="modalName-align">
				<div class="modal-content" id="modalName-content">

					<div class="modal-header" id="modalName-header">
						<h4 class="modal-title" id="modalName-headerTitle">세트로 드시겠어요?</h4>
						<div class="modalName-closeBtnDiv">
							<!-- 취소버튼 -->
							<div class="icon-cancel modalName-closeBtn" data-dismiss="modal"></div>
						</div>
					</div>
					<!-- modal-header -->

					<div class="modal-body" id="modalName-body">
						<div class="modalName-container">
							<div class="modalName-onlyBurger">

								<div class="modalName-select" id="modalName-onlyBurger" data-dismiss="modal">
									<p>
										<img src="${pageContext.request.contextPath}/assets/images/icon1.png" id="modalName-onlyBurgerImg">
									</p>
									<p>버거만</p>
								</div>
								<p id="modalName-Price">5,800</p>
							</div>

							<div class="modalName-setMenu">
								<div class="modalName-select" id="modalName-setMenu">
									<p>
										<img src="${pageContext.request.contextPath}/assets/images/icon1.png" id="modalName-setMenuImg">
									</p>
									<p>세트</p>
								</div>
								<p id="modalName-Price">7,600</p>
							</div>
						</div>
					</div>
					<!-- modal-body -->
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
	</div>
	
	<!-- 풋터 -->
	<jsp:include page="/WEB-INF/views/includes/footer.jsp" />
	<!-- 풋터 -->
</body>

</html>