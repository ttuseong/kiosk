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

<title>키오스크-롯데리아</title>
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/WEB-INF/views/includes/header.jsp" />
	<!-- 헤더 -->
	
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<table style="width:100%; border:1px solid black;">
					<thead>
						<tr>
							<td>제품</td>
							<td>수량</td>
							<td>가격</td>
						</tr>
					</thead>
					
					<tbody>
						<tr>
							<td>제품</td>
							<td>수량</td>
							<td>가격</td>
						</tr>
						<tr>
							<td>제품</td>
							<td>수량</td>
							<td>가격</td>
						</tr>
						<tr>
							<td>제품</td>
							<td>수량</td>
							<td>가격</td>
						</tr>
						<tr>
							<td>제품</td>
							<td>수량</td>
							<td>가격</td>
						</tr>
						<tr>
							<td>제품</td>
							<td>수량</td>
							<td>가격</td>
						</tr>
						<tr>
							<td>제품</td>
							<td>수량</td>
							<td>가격</td>
						</tr>
						<tr>
							<td>제품</td>
							<td>수량</td>
							<td>가격</td>
						</tr>
						<tr>
							<td>제품</td>
							<td>수량</td>
							<td>가격</td>
						</tr>
						<tr>
							<td>제품</td>
							<td>수량</td>
							<td>가격</td>
						</tr>
						<tr>
							<td>제품</td>
							<td>수량</td>
							<td>가격</td>
						</tr>
					</tbody>
				</table>
			</div>
			
			<div class="col-md-6">
				
			</div>
		</div>
		<div class="row" style="height: 60px;">
			<div class="col-md-4" style="height: 100%;">
				<div style="border: 1px solid black; height: 100%; width: 60px; float: left;"></div>
				<div style="border: 1px solid black; height: 100%; width: 60px; float: left;"></div>
				<div style="border: 1px solid black; height: 100%; width: 60px; float: left;"></div>
				<div style="border: 1px solid black; height: 100%; width: 60px; float: left;"></div>
			</div>
			<div class="col-md-4"
				style="height: 100%; text-align: center; margin-top: 10px;">
				<button type="button"
					style="height: 80%; width: 80%; font-size: 20px; background-color: white; border-radius: 12px;">취소하기</button>
			</div>
			<div class="col-md-4" style="height: 100%; text-align: center; margin-top: 10px;">
				<button type="button" style="height: 80%; width: 80%; font-size: 20px; background-color: #F9A7B0; border-radius: 12px;"
					onclick="location.href='${pageContext.request.contextPath}/lotteria/order'">추가주문</button>
			</div>
		</div>

		<!-- 풋터 -->
	<jsp:include page="/WEB-INF/views/includes/footer.jsp" />
	<!-- 풋터 -->
</body>
</html>