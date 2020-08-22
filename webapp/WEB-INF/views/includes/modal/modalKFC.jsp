<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 추천메뉴 모달 -->
<!-- id="modalName(임의지정)" => 모달 사용 용도에 따라 아이디를 부여해주세요! -->
<div class="modal" id="recommend">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">이런 메뉴 어떠세요?</h4>
			</div>
				<div class="modal-body" id="recommend-body">
			</div>
			<div class="modal-footer">

				<button type="button" class="btn btnCancle" id="recommend-btn" data-dismiss="modal">취소</button>
				<button type="button" class="btn btnComplete" id="">완료</button>
			</div>
		</div>	
	</div>
		<!-- /.modal-content -->
</div>
	<!-- /.modal-dialog -->
<!-- /.modal -->

<!-- 장소 선택 모달 -->
<!-- id="modalName(임의지정)" => 모달 사용 용도에 따라 아이디를 부여해주세요! -->
<div class="modal" id="placeSelect">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">식사 장소를 선택해주세요</h4>
			</div>
			<div class="modal-body">
				<div class="placeSelectBodyContiner">
					<div class="placeSelectBodyContentContiner">
						<div class="placeSelectBodyContent">
							<img alt="매장 식사 아이콘" src="${pageContext.request.contextPath}/assets/images/icon1.png">
							<h5>매장식사</h5>
							<p>EAT IN</p>
						</div>
						<p>다회용 용기 제공</p>
					</div>
					<div class="placeSelectBodyContentContiner">
						<div class="placeSelectBodyContent">
							<img alt="매장 식사 아이콘" src="${pageContext.request.contextPath}/assets/images/icon1.png">
							<h5>포장주문</h5>
							<p>TO GO</p>
						</div>
						<p>다회용 용기 제공</p>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btnCancle" data-dismiss="modal">취소</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- 결제수단 모달 -->
<!-- id="modalName(임의지정)" => 모달 사용 용도에 따라 아이디를 부여해주세요! -->
<div class="modal" id="paySelect">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">결제 수단을 선택해 주세요</h4>
			</div>
			<div class="modal-body">
				<div id="select-container">
					<div id="selectCardGroup">
						<div id="credit">
							<div class="icon-credit-card"></div>
							<p>신용카드</p>
						</div>
						<div id="prepaidcard">
							<div class="icon-credit-card"></div>
							<p>KFC 선불카드</p>
						</div>
					</div>
					<div id="selectPayCode">
						<div class="payCodeContianer">
							<div class="icon-credit-card"></div>
							<p>카카오 페이</p>
						</div>
						<div class="payCodeContianer">
							<div class="icon-credit-card"></div>
							<p>제로페이</p>
						</div>
						<div class="payCodeContianer">
							<div class="icon-credit-card"></div>
							<p>OK 캐쉬백</p>
						</div>
						<div class="payCodeContianer">
							<div class="icon-credit-card"></div>
							<p>BC 페이북 QR</p>
						</div>
						<div class="payCodeContianer">
							<div class="icon-credit-card"></div>
							<p>누구냐 넌</p>
						</div>
						<div class="payCodeContianer"></div>
					</div>
				</div>

				<!-- 위, 아래 이동 화살표 -->
				<jsp:include page="/WEB-INF/views/includes/modal/updownArrow.jsp" />
				<!-- 위, 아래 이동 화살표 -->

			</div>
			<div class="modal-footer">
				<button type="button" class="btn btnCancle" data-dismiss="modal">이전</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- 박스/세트/단품 선택 모달 -->
<div class="modal" id="selectMode">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header" id="selectModeHeader">
				<div id="selectModeContainer">
					<div id="buggerText">
						<h1 id="selectModeMainName"></h1>
						<p id="selectModeMainDesc"></p>
					</div>
					<img id="selectModeMainImg" alt="버거 이미지"
						src="${pageContext.request.contextPath}/assets/images/icon1.png">
				</div>
			</div>
			<div class="modal-body">
				
				<div id="selectModeMainContent">
				
					<!-- 위, 아래 이동 화살표 -->
					<jsp:include page="/WEB-INF/views/includes/modal/updownArrow.jsp" />
					<!-- 위, 아래 이동 화살표 -->
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				<button type="button" class="btn btn-danger" id="selectedModecompleted">완료</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<!-- 박스/세트/단품 선택 모달 -->

<!-- 결제 내역 모달 -->
<div class="modal" id="paymentDetails">
	<div class="modal-dialog">
		<div class="modal-content" id="paymentDetailsContent">
			<div class="modal-header" id="paymentDetailsHeader">
				<div class="icon-credit-card">
					<p>아이콘</p>
				</div>
				<p>신용카드</p>
			</div>
			<div class="modal-body" id="paymentDetailsBody">
				<div>
					<p id="paymentDetailsDes">결제 금액</p>
					<p id="paymentDetailsMoney">5,800</p>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				<button type="button" class="btn btn-danger">완료</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- 햄버거박스 사이드 메뉴 -->
