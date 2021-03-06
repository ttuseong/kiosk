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
<link href="/kiosk/assets/css/share/modal.css" rel="stylesheet" type="text/css">
<link href="/kiosk/assets/css/share/share.css" rel="stylesheet" type="text/css">
<!-- 자바스크립트 -->
<script type="text/javascript" src="/kiosk/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="/kiosk/assets/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="/kiosk/assets/js/lotteria/orderList.js"></script>

<title>키오스크-롯데리아</title>
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/WEB-INF/views/includes/header.jsp" />
	<!-- 헤더 -->
	
	<span class="tooltip-text"> 
		결제<br>
 		- 선택하신 메뉴와 금액을 확인한 후 식사 장소를 선택하신 후에 주문완료 버튼을 클릭하세요
	</span> 
	
	<div class="container width800height1200">

		<div class="row">
			<div class="col-md-6">
				<table class="border-height420px" frame="hsides">
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
							<td>${menuList.menuName1 }</td>
							<td class="center">${menuList.number1 }</td>
							<td class="right">${menuList.menuPrice1}</td>
						</tr>
						<tr>
							<td>${menuList.menuName2 }</td>
							<td class="center">${menuList.number2 }</td>
							<td class="right">${menuList.menuPrice2}</td>
						</tr>
						<tr>
							<td>${menuList.menuName3}</td>
							<td class="center">${menuList.number3}</td>
							<td class="right">${menuList.menuPrice3}</td>
						</tr>
						<tr>
							<td>${menuList.menuName4 }</td>
							<td class="center">${menuList.number4 }</td>
							<td class="right">${menuList.menuPrice4}</td>
						</tr>
						<tr>
							<td>${menuList.menuName5 }</td>
							<td class="center">${menuList.number5 }</td>
							<td class="right">${menuList.menuPrice5}</td>
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
						<td class="orderPrice"></td>
					</tr>

					<tr>
						<td>할인금액</td>
						<td>0</td>
					</tr>
				</table>
				<div class="outside-div">
					<div class="insid-div_left">결제할금액</div>
					<div class="insid-div_right orderPrice"></div>
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
						<div>asd</div>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="border-red">
					<!-- 포장을선택 -->
					<div id="selectPackage">
						<div class="subtitle">Step 1 포장을 선택하세요.</div>
						
						<div>
							<div class="img-inline_block border-right">
								<img src="${pageContext.request.contextPath}/assets/images/lotteria/package.jpg" width="100%">
								<div></div>
							</div>
		
							<div class="img-inline_block width49">
								<img src="${pageContext.request.contextPath}/assets/images/lotteria/shop.jpg" width="100%">
								<div></div>
							</div>
							
						</div>
											</div>
					<!-- 포장을선택 -->
					
					<!-- 적립을 선택 -->
					<div id="discount" class="selectDisable">
						<div class = 'subtitle gray'></div>
						<div class="subContents">포장 선택후 주문 완료를<br> 누르시면 주문완료가 됩니다.</div>
					</div>
					<!-- 적립을 선택 -->
					
					<!-- 결제를 선택 -->
					<div id="payment" class="selectDisable">
						<div class = 'subtitle gray'></div>	
						<div class="subContents">결제는 주문하신 제품을<br> 받으실때 하시면 됩니다.</div>
					</div>
					<!-- 결제를 선택 -->
					
					
				</div>
			</div>
		</div>

		<div class="row" style="height: 60px;">
			<div class="col-md-4 height100">
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
			<div class="col-md-4 margin-top10px">
				<button type="button" class="btn1" id="cancel">취소하기</button>
			</div>
			<div class="col-md-4 margin-top10px">
				<button type="button" class="btn2" onclick="lotteriaClear()">주문완료</button>
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
						<button type="button" class="btn orderListMsgModal-btnComplete" id="cancelDouble-check">예</button>
						<button type="button" class="btn orderListMsgModal-btnCancle"data-dismiss="modal">아니오</button>
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
						<button type="button" class="btn orderListMsgModal-btnComplete" id="ok">확인</button>
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
	
	<!-- 설문 모달 -->
	<jsp:include page="/WEB-INF/views/includes/modal/shareModal.jsp" />
	<!-- 헤더 -->
	
</body>
<script type="text/javascript" src="/kiosk/assets/js/lotteria/share.js"></script>
<script type="text/javascript" src="/kiosk/assets/js/share/shareModal.js"></script>

</html>