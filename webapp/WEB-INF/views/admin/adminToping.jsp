<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>관리자페이지 - 토핑</title>

<!-- Custom fonts for this template -->
<link href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/assets/css/admin/sb-admin-2.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/admin/admin.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="${pageContext.request.contextPath}/assets/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

<!-- 기타 css 및 부트스트랩 -->
<link href="${pageContext.request.contextPath}/assets/css/admin/menuInfo.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/admin/admin.css" rel="stylesheet" type="text/css">
	
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/menuToppingTool.css"> <!-- 토핑툴 -->

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
			<a class="sidebar-brand d-flex align-items-center justify-content-center" href="adminMenu"> <div class="sidebar-brand-text mx-3">Admin</div></a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Menu Info -->
			<li class="nav-item"><a class="nav-link" href="adminMenu"> <i class="fas fa-fw fa-info-circle"></i> <span>메뉴 정보</span></a></li>

			<!-- Nav Item - Menu Info -->
			<li class="nav-item active"><a class="nav-link" href="adminToping"><i class="fas fa-fw fa-hamburger"></i><span>토핑 정보</span></a></li>

			<!-- Nav Item - Category -->
			<li class="nav-item"><a class="nav-link" href="adminCate"> <i class="fas fa-fw fa-folder"></i> <span>키오스크 카테고리</span></a></li>

			<!-- Nav Item - Stats -->
			<li class="nav-item"><a class="nav-link" href="adminStats"><i class="fas fa-fw fa-chart-area"></i> <span>통계</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline"> <button class="rounded-circle border-0" id="sidebarToggle"></button></div>

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800" style="padding: 1.5rem 0 1.2rem 0 !important;">Toping Information</h1>

					<!-- 토핑 추가 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">토핑 추가 및 수정</h6>
						</div>
						<div class="card-body">
							<form action="" method="post" id="toppingImgUpload" class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100" enctype="multipart/form-data">
					            <div class="input-groupTopping">
					            	<p>토핑</p>
									<input type="text" class="form-control adminTopping-addForm border-0 small" placeholder="이름을 입력하세요." aria-label="addCate" aria-describedby="basic-addon2" name="toppingName">
									
									<p>가격</p>
									<input type="number" class="form-control adminTopping-addFormD border-0 small" placeholder="ex) 300" aria-label="addCate" aria-describedby="basic-addon2" name="toppingPrice" style="width: 100px!important;">       
	
					            	<p>이미지 넣기</p>
								  	<input id="topping-menuImgInput" name="file" type="file" style="width:200px;"/>
		

									<a href="#" class="adminTopping-btn btn btn-success btn-icon-split" style="height: 38px!important;"><span class="text">확인</span></a>
								   
					            </div>
					          </form>
						</div>
					</div>

					<!-- 토핑 정보 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-success">토핑 목록</h6>
							<!-- 토핑 툴팁 -->
							<div class="adminCate-tooltip-topping">
								<i class="fa fa-question-circle" id="toppingQuestionTool"></i>
								<span class="tooltip-text">토핑 이름을 클릭하시면<br>토핑 수정이 가능합니다.</span>
							</div>
						</div>
						<div class="card-body">
							<div class="table-responsive">

								<table class="table table-bordered adminToping-table" width="100%" cellspacing="0">
									<div class="admin-search dataTables_filter">
										<form action="/kiosk/admin/adminToping" method="get">	
											<label>Search:</label>
											<input name="searchToppingTitle" type="search" class="form-control-search" onSubmit="return loginCheck();" id="findSearch" placeholder="토핑 찾기" aria-controls="dataTable">
											<div class="adminCate-submitBtn" style="display: inline;">
		                                		<button type="submit"  class="btn btn-success btn-icon-split" id="adminTopping-search">확인</button>
		                             		</div>
	                             		</form>
									</div>

									<thead>
										<tr>
											<th>No</th>
											<th>Name</th>
											<th>Price</th>
											<th>Delete</th>
											<th>사진미리보기</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>No</th>
											<th>Name</th>
											<th>Price</th>
											<th>Delete</th>
											<th>사진미리보기</th>
										</tr>
									</tfoot>
									<tbody>
										<c:if test="${fn:length(tMap.toppingList) == 0}">
											<td></td>
											<td style="text-align:center">검색결과가 없습니다.</td>
											<td></td>
											<td></td>
											<td></td>
										</c:if>
										
											<c:forEach items="${tMap.toppingList}" var="tList" varStatus="status">
											<tr data-toppingno="${tList.toppingNo }">
												<td>${tList.rn}</td>
												<td><a href="#" class="toppingTitle">${tList.toppingName}</a></td>
												<td>${tList.toppingPrice}</td>
												<td><a href="#" class="toppingDeleteBtn">X</a></td>
												<td>
													<div class="adminnCate-tooltipPicture">
														<i class="far fa-image fa-lg tooltipImgHover"></i>
														<span class="tooltip-img"><img alt="미리보기 이미지" src="${pageContext.request.contextPath}/kfc/${tList.toppingImg}"></span>
													</div>
												</td>
											</tr>
											</c:forEach>
										
										
									
										
									</tbody>
								</table>
								<ul class="pagination admin-paging">
									<li class=""><a
									  <c:if test="${tMap.prev == true}">
										href="${pageContext.request.contextPath}/admin/adminToping?searchToppingTitle=${tMap.searchToppingTitle}&crtPage=${tMap.crtPage-1}"
									  </c:if>	 
										class="admin-pageLink admin-pagePrevious">Previous</a></li>
									<c:forEach begin="${tMap.startPageBtnNo }" end ="${tMap.endPageBtnNo}" step="1" var="page"> 
                                        <c:if test="${tMap.crtPage == page}">
									   		<li class=""><a href="${pageContext.request.contextPath}/admin/adminToping?searchToppingTitle=${tMap.searchTopping}&crtPage=${page}" class="admin-pageLink admin-pageActive">${page}</a></li>
                                        </c:if>
                                        <c:if test="${tMap.crtPage != page}">
                                        	<li class=""><a href="${pageContext.request.contextPath}/admin/adminToping?searchToppingTitle=${tMap.searchTopping}&crtPage=${page}" class="admin-pageLink">${page}</a></li>
                                        </c:if>
                                    </c:forEach>
									<li class=""><a
                                    <c:if test="${tMap.next == true }">
                                    	href="${pageContext.request.contextPath}/admin/adminToping?searchToppingTitle=${tMap.searchToppingTitle}&crtPage=${tMap.crtPage+1}" 
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
	<a class="scroll-to-top rounded" href="#page-top"> <i class="fas fa-angle-up"></i></a>

	<!-- Bootstrap core JavaScript-->
	<script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script> 
	<script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="${pageContext.request.contextPath}/assets/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="${pageContext.request.contextPath}/assets/js/admin/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="${pageContext.request.contextPath}/assets/vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="${pageContext.request.contextPath}/assets/js/admin/demo/datatables-demo.js"></script>
		
	<script src="${pageContext.request.contextPath}/assets/js/admin/adminToping.js"></script>

</body>

</html>
