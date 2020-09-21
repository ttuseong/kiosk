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
<link href="/kiosk/assets/css/kioskMain/main.css" rel="stylesheet" type="text/css">

<!-- 자바스크립트 -->
<script type="text/javascript" src="/kiosk/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="/kiosk/assets/bootstrap/js/bootstrap.js"></script>

<title>키오스크</title>
</head>
<body>

	<!-- 헤더 -->
	<jsp:include page="/WEB-INF/views/includes/header.jsp" />
	<!-- 헤더 -->

	<div class="container">
		<div>
			<div class="brandDiv">
				<a href="${pageContext.request.contextPath}/KFC/index">
					<div class="brandImg">
						<img src="${pageContext.request.contextPath}/assets/images/kfclogo.png" width=" 100%">
					</div>
					
					<div class="brandText">
						<p style="font-size:30px;">kfc</p>
					</div>
				</a>
			</div>
			
			<div class="brandDiv">
				<a href="${pageContext.request.contextPath}/lotteria/index">
					<div class="brandImg">
						<img src="${pageContext.request.contextPath}/assets/images/lotteria/lotteriaLogo.gif" width=" 100%">
					</div>
					
					<div class="brandText">
						<p style="font-size:30px;">롯데리아</p>
					</div>
				</a>
			</div>
			
			
		</div>
	</div>

	<!-- 모달 -->
		<jsp:include page="/WEB-INF/views/includes/modal/shareModal.jsp" />
	<!-- 모달 -->


	<!-- 풋터 -->
	<jsp:include page="/WEB-INF/views/includes/footer.jsp" />
	<!-- 풋터 -->

</body>
<script type="text/javascript">
	$("#surveyModal").modal();
</script>
</html>