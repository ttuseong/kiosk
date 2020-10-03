<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 메타태그 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- css -->
<link href="/kiosk/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="/kiosk/assets/css/kioskMain/main.css" rel="stylesheet" type="text/css">
<link href="/kiosk/assets/css/fontello/css/fontello.css" rel="stylesheet" type="text/css">

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
			<c:forEach items="${list}" var="vo">
				<div class="brandDiv">
					<a href="${pageContext.request.contextPath}/${vo.storeName }/index?no=${vo.storeNo }">
						<div class="brandImg">
							<img src="${pageContext.request.contextPath}/${vo.storeName }/${vo.storeLogo }" style="width:100%">
						</div>
						
						<div class="brandText">
							<p style="font-size:30px;">${vo.storeName }</p>
						</div>
					</a>
				</div>
			</c:forEach>
		</div>
	</div>

	<!-- 풋터 -->
	<jsp:include page="/WEB-INF/views/includes/footer.jsp" />
	<!-- 풋터 -->

</body>
</html>