<div class="modal" id="hamburgerBoxSideMenu">
	<div class="modal-dialog">
		<div class="modal-content" id="hamburgerBoxContent">
			<div class="modal-header hamburgerBoxHeader">
				<jsp:include page="/WEB-INF/views/includes/modal/hamburgerBoxHeader.jsp" />
			</div>
			<div class="modal-body hamburgerBoxBody">
				<div id="hamburgerBoxBodyContainer">
					
				</div>	
			</div>
			<div class="modal-footer" id="hamburgerSideFooter">
				<button type="button" class="btn btnCancle" data-dismiss="modal">취소</button>
				<button type="button" class="btn btnComplete" id="hamburgerBoxSideMenuComplete">완료</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- 사이드 변경 모달 -->
<div class="modal" id="sideChange">
	<div class="modal-dialog">
		<div class="modal-content" id="hamburgerBoxContent">
			<div class="modal-header hamburgerBoxHeader" id="hamburgerBoxHeader">
				<jsp:include page="/WEB-INF/views/includes/modal/hamburgerBoxHeader.jsp" />
			</div>
			<div class="modal-body" id="hamburgerBox-SideChangeBody">
				<div class="icon-left-open-big sideChangeBtn" id="hamburgerBox-SideChangeBodyLeftBtn"></div>
				<div class="icon-right-open-big sideChangeBtn" id="hamburgerBox-SideChangeBodyRightBtn"></div>
				<div id="sideChangeTitle">
						<p>사이드 변경</p>
				</div>
				<div id="sideChangeContainer">
					<div id="sideChangeContents">
					
					</div>
				</div>
			</div>
			<div class="modal-footer" id="hamburgerSideFooter">
				<button type="button" class="btn btnComplete" id="sideChangeComplete">선택</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- 버거 토핑 모달 -->
<div class="modal" id="bugerTopping">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header hamburgerBoxHeader" id="bugerToppingHeader">
				<jsp:include page="/WEB-INF/views/includes/modal/hamburgerBoxHeader.jsp"/>
			</div>
			<div class="modal-body" id="bugerToppingBody">
				<div id="bugerToppingContiner">
					<h5>버거재료 추가</h5>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-danger" id="bugerToppingCompleted">완료</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- 나의 주문 리스트 모달 -->
	<!-- id="modalName(임의지정)" => 모달 사용 용도에 따라 아이디를 부여해주세요! -->
	<div class="modal" id="MyOrderListModal">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        	<h4 class="modal-title">나의 주문 리스트</h4> 
	      </div>
	      <div class="modal-body"> 
	      	<div class="orderlist-container">
	      		<div class="orderlist-header">
	      			<div class="orderlist-menu">
      					<p>메뉴</p>
      				</div>
      				<div class="orderlist-cnt">
      					<p>수량</p>
      				</div>
      				<div class="orderlist-price">
      					<p>가격</p>
      				</div>
	      		</div>
	      		
	      		<div class="orderlist-body">
	      			<div class="orderList-tableDiv">
	      				<table class="orderList-table">

		      			</table>
	      			</div>
	      			
	      			<div class="orderList-pagingBtn">
		      			<div class="icon-up-open-big" id="orderList-pagingUp"><!-- up 화살표 --></div>
		      			<div class="icon-down-open-big" id="orderList-pagingDown"><!-- down 화살표 --></div>
	      			</div>
      			</div>
	      		
	      		<div class="orderlist-footer">
	      			<div class="orderlist-sum"> <!-- 합계 -->
	      				<div class="order-total">
	      					<p>합계</p>
	      				</div>
	      				<div class="order-totalMenu">
	      					<p></p>
	      				</div>
	      				<div class="order-totalPrice">
	      					<p></p>
	      				</div>
	      			</div>
	      			
	      			<div class="orderlist-discount"> <!-- 할인 -->
	      				<div class="order-discount">
	      					<p>할인</p>
	      				</div>
	      				<div class="order-discountedPrice">
	      					<p>0</p>
	      				</div>
	      			</div>
	      			
	      			<div class="orderlist-total"> <!-- 총 결제 금액 -->
	      				<div class="order-total">
	      					<p>총 결제 금액</p>
	      				</div>
	      				<div class="order-totalPrice">
	      					<p></p>
	      				</div>
	      			</div>
	      		</div>
     		</div>
          </div> 
	      <div class="modal-footer">
	        <button type="button" class="btn btnCancle" data-dismiss="modal">취소</button>
	        <button type="button" class="btn btnComplete">결제</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
