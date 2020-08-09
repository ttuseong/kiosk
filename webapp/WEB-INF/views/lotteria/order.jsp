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

	<div class="container">
		<div style="height: 400px;">
			<div style="width: 400px; float: left;">
				<img src="${pageContext.request.contextPath}/assets/images/icon1.png" width="100%">
			</div>
			<div style="width: 50%; height: 100%; border: 1px solid balck; float: left;">
				<h2>사이다</h2>
				<br>
				<h4>톡톡 쏘는 청량감이 느껴지는 음료</h4>
			</div>
			<div style="width: auto;">
				<button type="button" style="background-color: red; margin: 20px; color: white; border-radius: 5px;">&nbsp;&nbsp;영양성분&nbsp;&nbsp;</button>
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
		<table style="width: 100%; text-align: center; background-color: #FFF8DC; font-size: 15px;">
			<colgroup>
				<col width="33%">
				<col width="33%">
				<col width="33%">
			</colgroup>
			<tr style="height: 50px; background-color: #F0FFFF; text-align: center; padding-top: 12px; font-size: 20px;">
				<td>총주문내역</td>
				<td>2 개</td>
				<td style="text-align: right; color: red;">13,000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
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
		<div class="row" style="height: 60px;">
			<div class="col-md-4" style="height: 100%;">
				<div style="border: 1px solid black; height: 100%; width: 60px; float: left;"></div>
				<div style="border: 1px solid black; height: 100%; width: 60px; float: left;"></div>
				<div style="border: 1px solid black; height: 100%; width: 60px; float: left;"></div>
				<div style="border: 1px solid black; height: 100%; width: 60px; float: left;"></div>
			</div>
			<div class="col-md-4" style="height: 100%; text-align: center; margin-top: 10px;">
				<button type="button" style="height: 80%; width: 80%; font-size: 20px; background-color: white; border-radius: 12px;">취소하기</button>
			</div>
			<div class="col-md-4" style="height: 100%; text-align: center; margin-top: 10px;">
				<button type="button" style="height: 80%; width: 80%; font-size: 20px; background-color: #F9A7B0; border-radius: 12px;" onclick="location.href='${pageContext.request.contextPath}/lotteria/orderList'" >결제하기</button>
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
				<div class="modal-body" style="height: 800px;">

					<!--탭 메뉴 영역 -->
					<ul class="modal-tabs">
						<li><a href="#modal-tab1">세트_디저트</a></li>
						<li><a href="#modal-tab2">세트_드링크</a></li>
					</ul>

					<!--탭 콘텐츠 영역 -->
					<div class="modal-tab_container">

						<div id="modal-tab1" class="modal-tab_content">
							<!--Content-->
							<div style="float: left;">
								<div>
									<img src="${pageContext.request.contextPath}/assets/images/icon1.png" width="130px">
								</div>
								<div style="text-align: center;">
									포테이토
									<p style="color: red;">0</p>
								</div>
							</div>

							<div style="float: left;">
								<div>
									<img src="${pageContext.request.contextPath}/assets/images/icon1.png" width="130px">
								</div>
								<div style="text-align: center;">
									양념감자
									<p style="color: red;">500</p>
								</div>
							</div>

							<div style="float: left;">
								<div>
									<img src="${pageContext.request.contextPath}/assets/images/icon1.png" width="130px">
								</div>
								<div style="text-align: center;">
									치즈스틱
									<p style="color: red;">500</p>
								</div>
							</div>

							<div style="float: left;">
								<div>
									<img src="${pageContext.request.contextPath}/assets/images/icon1.png" width="130px">
								</div>
								<div style="text-align: center;">
									오지어링
									<p style="color: red;">700</p>
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
					<div style="width:33%;height:100%;float: left;padding-top: 7px;">
						<ul style="background-color: #FFEBCD; width: 80%; margin-left: 40px; height: 80%; padding-top: 8px;">
							<li>선택수량: 2</li>
							<li>잔여수량: 0</li>
						</ul>
					</div>
					<div style="width:33%;height:100%;float: left;"><button type="button" data-dismiss="modal" style="width:80%; height:75%;margin-top: 7px;border-radius: 10px;background-color: white;font-size: 20px;">취소하기</button></div>
					<div style="width:33%;height:100%;float: left;"><button type="button"style="width:80%; height:75%;margin-top: 7px;border-radius: 10px; background-color:#93FFE8;font-size: 20px;">선택완료</button></div>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- 토핑모달 -->




</body>

</html>