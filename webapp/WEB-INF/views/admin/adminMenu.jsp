<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>관리자페이지 - 메뉴정보</title>

<!-- Custom fonts for this template-->
<link
	href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link
	href="${pageContext.request.contextPath}/assets/css/admin/sb-admin-2.min.css"
	rel="stylesheet">

<!-- 기타 css 및 부트스트랩 -->
<link
	href="${pageContext.request.contextPath}/assets/css/admin/menuInfo.css"
	rel="stylesheet" type="text/css">

<link
	href="${pageContext.request.contextPath}/assets/css/admin/adminModal.css"
	rel="stylesheet" type="text/css">

<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/admin/adminMenu.js"></script> --%>

</head>

<body id="page-top">

	<!-- 관리자페이지 헤더 -->
	<jsp:include page="/WEB-INF/views/includes/adminHeader.jsp" />
	<!-- 관리자페이지 헤더 -->

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-success sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="adminMenu">
				<div class="sidebar-brand-text mx-3">Admin</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Menu Info -->
			<li class="nav-item active"><a class="nav-link" href="adminMenu">
					<i class="fas fa-fw fa-info-circle"></i> <span>메뉴 정보</span>
			</a></li>

			<!-- Nav Item - Menu Info -->
			<li class="nav-item"><a class="nav-link" href="adminToping">
					<i class="fas fa-fw fa-hamburger"></i> <span>토핑 정보</span>
			</a></li>

			<!-- Nav Item - Category -->
			<li class="nav-item"><a class="nav-link" href="adminCate"> <i
					class="fas fa-fw fa-folder"></i> <span>키오스크 카테고리</span></a></li>

			<!-- Nav Item - Stats -->
			<li class="nav-item"><a class="nav-link" href="adminStats">
					<i class="fas fa-fw fa-chart-area"></i> <span>통계</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800"
						style="padding: 1.5rem 0 1.2rem 0 !important;">Menu
						Information</h1>

					<!-- 메뉴 기본 정보 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">기본 정보</h6>
						</div>
						<div class="card-body adminMenu-basicInfo">

							<div class="menuInfo-menuCateAndImg">
								<!-- 메뉴 이미지 -->
								<img
									src="${pageContext.request.contextPath}/assets/images/icon1.png"
									class="menuInfo-menuImg img-rounded"> <input
									id="menuInfo-menuImgInput" type="file" style="margin: auto;" />
							</div>
							<!-- 메뉴 이미지 끝 -->

							<!-- 기본 메뉴 정보 -->
							<div class="menuInfo-basicInfoContainer">

								<div class="adminMenu-dropdownContainer">
									<!-- 드롭다운 -->

									<div class="adminMenu-cateDropdown">
										<!-- 카테고리 드롭다운 -->
										<p>카테고리</p>
										<div class="dropdown adminMenu-basicInfoDropdown"
											id="dropdownCateName">
											<button class="btn btn-default dropdown-toggle" type="button"
												id="dropdownMenu1" data-toggle="dropdown"
												aria-expanded="true">
												카테고리를 선택하세요. <span class="caret"></span>
											</button>
											<ul class="dropdown-menu dropdownCateList" id="dropdownCateList" role="menu"
												aria-labelledby="dropdownMenu1">
												<!-- 카테고리 리스트 출력 할 자리 -->
											</ul>
										</div>
									</div>
									<!-- 카테고리 드롭다운 끝 -->

									<!-- 메뉴 드롭다운 -->
									<div class="adminMenu-menuDropdown">
										<p>메뉴</p>
										<div class="dropdown adminMenu-basicInfoDropdown"
											id="dropdownMenuName">
											<button class="btn btn-default dropdown-toggle" type="button"
												id="dropdownMenu1" data-toggle="dropdown"
												aria-expanded="true" style="margin-right: 0;">
												메뉴를 선택하세요. <span class="caret"></span>
											</button>
											<ul class="dropdown-menu dropdownMenuList" id="dropdownMenuList" role="menu"
												aria-labelledby="dropdownMenu1">

												<li role="presentation"><a role="menuitem"
													tabindex="-1">카테고리 먼저 선택하세요.</a></li>

											</ul>
										</div>
									</div>
									<!-- 메뉴 드롭다운 끝 -->
								</div>
								<!-- 드롭다운 끝 -->


								<div class="menuInfo-basicInfo"
									style="margin-top: 18px !important;">

									<p>메뉴이름</p>
									<input type="text" style="width: 150px;" placeholder="메뉴이름"
										id="menuName">
									<p>가격</p>
									<input type="text" placeholder="가격" id="menuPrice">

									<div style="display: inline-block !important;"
										class="adminMenu-calorie">
										<p>칼로리</p>
										<input type="text" placeholder="칼로리" id="menuCalorie">
									</div>

								</div>

								<!-- 메뉴 참고사항 -->
								<div class="menuInfo-menuDetails">
									<p style="margin-right: 20px;">참고사항</p>
									<input type="checkbox" style="margin-left: 0 !important;">
									<p class="normal">프로모션</p>
									<input type="checkbox">
									<p class="normal">추천메뉴</p>
									<input type="checkbox">
									<p class="normal">신메뉴</p>
								</div>

								<!-- 추가구성 - 기존 카드가 아닌 추가 카드에서만 보여야 됨 -->
								<div class="adminMenu-unitCheck">
									<p style="margin-right: 20px;">추가구성</p>

									<!-- 체크박스 -->
									<input type="checkbox" style="margin-left: 0 !important;">
									<p class="normal">세트</p>

									<!-- 버튼자리 -->
									<div class="adminMenu-unitListBtn">
										<a href="#"
											class="btn btn-light btn-icon-split adminUnitListBtn"> <span
											class="text">추가 / 목록</span>
										</a>
									</div>

								</div>

								<!-- 메뉴 설명 -->
								<div class="menuInfo-menuDescription">
									<p>메뉴설명</p>
									<textarea placeholder="메뉴 설명" id="menuDesc"></textarea>
								</div>
							</div>
						</div>
					</div>
					<!-- 메뉴 기본 정보 끝 -->

					<!-- 토핑 정보 -->
					<div class="card shadow mb-4" style="margin-top: 24px">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">토핑 정보</h6>
						</div>
						<div class="card-body">
							<!-- 토핑 정보를 넣으세다 -->
						</div>
					</div>
					<!-- 토핑 정보 끝 -->

					<div class="adminMenu-btnContainer">
						<input type="hidden" id="selectMenuNo" value="">
						<input type="hidden" id="selectCateNo" value="">
						<a href="#"
							class="btn btn-secondary btn-icon-split adminMenu-menuDelBtn">
							<span class="text">삭제</span>
						</a> <a href="#"
							class="btn btn-success btn-icon-split adminMenu-menuSubmitBtn">
							<span class="text">확인</span>
						</a>
					</div>


				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; 5fingers 2020</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- 추가 구성 목록 모달 -->
	<div class="modal" id="unitListModal">
		<div class="modal-dialog" id="unitListModal-dialog">
			<div class="modal-content" id="unitListModal-content">
				<div class="modal-header" id="unitListModal-header">
					<p class="modal-title" id="unitListModal-title">추가구성 목록</p>
					<i class="fas fa-times unitListModal-close"></i>
				</div>

				<!-- 모달 바디 -->
				<div class="modal-body" id="unitListModal-body">

					<table class="unitListModal-unitList">
						<thead>
							<tr>
								<th><input type="checkbox"></th>
								<th>이름</th>
								<th>추가 구성</th>
								<th>관리</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td><input type="checkbox"></td>
								<td>세트</td>
								<td>사이드 : 감자튀김 <br> 음료 : 콜라
								</td>
								<td>
									<!-- 수정 / 적용 버튼 -->
									<div class="adminMenu-unitListBtnContainer">
										<a href="#"
											class="btn btn-secondary btn-icon-split adminMenu-unitListModify">
											<span class="text">수정</span>
										</a><a href="#"
											class="btn btn-success btn-icon-split adminMenu-unitListSelect">
											<span class="text">적용</span>
										</a>
									</div>
								</td>
							</tr>

							<tr>
								<td><input type="checkbox"></td>
								<td>콤보</td>
								<td>사이드 : 감자튀김 <br> 음료 : 콜라 <br> 치킨 : 치킨 1조각
								</td>
								<td>
									<!-- 수정 / 적용 버튼 -->
									<div class="adminMenu-unitListBtnContainer">
										<a href="#"
											class="btn btn-secondary btn-icon-split adminMenu-unitListModify">
											<span class="text">수정</span>
										</a><a href="#"
											class="btn btn-success btn-icon-split adminMenu-unitListSelect">
											<span class="text">적용</span>
										</a>
									</div>
								</td>

							</tr>

						</tbody>
					</table>

				</div>
				<!-- 모달 바디 끝 -->

				<div class="modal-footer" id="unitListModal-footer">
					<div class="adminMenu-footerBtnContainer">
						<a href="#"
							class="btn btn-secondary btn-icon-split adminMenu-unitDel"> <span
							class="text">선택 구성 삭제</span>
						</a><a href="#"
							class="btn btn-success btn-icon-split adminMenu-unitAdd"> <span
							class="text">구성 목록 추가</span>
						</a>
					</div>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- 추가 구성 목록 모달 끝 -->

	<!-- 구성 추가 / 수정 모달 -->
	<div class="modal" id="unitManagerModal">
		<div class="modal-dialog" id="unitManagerModal-dialog">
			<div class="modal-content" id="unitManagerModal-content">
				<div class="modal-header" id="unitManagerModal-header">
					<p class="modal-title" id="unitManagerModal-title">구성 추가/수정</p>
					<i class="fas fa-times unitManagerModal-close"></i>
					<!-- 클로즈 버튼 -->
				</div>

				<!-- 모달 바디 -->
				<div class="modal-body" id="unitManagerModal-body">
					<div class="unitManagerModal-inputAndDropDownContainer">
						<div class="unitManagerModal-unitName">
							<!-- 추가 구성 이름 -->
							<p>이름</p>
							<input type="text" placeholder="ex) 세트/콤보/박스">
						</div>
						<!-- 이름 -->

						<div class="unitManagerModal-unitComponent">
							<!-- 추가 구성(카테고리, 메뉴) -->
							<p>추가구성</p>
							<div class="unitManagerModal-cateDropdown">
								<!-- 카테고리 드롭다운 -->
								<div class="dropdown unitManagerModal-basicInfoDropdown">
									<button class="btn btn-default dropdown-toggle" type="button"
										id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
										카테고리를 선택하세요. <span class="caret"></span>
									</button>
									<ul class="dropdown-menu" role="menu"
										aria-labelledby="dropdownMenu1">
										<li role="presentation"><a role="menuitem" tabindex="-1"
											href="#">햄버거</a></li>
										<li role="presentation"><a role="menuitem" tabindex="-1"
											href="#">음료</a></li>
									</ul>
								</div>
							</div>
							<!-- 카테고리 드롭다운 끝 -->

							<!-- 메뉴 드롭다운 -->
							<div class="unitManagerModal-menuDropdown">
								<div class="dropdown unitManagerModal-basicInfoDropdown">
									<button class="btn btn-default dropdown-toggle" type="button"
										id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true"
										style="margin-right: 0;">
										메뉴를 선택하세요. <span class="caret"></span>
									</button>
									<ul class="dropdown-menu" role="menu"
										aria-labelledby="dropdownMenu1">
										<li role="presentation"><a role="menuitem" tabindex="-1"
											href="#">불고기버거</a></li>
										<li role="presentation"><a role="menuitem" tabindex="-1"
											href="#">새우버거</a></li>
									</ul>
								</div>
							</div>
							<!-- 메뉴 드롭다운 끝 -->

							<!-- 구성 추가 버튼 -->
							<div class="unitManagerModal-btnContainer">
								<a href="#" class="btn btn-success btn-circle unitAddBtn"
									style="margin: auto;"> <i class="fas fa-plus"></i>
								</a>
							</div>
							<!-- 구성 추가 버튼 끝 -->
						</div>
						<!-- 추가 구성(카테고리, 메뉴) 끝 -->

						<div class="unitManagerModal-unitComponent">
							<!-- 추가 구성(카테고리, 메뉴) -->
							<p>추가구성2</p>
							<div class="unitManagerModal-cateDropdown">
								<!-- 카테고리 드롭다운 -->
								<div class="dropdown unitManagerModal-basicInfoDropdown">
									<button class="btn btn-default dropdown-toggle" type="button"
										id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
										카테고리를 선택하세요. <span class="caret"></span>
									</button>
									<ul class="dropdown-menu" role="menu"
										aria-labelledby="dropdownMenu1">
										<li role="presentation"><a role="menuitem" tabindex="-1"
											href="#">햄버거</a></li>
										<li role="presentation"><a role="menuitem" tabindex="-1"
											href="#">음료</a></li>
									</ul>
								</div>
							</div>
							<!-- 카테고리 드롭다운 끝 -->

							<!-- 메뉴 드롭다운 -->
							<div class="unitManagerModal-menuDropdown">
								<div class="dropdown unitManagerModal-basicInfoDropdown">
									<button class="btn btn-default dropdown-toggle" type="button"
										id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true"
										style="margin-right: 0;">
										메뉴를 선택하세요. <span class="caret"></span>
									</button>
									<ul class="dropdown-menu" role="menu"
										aria-labelledby="dropdownMenu1">
										<li role="presentation"><a role="menuitem" tabindex="-1"
											href="#">불고기버거</a></li>
										<li role="presentation"><a role="menuitem" tabindex="-1"
											href="#">새우버거</a></li>
									</ul>
								</div>
							</div>
							<!-- 메뉴 드롭다운 끝 -->

							<!-- 구성 추가 버튼 -->
							<div class="unitManagerModal-btnContainer">
								<a href="#" class="btn btn-success btn-circle unitAddBtn"
									style="margin: auto;"> <i class="fas fa-plus"></i>
								</a>
							</div>
							<!-- 구성 추가 버튼 끝 -->

						</div>
						<!-- 추가 구성(카테고리, 메뉴) 끝 -->
					</div>
					<!-- end of test -->
				</div>
				<!-- 모달 바디 끝 -->

				<!-- 모달 푸터 -->
				<div class="modal-footer" id="unitManagerModal-footer">
					<div class="adminMenu-footerBtnContainer">
						<a href="#"
							class="btn btn-secondary btn-icon-split adminMenu-unitDel unitManager-cancle">
							<span class="text">취소</span>
						</a><a href="#"
							class="btn btn-success btn-icon-split adminMenu-unitAdd unitManager-submit">
							<span class="text">확인</span>
						</a>
					</div>
				</div>
				<!-- 모달 푸터 끝 -->

			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- 구성 추가 / 수정 모달 끝 -->

	<!-- Bootstrap core JavaScript-->
	<script
		src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="${pageContext.request.contextPath}/assets/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script
		src="${pageContext.request.contextPath}/assets/js/admin/sb-admin-2.min.js"></script>
