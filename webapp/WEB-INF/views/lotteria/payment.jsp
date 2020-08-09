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
<link href="/kiosk/assets/css/lotteria/payment.css" rel="stylesheet" type="text/css">

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

		<div style="background-color: pink;text-align: center; font-size: 40px;">원하시는 결제방법을 선택해주세요</div>
		
		<div class="row" style="border-bottom:0.5px solid gray;padding: 40px 0 40px 0;">
			<a href="${pageContext.request.contextPath}/lotteria/order">
				<div class="col-md-6">
					<div>
						<img src="${pageContext.request.contextPath}/assets/images/card.jpg" width="100%;height:30%;">
					</div>
				</div>

				<div class="col-md-6">
					<p style="font-size: 40px; color: pink;">카드</p>
					<p style="font-size: 20px;">
						신용/체크카드<br> 모바일금액권<br> 간편결제<br> 
						(L.pay, 삼성페이, LG페이,
						알리페이, 카카오페이, PAYCO)
					</p>
				</div>
			</a>
		</div>

		<div class="row" style="padding: 20px 0 20px 0;text-align: center;">
			<div class="col-md-6" style="border-right: 0.5px solid gray;">
				<a href="${pageContext.request.contextPath}/lotteria/order">
					<div>
						<img src="${pageContext.request.contextPath}/assets/images/pay.jpg">
					</div>
					
					<div>
						<br>
						<p style="color:green; font-size:40px;">디지털쿠폰/교환권</p>
						<p style="font-size: 20px;">롯데리아제품교환권(지류)<br>모바일제품교환권<br>(스마트쿠폰)</p>
					</div>
				</a>
			</div>
			
			<div class="col-md-6">
				<a href="${pageContext.request.contextPath}/lotteria/order">
					<div>
						<img src="${pageContext.request.contextPath}/assets/images/cash.jpg">
					</div>
					
					<div>
						<br>
						<p style="color:blue;font-size:40px;">현금</p>
						<p style="font-size: 20px;">주문은 여기서 하시고 결제는 카운터에서 해주세요</p>
					</div>
				</a>
			</div>
		</div>
		
		<div class="row" style="height: 60px;">
			<div class="col-md-6" style="height: 100%;">
				<div style="border: 1px solid black; height: 100%; width: 60px; float: left;"></div>
				<div style="border: 1px solid black; height: 100%; width: 60px; float: left;"></div>
				<div style="border: 1px solid black; height: 100%; width: 60px; float: left;"></div>
				<div style="border: 1px solid black; height: 100%; width: 60px; float: left;"></div>
			</div>
			<div class="col-md-6" style="height: 100%; text-align: center; margin-top: 10px;">
				<button type="button" style="width:85%; height:55px;border-radius: 12px;font-size: 20px;"> 할인행사안내</button>
			</div>
		</div>
		
	</div>
	
	<!-- 풋터 -->
	<jsp:include page="/WEB-INF/views/includes/footer.jsp" />
	<!-- 풋터 -->


</body>
</html>