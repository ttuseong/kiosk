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
<link href="/kiosk/assets/css/lotteria/orderList.css" rel="stylesheet" type="text/css">
<link href="/kiosk/assets/css/fontello/css/fontello.css" rel="stylesheet" type="text/css">

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
		<div style="border:8px solid #990012;height:300px;text-align: center;">
			<p style="font-size: 50px;">고객님들의<br> 안전과 질병 예방을 위해<br> 무인포스는 매시간 살균, 소독을<br> 실시하고 있습니다.</p>
		</div>
		<div class="row">
			<div class="col-md-6">
				<table class="border-height400px" frame="hsides">
					<colgroup>
						<col width="auto">
						<col width="20%">
						<col width="30%">
					</colgroup>
					<thead>
						<tr>
							<th>제품</th>
							<th>수량</th>
							<th>가격</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td>레몬에이드L</td>
							<td class="center">3</td>
							<td class="right">8,400</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td class="center">&nbsp;</td>
							<td class="right">&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td class="center">&nbsp;</td>
							<td class="right">&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td class="center">&nbsp;</td>
							<td class="right">&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td class="center">&nbsp;</td>
							<td class="right">&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td class="center">&nbsp;</td>
							<td class="right">&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td class="center">&nbsp;</td>
							<td class="right">&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td class="center">&nbsp;</td>
							<td class="right">&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td class="center">&nbsp;</td>
							<td class="right">&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td class="center">&nbsp;</td>
							<td class="right">&nbsp;</td>
						</tr>
					</tbody>
				</table>


				<!-- 페이징 -->
				<div>

					<section id="pageSection">
						<div id="pagecontainer">
							<button id="btnLeft" class="btnPage" type="button">이전</button>
							<ul id="pageCircleGroup">
								<li><div class="pageCircle pageActive">1</div></li>
								<li><div class="pageCircle">1</div></li>
								<li><div class="pageCircle">1</div></li>
							</ul>
							<button id="btnRight" class="btnPage" type="button">다음</button>
						</div>
					</section>


				</div>
				<!-- 페이징 -->

				<table class="table-border" frame="hsides">
					<colgroup>
						<col width="auto">
						<col width="30%">
					</colgroup>
					<tr>
						<td>주문금액</td>
						<td>8,400</td>
					</tr>

					<tr>
						<td>할인금액</td>
						<td>0</td>
					</tr>
				</table>
				<div class="outside-div">
					<div class="insid-div_left">결제할금액</div>
					<div class="insid-div_right">8,400</div>
				</div>

				<div class="outside-div2">
					<div class="insid-div_left2">결제한금액</div>
					<div class="insid-div_right2">0</div>
				</div>

				<div class="outside-div height100px">
					<div class="outside-div3">
						<div class="insid-div_left3">결제종류</div>
						<div class="insid-div_right3">금액</div>
					</div>

					<div>
						<div></div>
						<div></div>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div style="border: 2px solid red; padding: 5px;">
					<div class="subtitle">Step 1 포장을 선택하세요.</div>

					<div class="img-inline_block" style="border-right: 1px solid gray; width: 49%;">
						<img src="${pageContext.request.contextPath}/assets/images/package.jpg" width="100%">
					</div>

					<div class="img-inline_block" style="width: 49%;">
						<img src="${pageContext.request.contextPath}/assets/images/shop.jpg" width="100%">
					</div>

					<div class="subtitle">Step 2 할인/적립을 선택하세요.</div>
					<div class="img-inline_block img-3size">
						<img src="${pageContext.request.contextPath}/assets/images/discaount.jpg" width="100%" style="height: 100%;">
					</div>
					<div class="img-inline_block img-3size">
						<img src="${pageContext.request.contextPath}/assets/images/LPOINT.jpg" width="100%" style="height: 100%;">
					</div>
					<div class="img-inline_block img-3size">
						<img src="${pageContext.request.contextPath}/assets/images/noSelect.jpg" width="100%" style="height: 100%;">
					</div>

					<div class="subtitle">Step 3 결제를 선택하세요.</div>
					<div class="img-inline_block img-3size">
						<img src="${pageContext.request.contextPath}/assets/images/lotteria/card2.jpg" width="100%" style="height: 100%;">
					</div>
					<div class="img-inline_block img-3size">
						<img src="${pageContext.request.contextPath}/assets/images/lotteria/pay.jpg" width="100%" style="height: 100%;">
					</div>
					<div class="img-inline_block img-vertical">
						<div class="img-2size">
							<img src="${pageContext.request.contextPath}/assets/images/lotteria/L.point.jpg" width="100%" style="height: 100%;">
						</div>
						<div class="img-2size">
							<img src="${pageContext.request.contextPath}/assets/images/lotteria/transportation.jpg" width="100%" style="height: 100%;">
						</div>
					</div>
				</div>
			</div>
		</div>







		<div class="row" style="height: 60px;">
			<div class="col-md-4" style="height: 100%;">
				<div class="icon-wheelchair helpIcon">
					<p>장애인</p>
				</div>
				<div class="icon-search helpIcon">
					<p>돋보기</p>
				</div>
				<div class="icon-volume-high helpIcon">
					<p>직원호출</p>
				</div>
				<div class="icon-left-small helpIcon">
					<p>이전</p>
				</div>
			</div>
			<div class="col-md-4"
				style="height: 100%; text-align: center; margin-top: 10px;">
				<button type="button" style="height: 80%; width: 80%; font-size: 20px; background-color: white; border-radius: 12px;" onclick="location.href='${pageContext.request.contextPath}/lotteria/order'" >취소하기</button>
			</div>
			<div class="col-md-4"
				style="height: 100%; text-align: center; margin-top: 10px;">
				<button type="button" style="height: 80%; width: 80%; font-size: 20px; background-color: #F9A7B0; border-radius: 12px;" onclick="location.href='${pageContext.request.contextPath}/lotteria/order'">추가주문</button>
			</div>
		</div>
	</div>
	<!-- 풋터 -->
	<jsp:include page="/WEB-INF/views/includes/footer.jsp" />
	<!-- 풋터 -->


	<!-- 결제 취소 모달 -->
	<div class="modal" id="modalName01">
		<div class="modal-dialog" id="orderListMsgModal-align">
			<div class="modal-content" id="orderListMsgModal-content">
				<div class="modal-header" id="orderListMsgModal-header">
					<h4 class="modal-title" id="orderListMsgModal-headerTitle">알림</h4>
				</div>
				<!-- modal-header -->

				<div class="modal-body" id="orderListMsgModal-body">
					<p>결제를 취소하시겠습니까?</p>
				</div>
				<!-- modal-body -->

				<div class="modal-footer" id="orderListMsgModal-footer">
					<div class="orderListMsgModal-btnContainer">
						<button type="button" class="btn orderListMsgModal-btnComplete">예</button>
						<button type="button" class="btn orderListMsgModal-btnCancle">아니오</button>
					</div>
				</div>
				<!-- modal-footer -->
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<!-- 결제 완료 알림 모달 -->
	<div class="modal" id="modalName02">
		<div class="modal-dialog" id="orderListMsgModal-align">
			<div class="modal-content" id="orderListMsgModal-content">
				<div class="modal-header" id="orderListMsgModal-header">
					<h4 class="modal-title" id="orderListMsgModal-headerTitle">알림</h4>
				</div>
				<!-- modal-header -->

				<div class="modal-body" id="orderListMsgModal-body">
					<p>이용해주셔서 감사합니다.</p>
				</div>
				<!-- modal-body -->

				<div class="modal-footer" id="orderListMsgModal-footer">
					<div class="orderListMsgModal-btnContainer">
						<button type="button" class="btn orderListMsgModal-btnComplete">확인</button>
					</div>
				</div>
				<!-- modal-footer -->
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<!-- 카드 승인 취소 알림 모달 -->
	<div class="modal" id="modalName03">
		<div class="modal-dialog" id="orderListMsgModal-align">
			<div class="modal-content" id="orderListMsgModal-content">
				<div class="modal-header" id="orderListMsgModal-header">
					<h4 class="modal-title" id="orderListMsgModal-headerTitle">알림</h4>
				</div>
				<!-- modal-header -->

				<div class="modal-body" id="orderListMsgModal-body">
					<p>카드 승인을 취소하였습니다.<br>
					다시 시도해주세요.</p>
				</div>
				<!-- modal-body -->

				<div class="modal-footer" id="orderListMsgModal-footer">
					<div class="orderListMsgModal-btnContainer">
						<button type="button" class="btn orderListMsgModal-btnComplete">확인</button>
					</div>
				</div>
				<!-- modal-footer -->
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

</body>
<script type="text/javascript">
	/* $(document).ready(function() {
		$("#modalName03").modal();
	}); */
</script>

</html>