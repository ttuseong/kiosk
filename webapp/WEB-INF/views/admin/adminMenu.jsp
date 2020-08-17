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
	href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/assets/css/admin/menuInfo.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/extrafontello/fontello/css/fontello.css">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

</head>

<body id="page-top">

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
					<i class="fas fa-fw fa-cog"></i> <span>Menu Info</span>
			</a></li>

			<!-- Nav Item - Category -->
			<li class="nav-item"><a class="nav-link" href="adminCate"> <i
					class="fas fa-fw fa-table"></i> <span>Category</span></a></li>

			<!-- Nav Item - Stats -->
			<li class="nav-item"><a class="nav-link" href="adminStats">
					<i class="fas fa-fw fa-chart-area"></i> <span>Stats</span>
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
						<div class="card-body">
							<div class="menuInfo-menuCateAndImg">
								<!-- 드롭다운 및 이미지 관리 -->
								<div class="dropdown">
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

								<img
									src="${pageContext.request.contextPath}/assets/images/icon1.png"
									class="menuInfo-menuImg img-rounded"> <input
									id="menuInfo-menuImgInput" type="file" style="margin: auto;" />
							</div>

							<div class="menuInfo-basicInfoContainer">

								<!-- 기본 메뉴 정보 -->
								<div class="menuInfo-basicInfo">
									<p>메뉴이름</p>
									<input type="text" style="width: 150px;" value="메뉴이름"
										onfocus="this.value=''">
									<p>가격</p>
									<input type="text" value="가격" onfocus="this.value=''">
									<p>칼로리</p>
									<input type="text" value="칼로리" onfocus="this.value=''">
								</div>

								<!-- 메뉴 참고사항 -->
								<div class="menuInfo-menuDetails">
									<p style="margin-right: 10px;">참고사항</p>
									<p class="normal">프로모션</p>
									<input type="checkbox">
									<p class="normal">추천메뉴</p>
									<input type="checkbox">
									<p class="normal">신메뉴</p>
									<input type="checkbox">
								</div>

								<!-- 메뉴 설명 -->
								<div class="menuInfo-menuDescription">
									<p>메뉴설명</p>
									<textarea onfocus="this.value=''">메뉴 설명</textarea>
								</div>
							</div>
						</div>
					</div>

					<!-- 토핑 정보 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">토핑 정보</h6>
						</div>
						<div class="card-body">
							<!-- 토핑 정보를 넣으세다 -->
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

		</div>
		<!-- End of Page Wrapper -->

		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fas fa-angle-up"></i>
		</a>

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

</html>
