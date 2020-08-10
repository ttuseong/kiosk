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
	      <div class="modal-body">
	      	<div class="menu-container">
	      		<p><img src="${pageContext.request.contextPath}/assets/images/icon1.png" class="img-responsive"></p>
                <p class="menuName">메뉴이름</p>
                <p class="menuPrice">메뉴 가격</p>
            </div>
          </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btnCancle" data-dismiss="modal">취소</button>
	        <button type="button" class="btn btnComplete">완료</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	
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
	      			<div class="payCodeContianer">
	      				
	      			</div>
	      		</div>
            </div>
            
            <!-- 위, 아래 이동 화살표 -->
			<jsp:include page="/WEB-INF/views/includes/modal/updownArrow.jsp" />
			<!-- 위, 아래 이동 화살표 -->
            
          </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btnCancle" data-dismiss="modal">이전</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->

<!-- 박스/세트/단품 선택 모달 -->
<div class="modal" id="selectMode">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header" id="selectModeHeader">
				<div id="selectModeContainer">
					<div id="buggerText">
						<h1>징거더블다운맥스</h1>
						<p>오직 치킨 통살구이로만 구성된 리얼 치킨버거</p>
					</div>
					<img alt="버거 이미지"
						src="${pageContext.request.contextPath}/assets/images/icon1.png">
				</div>
			</div>
			<div class="modal-body">
				<div class="selectModeBodyContainer">
					<div class="icon-check selectModeCheckBox">
						<p>채크박스</p>
					</div>
					<div class="selectModeBodyContent">
						<h2 class="selectModeName">징거더블다운박스</h2>
						<div class="selectModeCompose">
							<p>구성</p>
						</div>
						<p class="selectModeMenuGroup">징거버거더블다운맥스 + 사이드변경 + 음료 변경 + 치킨
							변경</p>
						<p class="selectModePrice">9,600</p>
					</div>
					<img alt=""
						src="${pageContext.request.contextPath}/assets/images/icon1.png">
				</div>

				<div class="selectModeBodyContainer">
					<div class="icon-check selectModeCheckBox">
						<p>채크박스</p>
					</div>
					<div class="selectModeBodyContent">
						<h2 class="selectModeName">징거더블다운맥스세트</h2>
						<div class="selectModeCompose">
							<p>구성</p>
						</div>
						<p class="selectModeMenuGroup">징거버거더블다운맥스 + 사이드변경 + 음료 변경</p>
						<p class="selectModePrice">8,500</p>
					</div>
					<img alt=""
						src="${pageContext.request.contextPath}/assets/images/icon1.png">
				</div>

				<div class="selectModeBodyContainer">
					<div class="icon-check selectModeCheckBox">
						<p>채크박스</p>
					</div>
					<div class="selectModeBodyContent">
						<h2 class="selectModeName">징거더블다운맥스</h2>
						<div class="selectModeCompose">
							<p>구성</p>
						</div>
						<p class="selectModeMenuGroup">징거버거더블다운맥스</p>
						<p class="selectModePrice">6,600</p>
					</div>
					<img alt=""
						src="${pageContext.request.contextPath}/assets/images/icon1.png">
				</div>

				<!-- 위, 아래 이동 화살표 -->
				<jsp:include page="/WEB-INF/views/includes/modal/updownArrow.jsp" />
				<!-- 위, 아래 이동 화살표 -->
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
			<div class="modal-header" id="hamburgerBoxHeader">
				<div id="hamburgerBoxImg">
					<img
						src="${pageContext.request.contextPath}/assets/images/icon1.png"
						class="img-hamburgerBoxFix">
					<div>
						<h4 class="modal-title" id="hamburgerBoxLabel">징거더블다운박스</h4>
						<p>징거더블다운박스+사이드변경+음료변경+치킨변경</p>
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
						<p>9,600</p>
					</div>
					
				</div>
			</div>
			<div class="modal-body" id="hamburgerBoxBody">
				<div id="hamburgerBoxBodyContainer">
					<div class="menu-container" id="menuSet">
						<img
							src="${pageContext.request.contextPath}/assets/images/icon1.png"
							class="img-responsive">
						<div>
							<p class="menuName">메뉴이름</p>
							<p class="menuPrice">메뉴가격</p>
						</div>
						<button type="button" id="hamburgerBoxButton">버거재료 추가</button>
					</div>
					<div class="menu-container" id="menuSet">
						<img
							src="${pageContext.request.contextPath}/assets/images/icon1.png"
							class="img-responsive">
						<div>
							<p class="menuName">메뉴인데</p>
						</div>
							<button type="button" id="hamburgerBoxButton">버거재료 추가</button>
					</div>
					<div class="menu-container" id="menuSet">
						<img
							src="${pageContext.request.contextPath}/assets/images/icon1.png"
							class="img-responsive">
						<div>
							<p class="menuName">유재학</p>
						</div>
							<button type="button" id="hamburgerBoxButton">버거재료 추가</button>
					</div>
					<div class="menu-container" id="menuSet">
						<img
							src="${pageContext.request.contextPath}/assets/images/icon1.png"
							class="img-responsive">
						<div>
							<p class="menuName">재학버거</p>
						</div>
							<button type="button" id="hamburgerBoxButton">버거재료 추가</button>
					</div>
				</div>
			</div>
			<div class="modal-footer" id="hamburgerSideFooter">
				<button type="button" class="btn btnCancle" data-dismiss="modal">취소</button>
				<button type="button" class="btn btnComplete">완료</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->
		

	