</body>
<script type="text/javascript">	
	// 카테고리 리스트 불러오기
	$(document).ready(function(){	
		var storeNo = 1;
		
		$.ajax({
			url : "${pageContext.request.contextPath}/admin/adminCateList",
			type : "post",
			data : {
				storeNo : storeNo
			},
			dataType : "json",
			success : function(cateList) { /*성공시 처리해야될 코드 작성*/
				for (var i = 0; i < cateList.length; i++) {
					cateListRender(cateList[i]);
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});

	// 카테고리 리스트 html 그리기
	function cateListRender(cateList) {
		var str = '';
		
		str += '<li role="presentation" id="cateNo_' + cateList.categoryNo + '"';
		str += 'value="' + cateList.categoryNo + '"><a role="menuitem"';
		str += 'tabindex="-1" href="#">'
				+ cateList.categoryName + '</a></li>';
	
		$("#dropdownCateList").prepend(str);
	}

	/* 메뉴 리스트 받아오기 (특정 카테고리 선택 시, 해당 카테고리에 속해있는 메뉴 리스트 뽑아옴) */
	$(".dropdownCateList").on("click", "li", function() {
		event.preventDefault(); // 본래 html 안에 있는 태그의 기능을 사용하지 않음 (a 태그 사용 중지를 위함)
		
		initialization(); // 초기화

		var id = $(this).attr('id'); // 카테고리 드롭다운 li의 아이디값 받아오기 - 카테고리 넘버 알아오기 위함
		var cateNo = document.getElementById(id).value; // li의 value값(카테고리넘버) 받아오기
		console.log(id + ', ' + cateNo);

		$("#selectCateNo").val(cateNo); // 메뉴 등록을 위해 페이지 하단에 카테고리 넘버 넘겨주기
		
		var cateName = $("#" + id).text(); // 선택한 카테고리 이름 받아오기 
		$("#dropdownCateName").children('button').text(cateName); // '카테고리를 선택하세요' 문구를 선택한 카테고리 이름으로 변경

		$.ajax({
			url : "${pageContext.request.contextPath}/admin/adminMenuList",
			type : "post",
			data : {
				cateNo : cateNo
			},
			dataType : "json",
			success : function(menuList) { /*성공시 처리해야될 코드 작성*/
				
				if(menuList.length == 0) { // 카테고리 내에 입력된 메뉴가 없을 경우
					var str = '';
						
					str += '<li role="presentation" id="menuNo_0" value=""><a role="menuitem" tabindex="-1">새로운 메뉴 입력</a></li>';

					$("#dropdownMenuList").prepend(str);
				}
				else { // 메뉴가 하나라도 있을 경우 메뉴 리스트 출력
					
					for (var i = 0; i < menuList.length; i++) {
						menuListRender(menuList[i]);
					}

					var str = '';
				
					str += '<li role="presentation" id="menuNo_0" value="0">';
					str += '<a role="menuitem" tabindex="-1">새로운 메뉴 입력</a></li>';
					str += '<li role="presentation" class="divider"></li>';
					str += '<hr id="amdinMenu-menuDropdwon-hr">';

					$("#dropdownMenuList").prepend(str);
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});

	});

	// 메뉴 리스트 html 그리기
	function menuListRender(menuList) {
		var str = '';

		str += '<li role="presentation" id="menuNo_' + menuList.menuNo + '"';
		str += 'value="' + menuList.menuNo + '"><a role="menuitem"';
		str += 'tabindex="-1" href="#">'
				+ menuList.menuName + '</a></li>';

		$("#dropdownMenuList").prepend(str);
	}
	
	// 카테고리를 한 번 선택할 때마다 초기화해줘야 하는 것들
	function initialization() {
		$("#dropdownMenuList").children('li').remove(); // 기존 menuList 삭제
		$("#dropdownMenuName").children('button').text("메뉴를 선택하세요."); // 메뉴 드롭다운 타이틀 초기화
		$("#amdinMenu-menuDropdwon-hr").remove(); // 메뉴 드롭다운 리스트 초기화
		$("#selectMenuNo").val(""); // 페이지 하단의 메뉴 넘버 초기화
		$(".adminMenu-menuSubmitBtn").children('span').text("확인"); // 하단 버튼이 [확인]으로 변경
		resetInput(); // 인풋박스 모두 비워주기
	}
	
	// 인풋박스 모두 비워주기
	function resetInput() {
		$("#menuName").val("");
		$("#menuPrice").val("");
		$("#menuCalorie").val("");
		$("#menuDesc").val("");
	}
	
	/* 메뉴 정보 받아오기 (특정 메뉴 선택시 해당 메뉴에 대한 정보 받아옴 - 메뉴이름, 가격, 이미지 등) */
	$(".dropdownMenuList").on("click", "li", function() {
		event.preventDefault(); // 본래 html 안에 있는 태그의 기능을 사용하지 않음 (a 태그 사용 중지를 위함)

		var id = $(this).attr('id'); // 메뉴 드롭다운 li의 아이디값 받아오기 - 메뉴 넘버 알아오기 위함
		var menuNo = document.getElementById(id).value; // li의 value값(메뉴 넘버) 받아오기
		console.log(id + ', ' + menuNo);
		
		$("#selectMenuNo").val(menuNo); // 메뉴 등록, 수정, 삭제를 위해 페이지 하단에 메뉴 넘버 넘겨주기

		var menuName = $("#" + id).text(); // 선택한 메뉴 이름 받아오기 
		$("#dropdownMenuName").children('button').text(menuName); // '메뉴를 선택하세요' 문구를 선택한 메뉴 이름으로 변경

		if(menuNo == 0) { // 새로운 메뉴 등록을 클릭했을 경우 인풋박스 모두 지워줌
			resetInput();
			$(".adminMenu-menuSubmitBtn").children('span').text("확인"); // 입력 메뉴가 선택 된 경우 하단의 submit 버튼을 [확인]으로 바꿔줌
		}
		else {
			$(".adminMenu-menuSubmitBtn").children('span').text("수정"); // 메뉴가 선택 된 경우 하단의 submit 버튼을 [수정]으로 바꿔줌
			
			$.ajax({
				url : "${pageContext.request.contextPath}/admin/adminMenuInfo",
				type : "post",
				data : {
					menuNo : menuNo
				},
				dataType : "json",
				success : function(menuVo) { /*성공시 처리해야될 코드 작성*/
					
					menuInfo(menuVo); // 메뉴 정보 인풋에 출력
				
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});
		}
	});
	
	// 메뉴 정보 받아서 인풋에 출력
	function menuInfo(menuVo) {
		$("#menuName").val(menuVo.menuName);
		$("#menuPrice").val(menuVo.menuPrice);
		/* $("#menuCalorie").val(menuVo.menuCalorie); */
		$("#menuDesc").val(menuVo.menuDesc);
	}

	/* 메뉴 삭제 */
	$(".adminMenu-menuDelBtn").on("click", function() {
		event.preventDefault(); // 본래 html 안에 있는 태그의 기능을 사용하지 않음 (a 태그 사용 중지를 위함)
		
		var menuNo = $("#selectMenuNo").val(); // 메뉴 넘버 받아오기
		console.log("삭제 버튼 클릭", menuNo);
		
		if(menuNo == '') { // menuNo이 null일 경우 아직 메뉴가 선택되지 않은 상태임
			alert("메뉴를 선택하세요.");
		}	
		else if(menuNo == 0) { // menuNo이 0일 경우 새로 등록중인 메뉴임
			alert("등록되어 있지 않은 메뉴 정보입니다.");
		}
		else {
			
			$.ajax({
				url : "${pageContext.request.contextPath}/admin/adminDelMenu",
				type : "post",
				data : {
					menuNo : menuNo
				},
				dataType : "json",
				success : function(cnt) { /*성공시 처리해야될 코드 작성*/
					$("html").scrollTop(0); // 화면 최상단으로 이동
					$("#dropdownMenuName").children('button').text("메뉴를 선택하세요."); // 메뉴 드롭다운 타이틀 초기화
					$("#menuNo_" + menuNo).remove();  // 해당 메뉴 리스트에서 삭제
					
					// 인풋박스 모두 비워주기
					resetInput();
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});
		}
	});

	/* 메뉴 수정 & 추가 */
	$(".adminMenu-menuSubmitBtn").on("click", function() {
		event.preventDefault(); // 본래 html 안에 있는 태그의 기능을 사용하지 않음 (a 태그 사용 중지를 위함)
		
		// 메뉴 정보 받아서 묶어주기
		var menuNo = $("#selectMenuNo").val();
		var cateNo = $("#selectCateNo").val();
		
		var menuVo = { 
			menuNo: menuNo,
			categoryNo: $("#selectCateNo").val(),
			menuName: $("#menuName").val(), 
			menuPrice: $("#menuPrice").val(), 
			/* menuCalorie: $("#menuCalorie").val(),  */
			menuDesc: $("#menuDesc").val()
		};
		
		if(menuNo == 0) { // 메뉴 추가
			if(cateNo == 0) {
				alert("카테고리를 선택하세요.");
			}
			else {
				// 인풋박스가 모두 null이 아닐 경우 메뉴 추가 (조건 ? 참일 경우 수행 : 거짓일 경우 수행)
				txtFieldCheck() == true ? true : menuAdd(menuVo);
			}
		}
		else { // 메뉴 수정
			menuModify(menuVo);			
		}
	});
	
	// 메뉴정보 카드 안의 모든 input box 조회
	function txtFieldCheck(){
		
		// 메뉴정보 카드 안의 모든 input box 변수에 대입
		var txtEle = $(".menuInfo-basicInfoContainer input[type=text]");
		
		for(var i = 0; i < txtEle.length; i ++){ // input box 모두 순회하여 null 값 있는지 찾기
			if("" == $(txtEle[i]).val() || null == $(txtEle[i]).val()){ // null인 경우
				var ele_id = $(txtEle[i]).attr("id");
				
				alert("기본 정보를 모두 입력해주세요.");
				
				// 해당 input box에 focus
				$("#" + ele_id).focus();
				
				return true;
			}
		}
		textAreaCheck();
	}
	
	// 메뉴 설명 박스 null 체크
	function textAreaCheck() {
		var txtEle = $(".menuInfo-menuDescription :input");
		
		if("" == $(txtEle).val() || null == $(txtEle).val()){
			var ele_id = $(txtEle).attr("id");
			
			alert("기본 정보를 모두 입력해주세요.");
			
			$("#" + ele_id).focus();
	
			return true;
		}
	}
	
	/* 메뉴 추가 */
	function menuAdd(menuVo) {
		$.ajax({
			url : "${pageContext.request.contextPath}/admin/adminAddeMenu",
			type : "post",
			contentType: "application/json",
			data : JSON.stringify(menuVo), /* json 형식으로 변형 */
			dataType : "json",
			
			success : function(result) { /*성공시 처리해야될 코드 작성*/
				
				alert("메뉴가 등록되었습니다."); // 알림창
				$('html').scrollTop(0); // 페이지 상단으로 이동
				resetInput(); // 인풋박스 비워주기
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
	
	/* 메뉴 수정 */
	function menuModify(menuVo) {
		$.ajax({
			url : "${pageContext.request.contextPath}/admin/adminUpdateMenu",
			type : "post",
			contentType: "application/json",
			data : JSON.stringify(menuVo), /* json 형식으로 변형 */
			dataType : "json",
			
			success : function(menuVo) { /*성공시 처리해야될 코드 작성*/
				
				alert("수정이 완료되었습니다."); // 알림창
				$('html').scrollTop(0); // 페이지 상단으로 이동
				menuInfo(menuVo); // 업데이트 한 메뉴 정보 인풋에 넣어주기
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
	
	/* 이중모달 */
	$(document).on('hidden.bs.modal', function(event) {
		if ($('.modal:visible').length) {
			$('body').addClass('modal-open');
		}
	});

	// 추가 구성 리스트 모달 열기
	$(".adminUnitListBtn").on("click", function() {
		$("#unitListModal").modal();
	});

	// 추가 구성 리스트 모달 닫기
	$(".unitListModal-close").on("click", function() {
		$("#unitListModal").modal("hide");
	});

	// 구성 추가/수정 모달 열기
	$(".adminMenu-unitAdd").on("click", function() {
		$("#unitManagerModal").modal();
	});

	$(".adminMenu-unitListModify").on("click", function() {
		$("#unitManagerModal").modal();
	});

	// 구성 추가/수정 모달 닫기
	$(".unitManagerModal-close, .unitManager-cancle").on("click", function() {
		$("#unitManagerModal").modal("hide");
	});
</script>
</html>
