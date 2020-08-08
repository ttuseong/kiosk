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
		
		<div class="underLine">
			<img src="${pageContext.request.contextPath}/assets/images/card.jpg" width=" 50%" style="float: left;">
			<div style="width:50%;float: left;">
				<p style="font-size: 70px; color: pink;">카드</p>
				<p style="font-size: 40px;">신용/체크카드 <br>모바일금액권<br> 칸편결제<br>(L.pay, 삼성페이, LG페이,<br> 알리페이, 카카오페이, PAYCO)</p></div>
		</div>
		
		
		
		
	</div>
	
	<!-- 풋터 -->
	<jsp:include page="/WEB-INF/views/includes/footer.jsp" />
	<!-- 풋터 -->


</body>
</html>