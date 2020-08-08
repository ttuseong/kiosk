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
  	

  <script type="text/javascript" src="/kiosk/assets/js/jquery/jquery-1.12.4.js"></script>
  <script type="text/javascript" src="/kiosk/assets/bootstrap/js/bootstrap.js"></script>

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


      
	<!-- 모달 -->
	<jsp:include page="/WEB-INF/views/includes/modal/modalKFC.jsp" />
	<!-- 모달 -->

		<!-- 추천메뉴 모달 -->
		<!-- id="modalName(임의지정)" => 모달 사용 용도에 따라 아이디를 부여해주세요! -->
		<div class="modal" id="modalName">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        	<h4 class="modal-title" id="myModalLabel">모달 제목</h4>
		      </div>
		      <div class="modal-body">
		      	<div class="menu-container">
		      		<p><img src="${pageContext.request.contextPath}/assets/images/icon1.png" class="img-responsive"></p>
	                <p class="menuName">메뉴이름</p>
	                <p class="menuPrice">메뉴 가격</p>
	            </div>
	          </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
		        <button type="button" class="btn btn-danger">완료</button>
		      </div>
		    </div><!-- /.modal-content -->
		  </div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		
		
    </div>
  </body>

	

<script type="text/javascript"> 	
$(document).ready(function(){


	$("#selectMode").modal();

});


</script> 
</html>