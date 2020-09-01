<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 메타태그 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- css -->
<link href="/kiosk/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="/kiosk/assets/css/lotteria/order.css" rel="stylesheet"type="text/css">
<link href="/kiosk/assets/css/fontello/css/fontello.css"rel="stylesheet" type="text/css">

<!-- 자바스크립트 -->
<script type="text/javascript" src="/kiosk/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript"src="/kiosk/assets/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="/kiosk/assets/js/lotteria/order.js"></script>

<title>키오스크-롯데리아</title>
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/WEB-INF/views/includes/header.jsp" />
	<!-- 헤더 -->

	<div class="container width800height1200">

			<!--탭 메뉴 영역 -->
			<ul class="tabs">
				<c:forEach items="${categoryList}" var="vo">
					<li class="tab-${vo.categoryNo }"><a href="#tab${vo.categoryNo}" data-categoryno=${vo.categoryNo }>${ vo.categoryName}</a></li>
				</c:forEach>
			</ul>
		<div id="wrapper">

			<!--탭 콘텐츠 영역 -->
			<div class="tab_container" id="tab_menu"   style="position: relative;">
				 <c:forEach items="${categoryList }" var="vo" >
				 
					<div id="tab${vo.categoryNo }" class="tab_content" data-categoryno=${vo.categoryNo }>
												
					 <c:forEach items="${menuList }" var="menu" varStatus="i">
							<c:if test="${vo.categoryNo eq menu.categoryNo}">
							<div class="menu" data-menuno="${menu.menuNo }">
								<div class="menu-img">
									<img src="${pageContext.request.contextPath }/lotteria/${menu.menuImg }"width=" 100%">
								</div>
								<div class="menu-text">
									<div class="menuName">${menu.menuName}</div>
									<div class="menu-price">${menu.menuPrice}</div>
								</div>
							</div>
							</c:if>
						</c:forEach>
						
					</div>
				</c:forEach> 
				
						
				
				<!-- 페이징 div -->
				<%-- <div>
					<div><button type="button" class="btn-left" onclick="pageDown()">이전</button></div>
					
					<div class="dotDiv">
						<c:forEach var="current" begin="1" end="${menuListAndPg.pgVo.page_End }">
							<div class="pageDot <c:if test="${param.pg == current }">pageActive</c:if>"></div>
						</c:forEach>
					</div>
										
					<div><button type="button" class="btn-right" onclick="pageUp(${menuListAndPg.pgVo.page_End})">다음</button></div>
				</div> --%>
				<!-- 페이징 div -->
					
			</div>
				<!--Content-->
			
			<table class="table-center">
				<colgroup>
					<col width="33%">
					<col width="33%">
					<col width="33%">
				</colgroup>
				<tr class="tr-center">
					<td>총주문내역</td>
					<td id ="maximum">0 개</td>
					<td class="td-red" id="resultPrice">0</td>
				</tr>

				<c:forEach var="i" begin="1" end="5">
				<tr>
					<td class="menuNameText${i }">&nbsp;</td>
					<td class="menuNumber${i }">&nbsp;</td>
					<td class="menuPrice${i }">&nbsp;</td>
				</tr>
				</c:forEach>


			</table>

			<div class="row height60">
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
					<button type="button" class="btn-radius12px" onclick="location.href='${pageContext.request.contextPath}/lotteria/payment'">취소하기</button>
				</div>
				<div class="col-md-4 margin-top10px">
					<button type="button" class="btn-backColor" onclick="location.href='${pageContext.request.contextPath}/lotteria/orderList'">결제하기</button>
				</div>
			</div>
		</div>
	</div>




		<!-- 사이드메뉴모달 -->
		<div class="modal fade" id="side">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">세트_디저트</h4>
					</div>
					<div class="modal-body modal-height700px">

						<!--탭 메뉴 영역 -->
						<ul class="modal-tabs">
							<li><a href="#modal-tab1">세트_디저트</a></li>
							<li><a href="#modal-tab2">세트_드링크</a></li>
						</ul>

						<!--탭 콘텐츠 영역 -->
						<div class="modal-tab_container">

							<div id="modal-tab1" class="modal-tab_content"><!--Content--></div>
 							<div id="modal-tab2" class="modal-tab_content"><!--Content--></div>
 							
							<!-- 페이징 div -->
							<div>
								<div><button type="button" class="btn-left" onclick="">이전</button></div>
								<div class="modalDotDiv" ></div>
								<div><button type="button" class="btn-right" onclick="">다음</button></div>
							</div>
							<!-- 페이징 div -->

						</div>

					</div>
					<div class="modal-footer">
						<div class="modalFooter-float">
							<ul class="modalfooter-color">
								<li>선택수량: 2</li>
								<li>잔여수량: 0</li>
							</ul>
						</div>
						<div class="modalFooter-width33">
							<button type="button" data-dismiss="modal" class="modalFooter-btn1">취소하기</button>
						</div>
						<div class="modalFooter-width33">
							<button type="button" class="modalFooter-btn2" onClick="dessertAndDrink()">선택완료</button>
						</div>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
	<!-- 토핑모달 -->


		<!-- 단품, 세트 선택 모달 -->
		<div class="modal fade" id="setAndSingle">
			<div class="modal-dialog" id="modalName-align">
				<div class="modal-content" id="modalName-content">

					<div class="modal-header" id="modalName-header">
						<h4 class="modal-title" id="modalName-headerTitle">세트로 드시겠어요?</h4>
						<div class="modalName-closeBtnDiv">
							<!-- 취소버튼 -->
							<div class="icon-cancel modalName-closeBtn" data-dismiss="modal"></div>
						</div>
					</div>
					<!-- modal-header -->

					<div class="modal-body" id="modalName-body">
						<div class="modalName-container">
							<div class="modalName-onlyBurger">

								<div class="modalName-select" id="modalName-onlyBurger" data-dismiss="modal">
									<p>
										<img src="${pageContext.request.contextPath}/assets/images/icon1.png" id="modalName-onlyBurgerImg">
									</p>
									<p>버거만</p>
								</div>
								<p id="modalName-singlePrice"></p>
							</div>

							<div class="modalName-setMenu">
								<div class="modalName-select" id="modalName-setMenu">
									<p>
										<img src="${pageContext.request.contextPath}/assets/images/icon1.png" id="modalName-setMenuImg">
									</p>
									<p>세트</p>
								</div>
								<p id="modalName-setPrice"></p>
							</div>
						</div>
					</div>
					<!-- modal-body -->
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
		
		
		<!-- 토핑추가모달 -->
		<div class="modal" id="topping">
			<div class="modal-dialog" id="modalName-align">
				<div class="modal-content" id="modalName-content">

					<div class="modal-header" id="modalName-header">
						<h4 class="modal-title" id="modalName-headerTitle">토핑을 선택해 주세요</h4>
		
					</div>
					<!-- modal-header -->

					<div class="modal-body" id="modalName-body-topping">
						<div class="padding-top20px">
								<div class="toppingMenuName" style="display:inline-block; font-size:x-large;"></div>
								<div class="toppingPrice">+0</div>
						</div>
						<div class="modalName-container width80">
							
							<div class="padding-top20px" id = "toppingContents"></div>
						</div>
					</div>
					<!-- modal-body -->
					<!-- modal-footer -->
					<div class=modal-footer id="topping-modal-footer">
						<div class="width100 toppingModalBtn"></div>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
		
	
	<!-- 풋터 -->
	<jsp:include page="/WEB-INF/views/includes/footer.jsp" />
	<!-- 풋터 -->
</body>
</html>