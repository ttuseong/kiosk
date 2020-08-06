<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title></title>
    
    <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/KFC/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/KFC/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/KFC/modal.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/KFC/fontello/css/fontello.css">
  	
  	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
  	
  </head>
  <body>
    <div id="kfc">
      <header>
        <h1><a href="#">KFC</a></h1>
        <nav class="spot">
          <ul>
            <li>HOME</li>
            <li>사용안내</li>
            <li>영양정보</li>
            <li>language</li>
          </ul>
        </nav>
      </header>

      <section id="categorySection">
        <nav id="category">
          <ul>
            <li class="categoryColorRed"><div class="categoryImg"></div><p>매장행사</p></li>
            <li class="categoryColorRed"><div class="categoryImg"></div><p>신메뉴</p></li>
            <li class="categoryColorWhite"><div class="categoryImg"></div><p>치킨</p></li>
            <li class="currentSelect"><div class="categoryImg"></div><p>버거/세트/박스</p></li>
            <li class="categoryColorWhite"><div class="categoryImg"></div><p>사이드</p></li>
            <li class="categoryColorWhite"><div class="categoryImg"></div><p>음료</p></li>
          </ul>
        </nav>
      </section>
      <section id="menuSection">
        <nav>
          <ul>
            <li class="menu">
              <div class="menuImg"></div>
              <div class="menuContent">
                <p>징거버거</p>
                <p>5600원</p>
              </div>
            </li>
            <li class="menu">
              <div class="menuImg"></div>
              <div class="menuContent">
                <p>징거버거</p>
                <p>5600원</p>
              </div>
            </li>
            <li class="menu">
              <div class="menuImg"></div>
              <div class="menuContent">
                <p>징거버거</p>
                <p>5600원</p>
              </div>
            </li>
            <li class="menu">
              <div class="menuImg"></div>
              <div class="menuContent">
                <p>징거버거</p>
                <p>5600원</p>
              </div>
            </li>
            <li class="menu">
              <div class="menuImg"></div>
              <div class="menuContent">
                <p>징거버거</p>
                <p>5600원</p>
              </div>
            </li>
          </ul>
        </nav>
      </section>

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

      <section id="menuTableSection">
        <div id="tableSize">
          <table id="menuTable">
            <thead>
              <th>메뉴</th>
              <th>수량</th>
              <th>가격</th>
              <th></th>
            </thead>
            <tbody>
              <tr>
                <td>
                  <div class="textarea">
                    <p>[행사] 커넬통다리버거세트</p>
                    <p>- 커널통다리버거 2개, 후렌치후라이(M), 콜라(M) 2개</p>
                  </div>
                </td>
                <td>
                  <div class="count">
                    <div class="icon-minus iconCombination"></div>
                    <p>1</p>
                    <div class="icon-plus iconCombination"></div>
                  </div>
                </td>
                <td>
                  <div class="price">
                    <div class="pricePos">
                      <p>5,800</p>
                      <div class="icon-cancel"></div>
                    </div>
                  </div>
                </td>
                <td rowspan="4">
                  <div id="scrollGroup">
                    <div class="icon-up-open-big"><p>up</p></div>
                    <div class="icon-down-open-big"><p>down</p></div>
                  </div>
                </td>
              </tr>
              <tr>
                <td>
                </td>
                <td>
                </td>
                <td></td>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
              </tr>

            </tbody>
          </table>
        </div>
      </section>
      <section id="ordersection">
        <div id="ordercontainer">
          <div id="orderLeft">
            <div class="orderCount">
              <p class="string">수량</p>
              <p class="number">1</p>
            </div>
            <div class="orderCount">
              <p class="string">금액</p>
              <p class="number">5,800</p>
            </div>
          </div>
          <div id="orderRigth">
            <div id="allCancelBtn">
              전체취소
            </div>
            <div id="cuponBtn">
              쿠폰
            </div>
            <div id="orderBtn">
              주문
            </div>
          </div>
        </div>
      </section>

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
	        <button type="button" class="btn btn-default" data-dismiss="modal">이전</button>
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
	      			<table class="orderList">
		      			<tr>
			      			<td id="orderlist-menuName"> (행사)닭껍질튀김 + 텐더 </td>
			      			<td id="orderlist-menuCnt"> 2 </td>
			      			<td id="orderlist-menuPrice"> 7,000 </td>
			      		</tr>
	      			</table>
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
    </div>
  </body>


<script type="text/javascript"> 	
$(document).ready(function(){
		$("#recommend").modal();
	});


</script> 
</html>