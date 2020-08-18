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

<title>관리자페이지 - 카테고리</title>

<!-- Custom fonts for this template -->
<link
	href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link
	href="${pageContext.request.contextPath}/assets/css/admin/sb-admin-2.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/assets/css/admin/table.css"
	rel="stylesheet">

<!-- Custom styles for this page -->
<link
	href="${pageContext.request.contextPath}/assets/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

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
			<li class="nav-item"><a class="nav-link" href="adminMenu"> <i
					class="fas fa-fw fa-cog"></i> <span>Menu Info</span></a></li>

			<!-- Nav Item - Category -->
			<li class="nav-item active"><a class="nav-link" href="adminCate">
					<i class="fas fa-fw fa-table"></i> <span>Category</span>
			</a></li>

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
						style="padding: 1.5rem 0 1.2rem 0 !important;">Category</h1>

					<!-- 카테고리 추가 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">카테고리 추가 및 수정</h6>
						</div>
						<div class="card-body">
							<form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100">
								<div class="input-group">
									<p>카테고리</p>
									<input type="text"
										class="form-control adminCate-addCateForm border-0 small"
										placeholder="카테고리를 입력하세요." aria-label="addCate"
										aria-describedby="basic-addon2">
										
									<div class="form-groupAndBtn">	
										<div class="form-group">
											<div class="custom-control custom-checkbox "
												style="padding-left: 3rem !important;">
												<input type="radio" class="custom-control-input"
													id="cate-public" name="cate-openStatus" value="" checked>
												<label class="custom-control-label" for="cate-public">공개</label>
											</div>
	
	
											<div class="custom-control custom-checkbox"
												style="padding-left: 3rem !important;">
												<input type="radio" class="custom-control-input"
													id="cate-private" name="cate-openStatus" value=""> <label
													class="custom-control-label" for="cate-private"
													style="margin-right: 20px;">비공개</label>
											</div>
										</div>
										<!-- End of form-group -->
										
										<div class="adminCate-submitBtn">
											<a href="#" class="btn btn-success btn-icon-split"
												style="height: 38px !important;"> <span class="text">확인</span>
											</a>
										</div>
									</div>
								</div>

							</form>
						</div>
					</div>

					<!-- 카테고리 정보 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-success">카테고리 정보</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>No</th>
											<th>Category Title</th>
											<th>Public</th>
											<th>Private</th>
											<th>Delete</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>No</th>
											<th>Category Title</th>
											<th>Public</th>
											<th>Private</th>
											<th>Delete</th>
										</tr>
									</tfoot>
									<tbody>
										<tr>
											<td>01</td>
											<td><a href="#">디저트</a></td>
											<td>공개</td>
											<td></td>
											<td><a href="#">X</a></td>
										</tr>

										<tr>
											<td>02</td>
											<td><a href="#">사이드</a></td>
											<td>공개</td>
											<td></td>
											<td><a href="#">X</a></td>
										</tr>

										<tr>
											<td>03</td>
											<td><a href="#">햄버거</a></td>
											<td>공개</td>
											<td></td>
											<td><a href="#">X</a></td>
										</tr>

										<tr>
											<td>04</td>
											<td><a href="#">빙수</a></td>
											<td></td>
											<td>비공개</td>
											<td><a href="#">X</a></td>
										</tr>

										<tr>
											<td>05</td>
											<td><a href="#">치킨</a></td>
											<td>공개</td>
											<td></td>
											<td><a href="#">X</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
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

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">Ã</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-success" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>

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

	<!-- Page level plugins -->
	<script
		src="${pageContext.request.contextPath}/assets/vendor/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script
		src="${pageContext.request.contextPath}/assets/js/admin/demo/datatables-demo.js"></script>

</body>

</html>
