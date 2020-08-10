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
<link href="/kiosk/assets/css/lotteria/orderList.css" rel="stylesheet" type="text/css">
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
				<table class="border-height400px" frame="hsides">
					<colgroup>
						<col width="auto">
						<col width="20%">
						<col width="30%">
					</colgroup>
					<thead>
						<tr>
							<th>제품</th>
							<th>수량</th>
							<th>가격</th>
						</tr>
					</thead>
					
					<tbody>
						<tr>
							<td>레몬에이드L</td>
							<td class="center">3</td>
							<td class="right">8,400</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td class="center">&nbsp;</td>
							<td class="right">&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td class="center">&nbsp;</td>
							<td class="right">&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td class="center">&nbsp;</td>
							<td class="right">&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td class="center">&nbsp;</td>
							<td class="right">&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td class="center">&nbsp;</td>
							<td class="right">&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td class="center">&nbsp;</td>
							<td class="right">&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td class="center">&nbsp;</td>
							<td class="right">&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td class="center">&nbsp;</td>
							<td class="right">&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td class="center">&nbsp;</td>
							<td class="right">&nbsp;</td>
						</tr>
					</tbody>
				</table>
				
				
				<!-- 페이징 -->
				<div>
				<페이징처리 할 부분	>	
				</div>
				<!-- 페이징 -->
				
				<table class="table-border" frame="hsides">
					<tr>
						<td>주문금액</td>
						<td>8,400</td>
					</tr>
					
					<tr>
						<td>할인금액</td>
						<td>0</td>
					</tr>
					
					<tr>
						<td>결제할금액</td>
						<td>8,400</td>
					</tr>
					
					<tr>
						<td>결제한금액</td>
						<td>0</td>
					</tr>
					
				</table>
			</div>
			
			<div class="col-md-6">
				
			</div>
		</div>
		<div class="row" style="height: 60px;">
			<div class="col-md-4" style="height: 100%;">
				<div class="icon-wheelchair helpIcon"><p>장애인</p></div>
				<div class="icon-search helpIcon"><p>돋보기</p></div>
				<div class="icon-volume-high helpIcon"><p>직원호출</p></div>
				<div class="icon-left-small helpIcon"><p>이전</p></div>
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
	</div>
		<!-- 풋터 -->
	<jsp:include page="/WEB-INF/views/includes/footer.jsp" />
	<!-- 풋터 -->
</body>
</html>