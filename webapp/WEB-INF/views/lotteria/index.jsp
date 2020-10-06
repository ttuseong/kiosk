<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 메타태그 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- css -->
<link href="/kiosk/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="/kiosk/assets/css/lotteria/index.css" rel="stylesheet" type="text/css">
<link href="/kiosk/assets/css/share/share.css" rel="stylesheet" type="text/css">

<!-- 자바스크립트 -->
<script type="text/javascript" src="/kiosk/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="/kiosk/assets/bootstrap/js/bootstrap.js"></script>


<!-- 쿠키 플러그인 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.js"></script>

<title>키오스트-롯데리아</title>
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/WEB-INF/views/includes/header.jsp" />
	<!-- 헤더 -->
	
	<div id="tooltipContainer">
		<span class="tooltip-text"> 
		광고 페이지<br>
		 - 가운데 이미지를 마우스로 클릭해주세요
		</span> 
	</div>
	
	<div class="container width800height1200">
		<a class="nextBtn" href="${pageContext.request.contextPath}/lotteria/payment"><img src="${pageContext.request.contextPath}/assets/images/lotteria/lotteria_main.png" width="700px"style = "height:855px;"></a>
	</div>
	
	<!-- 풋터 -->
	<jsp:include page="/WEB-INF/views/includes/footer.jsp" />
	<!-- 풋터 -->

</body>
	<script type="text/javascript" src="/kiosk/assets/js/lotteria/share.js"></script>
	<script type="text/javascript" src="/kiosk/assets/js/share/shareModal.js"></script>
	<script type="text/javascript" src="/kiosk/assets/js/lotteria/index.js"></script>
</html>