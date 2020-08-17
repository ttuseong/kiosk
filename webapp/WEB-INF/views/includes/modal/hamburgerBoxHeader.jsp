<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="hamburgerBoxSideContiner">
	<img src="${pageContext.request.contextPath}/assets/images/icon1.png"
		class="img-hamburgerBoxFix">
	<div>
		<h4 class="modal-title hamburgerBoxLabel"></h4>
		<p class="burgerBoxDesc"></p>
	</div>
	<div id="hamburgerBoxCount">
		<!-- 모달 -->
		<jsp:include page="/WEB-INF/views/includes/modal/countBtn.jsp" />
		<!-- 모달 -->
	</div>
	<div id="hamburgerBoxMoney">
		<div class="icon-won">
			<p>금액</p>`
		</div>
		<p class="burgerBoxPrice"></p>
	</div>

</div>