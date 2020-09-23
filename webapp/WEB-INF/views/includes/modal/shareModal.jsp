<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link
	href="${pageContext.request.contextPath}/assets/css/share/modal.css"
	rel="stylesheet" type="text/css">
	
<!-- id="modalName(임의지정)" => 모달 사용 용도에 따라 아이디를 부여해주세요! -->
<div class="modal" id="surveyModal">
	<div class="modal-dialog">
		<div class="modal-content" id="serveyContent">
			<div class="modal-header" id="serveyHeader">
	        	<h4 class="modal-title" id="serveyTitle">주문을 완료했습니다! 해보니깐 어떤가요?</h4>
	      	</div>
			<div class="modal-body" id="serveyBody">
				<a href="/kiosk/share/addServeyData?levels=쉬움" class="serveyImgContainer">
					<img class="serveyHidden" src="${pageContext.request.contextPath}/assets/images/shareModal/happy.gif">
					<img class="serveyDefaultImg" src="${pageContext.request.contextPath}/assets/images/shareModal/happy.png">
					<span class="serveryText">쉽다</span>
				</a>
				<a href="/kiosk/share/addServeyData?levels=어려움" class="serveyImgContainer">
					<img class="serveyHidden" src="${pageContext.request.contextPath}/assets/images/shareModal/stuffy.gif">
					<img class="serveyDefaultImg" src="${pageContext.request.contextPath}/assets/images/shareModal/stuffy.png">
					<span class="serveryText">어렵다</span>
				</a>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/share/shareModal.js"></script>
