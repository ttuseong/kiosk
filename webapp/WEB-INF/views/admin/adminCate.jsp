<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
	
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
	href="${pageContext.request.contextPath}/assets/css/admin/admin.css"
	rel="stylesheet">

<!-- Custom styles for this page -->
<link
	href="${pageContext.request.contextPath}/assets/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
	
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/menuCateTool.css">

</head>

<body id="page-top">

	<!-- 관리자페이지 헤더 -->
		<jsp:include page="/WEB-INF/views/includes/adminHeader.jsp" />
	<!-- 관리자페이지 헤더 -->

	<!-- Page Wrapper -->
	<div id="wrapper">


		<!-- Sidebar -->
		<ul class="navbar-nav bg-gradient-success sidebar sidebar-dark accordion" id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a class="sidebar-brand d-flex align-items-center justify-content-center" href="adminMenu">
			
				<div class="sidebar-brand-text mx-3">Admin</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Menu Info -->
			<li class="nav-item"><a class="nav-link" href="adminMenu">
					<i class="fas fa-fw fa-info-circle"></i> <span>메뉴 정보</span>
			</a></li>
			
			<!-- Nav Item - Menu Info -->
			<li class="nav-item"><a class="nav-link" href="adminToping">
					<i class="fas fa-fw fa-hamburger"></i> <span>토핑 정보</span>
			</a></li>

			<!-- Nav Item - Category -->
			<li class="nav-item active"><a class="nav-link" href="adminCate"> <i
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
					<h1 class="h3 mb-2 text-gray-800" style="padding: 1.5rem 0 1.2rem 0 !important;">Kiosk Category</h1>

					<!-- 카테고리 추가 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">카테고리 추가 및 수정</h6>
						</div>
						<div class="card-body">
							<form action="" method="" class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100">
								<div class="input-group">
									<p id="adminCate-Category">카테고리</p>
									<input type="text"
										
										class="form-control adminCate-addCateForm border-0 small"
										placeholder="카테고리를 입력하세요." aria-label="addCate"
										aria-describedby="basic-addon2">
									
										
									<div class="form-groupAndBtn">	
										<div class="form-group">
											<div class="custom-control custom-checkbox"
												style="padding-left: 3rem !important;">
												<input type="radio" class="custom-control-input"
													id="cate-public" name="cate-openStatus" value="1" checked="checked">
												<label class="custom-control-label" for="cate-public">공개</label>
											</div>
	
	
											<div class="custom-control custom-checkbox"
												style="padding-left: 3rem !important;">
												<input type="radio" class="custom-control-input"
													id="cate-private" name="cate-openStatus" value="0" > 
												<label class="custom-control-label" for="cate-private" style="margin-right: 20px;">비공개</label>
											</div>
										</div>
										<!-- End of form-group -->
										
										<div class="adminCate-submitBtn" id="adminCate-insert">
											<a href="#" class="btn btn-success btn-icon-split"
												style="height: 38px !important;"> <span class="text adminCate-btn" >확인</span>
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
							<h6 class="m-0 font-weight-bold text-success">카테고리 목록</h6>
							<!-- 카테고리 툴팁 -->
							<div class="adminCate-tooltip">
								<i class="fa fa-question-circle" id="tooltipTextHover"></i>
								<span class="tooltip-text">
									카테고리 이름을 클릭하시면<br>
									카테고리 수정이 가능합니다.
								</span>
							</div>

						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" width="100%"cellspacing="0">
									<div class="admin-search dataTables_filter">
										<form action="${pageContext.request.contextPath}/admin/adminCate" method="get">	
											<label>Search:</label>
											<input name="searchTerm" type="search" class="form-control-search" id="findSearch" placeholder="카테고리 찾기" aria-controls="dataTable">
											<div class="adminCate-submitBtn" style="display: inline;">
		                                		<button type="submit"  class="btn btn-success btn-icon-split" id="adminCate-search">확인</button>
		                             		</div>
	                             		</form>
									</div>
									<thead>
										<tr>
											<th>No</th>
											<th>Category Title</th>
											<th>Public</th>
											<th>Private</th>
											<th>Delete</th>
											<th>사진미리보기</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>No</th>
											<th>Category Title</th>
											<th>Public</th>
											<th>Private</th>
											<th>Delete</th>
											<th>사진미리보기</th>
										</tr>
									</tfoot>
									<tbody>

											<c:forEach items="${resultMap.cateList}" var="cList" varStatus="status">
												<tr data-no="${cList.categoryNo }">
													<td>${cList.categoryNo}</td>
													<td><a href="#" class="adminCate-title">${cList.categoryName}</a></td>
													<td>
														<c:if test="${cList.publicYN == 1}">공개</c:if>
													</td>
													<td>
														<c:if test="${cList.publicYN == 0}">비공개</c:if>
													</td>
													<td><a href="#" class="adminCate-delete">X</a></td>
													<td>
														<div class="adminnCate-tooltipPicture">
															<i class="far fa-image fa-lg tooltipImgHover"></i>
															<span class="tooltip-img"><img alt="미리보기 이미지" src="${pageContext.request.contextPath}/kfc/${cList.categoryImg}"></span>
														</div>
													</td>
												</tr>
											</c:forEach>
									</tbody>
								</table>
								
								<ul class="pagination admin-paging">
									<li class=""><a
									  <c:if test="${resultMap.point>1}">
										href="${pageContext.request.contextPath}/admin/adminCate?searchTerm=${resultMap.searchTerm}&point=${resultMap.point-1}"
									  </c:if>	 
										class="admin-pageLink admin-pagePrevious">Previous</a></li>
									 
									  <c:forEach begin="1" end="${resultMap.totalPage}" var="i"> <!-- i는 뽑아지는 값  begin으로 1페이지를 왔다치자! totalPage가 3이라치자 2페이지는 어떻게 갈건데?-->
                                        <c:if test="${resultMap.point == i}">
									   		<li class=""><a href="${pageContext.request.contextPath}/admin/adminCate?searchTerm=${resultMap.searchTerm}&point=${i}" class="admin-pageLink admin-pageActive">${i}</a></li>
                                        </c:if>
                                        <c:if test="${resultMap.point != i}">
                                        	<li class=""><a href="${pageContext.request.contextPath}/admin/adminCate?searchTerm=${resultMap.searchTerm}&point=${i}" class="admin-pageLink">${i}</a></li>
                                        </c:if>
                                    </c:forEach>
                                    <li class=""><a
                                    <c:if test="${resultMap.point<resultMap.totalPage}">
                                    	href="${pageContext.request.contextPath}/admin/adminCate?searchTerm=${resultMap.searchTerm}&point=${resultMap.point+1}" 
                                    </c:if>
                                    class="admin-pageLink admin-next">next</a></li>
								</ul>
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
		
	<script
		src="${pageContext.request.contextPath}/assets/js/admin/adminCate.js"></script>
		

</body>

</html>
