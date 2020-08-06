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
					<div class="menu">
						<div class="menu-img"><img src="${pageContext.request.contextPath}/assets/images/icon1.png" width=" 100%"></div>
						<div class="menu-text">
							<div>착한한우세트</div>
							<div class="menu-price">7,900</div>
						</div>
					</div>
					<div class="menu">
						<div class="menu-img"><img src="${pageContext.request.contextPath}/assets/images/icon1.png" width=" 100%"></div>
						<div class="menu-text">
							<div>착한AZ버거세트</div>
							<div class="menu-price">7,500</div>
						</div>
					</div>
					<div class="menu">
						<div class="menu-img"><img src="${pageContext.request.contextPath}/assets/images/icon1.png" width=" 100%"></div>
						<div class="menu-text">
							<div>착한DOUBLEX2세트</div>
							<div class="menu-price">6,800</div>
						</div>
					</div>
					<div class="menu">
						<div class="menu-img"><img src="${pageContext.request.contextPath}/assets/images/icon1.png" width=" 100%"></div>
						<div class="menu-text">
							<div>착한핫크리스피세트</div>
							<div class="menu-price">6,000</div>
						</div>
					</div>
					<div class="menu">
						<div class="menu-img"><img src="${pageContext.request.contextPath}/assets/images/icon1.png" width=" 100%"></div>
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
	</div>
	<table style="width:100%;text-align: center;background-color:#FFF8DC;font-size: 15px;">
		<colgroup>
			<col width="33%">
			<col width="33%">
			<col width="33%">
		</colgroup>
		<tr style="height: 50px;background-color: #F0FFFF;text-align:center;padding-top: 12px;font-size: 20px;">
			<td>총주문내역</td>
			<td>2 개</td>
			<td style="text-align: right;color:red;">13,000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
		</tr>
		
		<tr>
			<td>치즈인더에그</td>
			<td>1</td>
			<td>
				<div class="row">
				  <div class="col-md-6">3,000</div>
				  <div class="col-md-6"><button type="button">삭제</button></div>
				</div>
			</td>
		</tr>
		
		<tr>
			<td>1인혼닭</td>
			<td>1</td>
			<td>
				<div class="row">
				  <div class="col-md-6">10,000</div>
				  <div class="col-md-6"><button type="button">삭제</button></div>
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
	<div class="row">
	  <div class="col-md-4 icon-wheelchair" stlye="font-size:100px;"></div>
	  <div class="col-md-4">.col-md-4</div>
	  <div class="col-md-4">.col-md-4</div>
	</div>
	<!-- 풋터 -->
	<jsp:include page="/WEB-INF/views/includes/footer.jsp" />
	<!-- 풋터 -->

</body>

</html>