<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 메타태그 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- css -->
<link href="/kiosk/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="/kiosk/assets/css/lotteria/order.css" rel="stylesheet" type="text/css">
<link href="/kiosk/assets/css/fontello/css/fontello.css" rel="stylesheet" type="text/css">

<!-- 자바스크립트 -->
<script type="text/javascript" src="/kiosk/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="/kiosk/assets/bootstrap/js/bootstrap.js"></script>
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
				<img src="${pageContext.request.contextPath}/assets/images/icon1.png" width="100%">
			</div>
			<div class="width50">
				<h2>사이다</h2>
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
				<li><a href="#tab1">착한점심</a></li>
				<li><a href="#tab2">추천메뉴</a></li>
				<li><a href="#tab3">햄버거</a></li>
				<li><a href="#tab4">디저트/치킨</a></li>
			</ul>

			<!--탭 콘텐츠 영역 -->
			<div class="tab_container">

				<div id="tab1" class="tab_content">
					<!--Content-->
					<div class="menu" data-no="21">
						<div class="menu-img">
							<img src="${pageContext.request.contextPath}/assets/images/icon1.png" width=" 100%">
						</div>
						<div class="menu-text">
							<div>착한한우세트</div>
							<div class="menu-price">7,900</div>
						</div>
					</div>
					<div class="menu" data-no="21">
						<div class="menu-img">
							<img src="${pageContext.request.contextPath}/assets/images/icon1.png" width=" 100%">
						</div>
						<div class="menu-text">
							<div>착한AZ버거세트</div>
							<div class="menu-price">7,500</div>
						</div>
					</div>
					<div class="menu" data-no="21">
						<div class="menu-img">
							<img src="${pageContext.request.contextPath}/assets/images/icon1.png" width=" 100%">
						</div>
						<div class="menu-text">
							<div>착한DOUBLEX2세트</div>
							<div class="menu-price">6,800</div>
						</div>
					</div>
					<div class="menu" data-no="21">
						<div class="menu-img">
							<img src="${pageContext.request.contextPath}/assets/images/icon1.png" width=" 100%">
						</div>
						<div class="menu-text">
							<div>착한핫크리스피세트</div>
							<div class="menu-price">6,000</div>
						</div>
					</div>
					<div class="menu" data-no="21">
						<div class="menu-img">
							<img src="${pageContext.request.contextPath}/assets/images/icon1.png" width=" 100%">
						</div>
						<div class="menu-text">
							<div>착한데리세트</div>
							<div class="menu-price">4,000</div>
						</div>
					</div>


				</div>

				<div id="tab2" class="tab_content">
					<!--Content-->
					<h1>tab2영역</h1>
					내용 내용 내용 내용 내용 내용
				</div>

				<div id="tab3" class="tab_content">
					<!--Content-->
					<h1>tab2영역</h1>
					내용 내용 내용 내용 내용 내용
				</div>

				<div id="tab4" class="tab_content">
					<!--Content-->
					<h1>tab2영역</h1>
					내용 내용 내용 내용 내용 내용
				</div>

			</div>

		</div>
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
		
		<div class="row height60" >
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
				<button type="button" class="btn-backColor" onclick="location.href='${pageContext.request.contextPath}/lotteria/orderList'" >결제하기</button>
			</div>
		</div>
	</div>
	<!-- 풋터 -->
	<jsp:include page="/WEB-INF/views/includes/footer.jsp" />
	<!-- 풋터 -->










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
								<div><img src="${pageContext.request.contextPath}/assets/images/icon1.png" width="130px"></div>
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
					<div class="modalFooter-width33"><button type="button" data-dismiss="modal" class="modalFooter-btn1">취소하기</button></div>
					<div class="modalFooter-width33"><button type="button"class="modalFooter-btn2">선택완료</button></div>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- 토핑모달 -->


	<!-- 단품, 세트 선택 모달 -->
	<!-- id="modalName(임의지정)" => 모달 사용 용도에 따라 아이디를 부여해주세요! -->
	<div class="modal" id="modalName">
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
							<div class="modalName-select" id="modalName-onlyBurger">
								<p> <img src="${pageContext.request.contextPath}/assets/images/icon1.png" id="modalName-onlyBurgerImg"> </p>
								<p>버거만</p>
							</div>
							<p id="modalName-Price">5,800</p>
						</div>
						<div class="modalName-setMenu">
							<div class="modalName-select" id="modalName-setMenu">
								<p><img src="${pageContext.request.contextPath}/assets/images/icon1.png" id="modalName-setMenuImg"></p>
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
	
</body>
</html>