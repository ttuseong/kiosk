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
<link href="/kiosk/assets/css/lotteria/main.css" rel="stylesheet" type="text/css">

<!-- 자바스크립트 -->
<script type="text/javascript" src="/kiosk/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="/kiosk/assets/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="/kiosk/assets/js/lotteria/main.js"></script>

<title>키오스크</title>
</head>
<body>

	<!-- 헤더 -->
	<jsp:include page="/WEB-INF/views/includes/header.jsp" />
	<!-- 헤더 -->

	<div class="container">
		<div>
			<div style="border: 3px solid #A3D0C3;width: 20%;height: 300px;display: inline-block;margin: 15px;background-color: white;border-radius: 10px;">
				<a href="${pageContext.request.contextPath}/KFC/index">
					<div style="width: 100%;height: 75px;margin-top: 40px;padding-top: 5px;background-color: #A3D0C3;">
						<img src="${pageContext.request.contextPath}/assets/images/kfclogo.png" width=" 100%">
					</div>
					
					<div style="text-align:center;background-color: #A3D0C3;margin-top: 50px;padding: 5px;height: 50px;">
						<p style="font-size:30px;">kfc</p>
					</div>
				</a>
			</div>
			
			<div style="border: 3px solid #A3D0C3;width: 20%;height: 300px;display: inline-block;margin: 15px;background-color: white;border-radius: 10px;">
				<a href="${pageContext.request.contextPath}/lotteria/index">
					<div style="width: 100%;height: 75px;margin-top: 40px;padding-top: 5px;background-color: #A3D0C3;">
						<img src="${pageContext.request.contextPath}/assets/images/lotteria/lotteriaLogo.gif" width=" 100%">
					</div>
					
					<div style="text-align:center;background-color: #A3D0C3;margin-top: 50px;padding: 5px;height: 50px;">
						<p style="font-size:30px;">롯데리아</p>
					</div>
				</a>
			</div>
			
			
		</div>
	</div>



	<!-- 풋터 -->
	<jsp:include page="/WEB-INF/views/includes/footer.jsp" />
	<!-- 풋터 -->

</body>
</html>