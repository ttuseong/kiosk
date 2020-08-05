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
					<table>
					<colgroup>
						<col width="50%">
						<col width="50%">
					</colgroup>
						<tr>
							<td class="menu">
								<div style="width:40%; float:left;"> 
								<img src="${pageContext.request.contextPath}/assets/images/icon1.png" width=" 100%">
								</div>
								<div style="width:60%;float:left; margin-top: 75px;">
									<div>
									착한AZ버거세트
									</div>
									<div>
									7,500
									</div>
								</div>
							</td>
							<td class="menu">
								<img src="${pageContext.request.contextPath}/assets/images/icon1.png" width="30%">
								착한AZ버거세트<br>
								7,500
							</td>
						</tr>
						
						<tr>
							<td class="menu">
								<img src="${pageContext.request.contextPath}/assets/images/icon1.png" width="30%">
								착한DOUBLEX2세트<br>
								6,800
							</td>
							<td class="menu">
								<img src="${pageContext.request.contextPath}/assets/images/icon1.png" width="30%">
								착한핫크리스피세트<br>
								6,000
							</td>
						</tr>
						
						<tr>
							<td class="menu">
								<img src="${pageContext.request.contextPath}/assets/images/icon1.png" width="30%">
								착한데리세트<br>
								4,000
							</td>
							<td class="menu">
								
							</td>
						</tr>
					</table>	
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
	<!-- 풋터 -->
	<jsp:include page="/WEB-INF/views/includes/footer.jsp" />
	<!-- 풋터 -->
</body>
</html>