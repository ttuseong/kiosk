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
<link href="/kiosk/assets/css/fontello/css/fontello.css" rel="stylesheet" type="text/css">
<link href="/kiosk/assets/css/share/share.css" rel="stylesheet" type="text/css">

<!-- 자바스크립트 -->
<script type="text/javascript" src="/kiosk/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="/kiosk/assets/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="/kiosk/assets/js/lotteria/payment.js"></script>

<!-- 쿠키 플러그인 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.js"></script>

<title>키오스크-롯데리아</title>
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/WEB-INF/views/includes/header.jsp" />
	<!-- 헤더 -->
	
	<span class="tooltip-text"> 
		결제<br>
		 - 선택하신 메뉴와 금액을 확인한 후,<br> 
		 식사 장소를 선택하고 주문완료 버튼을 클릭하세요
	</span> 
	
	<div class="container width800height1200">
		
		<div class="color-pink">원하시는 결제방법을 선택해주세요</div>
		
		<div class="row border-bottom">
			<a class="nextBtn" href="${pageContext.request.contextPath}/lotteria/order">
				<div class="col-md-6">
					<div>
						<img src="${pageContext.request.contextPath}/assets/images/lotteria/card.jpg" width="100%">
					</div>
				</div>

				<div class="col-md-6">
					<p class="font-colorPink">카드</p>
					<p class="font-size20px">
						신용/체크카드<br> 모바일금액권<br> 간편결제<br> 
						(L.pay, 삼성페이, LG페이,
						알리페이, 카카오페이, PAYCO)
					</p>
				</div>
			</a>
		</div>

		<div class="row padding10px">
			<div class="col-md-6 border-right">
				<a class="nextBtn" href="${pageContext.request.contextPath}/lotteria/order">
					<div>
						<img src="${pageContext.request.contextPath}/assets/images/lotteria/pay.jpg" style="height: 300px;">
					</div>
					
					<div>
						<br>
						<p class="green-40px">디지털쿠폰/교환권</p>
						<p class="font-size20px">롯데리아제품교환권(지류)<br>모바일제품교환권<br>(스마트쿠폰)</p>
					</div>
				</a>
			</div>
			
			<div class="col-md-6">
				<a class="nextBtn" href="${pageContext.request.contextPath}/lotteria/order">
					<div style="width:100%;">
						<img src="${pageContext.request.contextPath}/assets/images/lotteria/cash.jpg" width="100%">
					</div>
					
					<div>
						<br>
						<p class="blue-40px">현금</p>
						<p class="font-size20px">주문은 여기서 하시고 결제는 카운터에서 해주세요</p>
					</div>
				</a>
			</div>
		</div>
		
		<div class="row helpIconDiv">
			<div class="col-md-6" style="height: 100%;">
				<div class="icon-wheelchair helpIcon" >
					<p>장애인</p>
				</div>
				<div class="icon-search helpIcon">
					<p>돋보기</p>
				</div>
				<div class="icon-volume-high helpIcon">
					<p>직원호출</p>
				</div>
				<div class="icon-left-small helpIcon"onclick="location.href='${pageContext.request.contextPath}/lotteria/index'">
					<p>이전</p>
				</div>
			</div>
			<div class="col-md-6 margin-top10px">
				<button type="button" class="btn-border_radius12px"> 할인행사안내</button>
			</div>
		</div>
	</div>
	
	<!-- 풋터 -->
	<jsp:include page="/WEB-INF/views/includes/footer.jsp" />
	<!-- 풋터 -->


</body>
<script type="text/javascript" src="/kiosk/assets/js/lotteria/share.js"></script>
<script type="text/javascript" src="/kiosk/assets/js/share/shareModal.js"></script>
</html>