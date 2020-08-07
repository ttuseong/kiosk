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
            <div id="paySelectCount">
            	<div id="paySelectContainer">
            		<div class="icon-up-open-big paySelectUp">
            			<p>up</p>
            		</div>
            		<div class="icon-down-open-big paySelectDown">
            			<p>down</p>
            		</div>
            	</div>
            </div>
          </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btnCancle" data-dismiss="modal">이전</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	
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
			      			<tr>
				      			<td id="orderlist-menuName"> (행사)닭껍질튀김 + 텐더 </td>
				      			<td id="orderlist-menuCnt"> 2 </td>
				      			<td id="orderlist-menuPrice"> 7,000 </td>
				      		</tr>
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
	      					<p>9</p>
	      				</div>
	      				<div class="order-totalPrice">
	      					<p>15,100</p>
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
	      					<p>15,100</p>
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