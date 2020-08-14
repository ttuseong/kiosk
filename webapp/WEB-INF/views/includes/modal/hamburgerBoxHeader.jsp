<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="hamburgerBoxSideContiner">
	<img src="${pageContext.request.contextPath}/assets/images/icon1.png"
		class="img-hamburgerBoxFix">
	<div>
		<h4 class="modal-title" id="hamburgerBoxLabel">징거더블다운박스</h4>
		<p id="burgerBoxDesc">징거더블다운박스+사이드변경+음료변경+치킨변경</p>
	</div>
	<div id="hamburgerBoxCount">
		<!-- 모달 -->
		<jsp:include page="/WEB-INF/views/includes/modal/countBtn.jsp" />
		<!-- 모달 -->
	</div>
	<div id="hamburgerBoxMoney">
		<div class="icon-won">
			<p>금액</p>
		</div>
		<p id="burgerBoxPrice"></p>
	</div>

</div>