<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
										<div class="dropdown adminMenu-basicInfoDropdown">
											<button class="btn btn-default dropdown-toggle" type="button"
												id="dropdownMenu1" data-toggle="dropdown"
												aria-expanded="true">
												카테고리를 선택하세요. <span class="caret"></span>
											</button>
											<ul class="dropdown-menu" role="menu"
												aria-labelledby="dropdownMenu1">
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#">햄버거</a></li>
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#">음료</a></li>
											</ul>
										</div>
									</div>
									<!-- 카테고리 드롭다운 끝 -->

									<!-- 메뉴 드롭다운 -->
									<div class="adminMenu-menuDropdown">
										<p>메뉴</p>
										<div class="dropdown adminMenu-basicInfoDropdown">
											<button class="btn btn-default dropdown-toggle" type="button"
												id="dropdownMenu1" data-toggle="dropdown"
												aria-expanded="true" style="margin-right: 0;">
												메뉴를 선택하세요. <span class="caret"></span>
											</button>
											<ul class="dropdown-menu" role="menu"
												aria-labelledby="dropdownMenu1">
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#">불고기버거</a></li>
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#">새우버거</a></li>
											</ul>
										</div>
									</div>
									<!-- 메뉴 드롭다운 끝 -->
								</div>
								<!-- 드롭다운 끝 -->


								<div class="menuInfo-basicInfo"
									style="margin-top: 18px !important;">

									<p>메뉴이름</p>
									<input type="text" style="width: 150px;" placeholder="메뉴이름">
									<p>가격</p>
									<input type="text" placeholder="가격">

									<div style="display: inline-block !important;"
										class="adminMenu-calorie">
										<p>칼로리</p>
										<input type="text" placeholder="칼로리">
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
									<textarea placeholder="메뉴 설명"></textarea>
								</div>
							</div>
						</div>
					</div>
					<!-- 메뉴 기본 정보 끝 -->

					<!-- 기본 정보 추가 버튼 -->
					<div class="adminMenu-btnContainer"">
						<a href="#" class="btn btn-success btn-circle"
							style="margin: auto;"> <i class="fas fa-plus"></i>
						</a>
					</div>

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
						<a href="#" class="btn btn-secondary btn-icon-split"> <span
							class="text">삭제</span>
						</a> <a href="#" class="btn btn-success btn-icon-split"> <span
							class="text">확인</span>
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

	<!-- 구성 추가 모달 -->
	<div class="modal" id="unitListModal">
		<div class="modal-dialog" id="unitListModal-dialog">
			<div class="modal-content" id="unitListModal-content">
				<div class="modal-header" id="unitListModal-header">
					<p class="modal-title" id="unitListModal-title">추가구성 목록</p>
				</div>
				
				<!-- 모달 바디 -->
				<div class="modal-body" id="unitListModal-body">
					
					<!-- <div class="adminModal-unitListCheck">
						<input type="checkbox" style="margin-right: 2px !important;">
						<p class="normal">세트</p>
					</div> -->
					
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
								<td>
									사이드 : 감자튀김 <br>
									음료 : 콜라
								</td>
								<td>적용 / 수정</td>
							</tr>
							
							<tr>
								<td><input type="checkbox"></td>
								<td>콤보</td>
								<td>
									사이드 : 감자튀김 <br>
									음료 : 콜라 <br>
									치킨 : 치킨 1조각
								</td>
								<td>적용 / 수정</td>
							</tr>
							
						</tbody>
					</table>
				
          </div> <!-- 모달 바디 끝 -->
          
	      <div class="modal-footer" id="unitListModal-footer">
	       <!--  <button type="button" class="btn btnCancle" data-dismiss="modal">취소</button>
	        <button type="button" class="btn btnComplete">완료</button> -->
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- 구성 추가 모달 끝 -->	
	
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
	/* 이중모달 */
	$(document).on('hidden.bs.modal', function (event) {
		if ($('.modal:visible').length) {
			$('body').addClass('modal-open');
		}
	});

	// 추가 구성 리스트 모달 열기
	$(document).ready(function() {
		$("#unitListModal").modal();
		
		
	});
	
	$(".adminUnitListBtn").on("click", function() {
		$("#unitListModal").modal();
	});
	
	// 추가 구성 추가/수정 모달 열기
	$(".btnComplete").on("click", function() {
		$("#recommend").modal();
	});
</script>
</html>
