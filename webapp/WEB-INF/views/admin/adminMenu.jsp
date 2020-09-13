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
								<form id="menuImgInput" method="post" enctype="multipart/form-data">
									<!-- 메뉴 이미지 -->
										<img
										src="${pageContext.request.contextPath}/assets/images/icon1.png"
										class="menuInfo-menuImg img-rounded">
										 <input
										id="menuInfo-menuImgInput" name="file" type="file" style="margin: auto;" />
								</form>	
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
											<ul class="dropdown-menu adminDropdownCateList" id="adminDropdownCateList" role="menu"
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
											id="adminDropdownMenuName">
											<button class="btn btn-default dropdown-toggle" type="button"
												id="dropdownMenu1" data-toggle="dropdown"
												aria-expanded="true" style="margin-right: 0;">
												메뉴를 선택하세요. <span class="caret"></span>
											</button>
											<ul class="dropdown-menu adminDropdownMenuList" id="adminDropdownMenuList" role="menu"
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
									<input type="checkbox" class="isSpecial" id="promotionMenu" name="isSpecial" value="1" style="margin-left: 0 !important;">
									<p class="normal">프로모션</p>
									<input type="checkbox" class="isSpecial" id="recommendMenu" name="isSpecial" value="2">
									<p class="normal">추천메뉴</p>
									<input type="checkbox" class="isSpecial" id="newMenu" name="isSpecial" value="4">
									<p class="normal">신메뉴</p>
								</div>

								<!-- 추가구성 -->
								<div class="adminMenu-unitCheck">
									<p style="margin-right: 20px;">추가구성</p>

									<!-- 단위 정보 들어갈 자리 -->

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
								
								<!-- 변경이 가능한 메뉴 -->
								<div class="menuInfo-isChange">
									<input type="checkbox" id="isChange" value="1" style="vertical-align: middle; margin-right: 5px;">
									<p class="normal">변경이 가능한 메뉴입니까?</p>
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
								<th></th>
								<th>이름</th>
								<th>추가 구성</th>
								<th>관리</th>
							</tr>
						</thead>

						<tbody class="unitListModal-tbody">
							<!-- 단위 리스트 들어갈 자리 -->
						</tbody>
					</table>

				</div>
				<!-- 모달 바디 끝 -->

				<div class="modal-footer" id="unitListModal-footer">
					<div class="adminMenu-footerBtnContainer">
						<a href="#"
							class="btn btn-secondary btn-icon-split adminMenu-unitDel" id="adminMenu-unitDel"> <span
							class="text">선택 구성 삭제</span>
						</a><a href="#"
							class="btn btn-success btn-icon-split adminMenu-unitAdd" id="adminMenu-unitAdd"> <span
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
							<input type="text" id="unitManager-unitNameInput" placeholder="ex) 세트/콤보/박스">
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
										<!-- 카테고리 리스트 들어갈 자리 -->
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
										<!-- 메뉴 리스트 들어갈 자리 -->
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
							class="btn btn-success btn-icon-split adminMenu-unitAdd unitAdd-submit unitModify-submit">
							<input type="hidden" class="numberOfUnit" value="1">
							<input type="hidden" class="unitNo" value="0">
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
	/* 페이지가 로드되는 순간 불러와야 할 정보들 */
	$(document).ready(function(){	
		var storeNo = 2;
		getUnitBasicInfo(storeNo) // 관리자 단에서 뿌려질 단위 정보
		getCateList(storeNo); // 카테고리 리스트
		getUnitList(storeNo); // 단위 모달에서 뿌려질 단위 정보
	});	

	//파일 업로드를 통해 이미지를 올릴 경우 이미지를 미리 보여주는 코드
	function readURL(input){
		if(input.files && input.files[0]){
			var reader = new FileReader();
			reader.onload = function(e) {
				$(".menuInfo-menuImg").attr("src", e.target.result);
			};
			reader.readAsDataURL(input.files[0]);
		}		
	}
	
	$("#menuInfo-menuImgInput").change(function(){
		readURL(this);
	});
	
	// 해당 매장의 단위 넘버와 이름 가져오기 함수
	function getUnitBasicInfo(storeNo) {
		$.ajax({
			url : "${pageContext.request.contextPath}/admin/getUnitBasicInfo",
			type : "post",
			data : { storeNo : storeNo },
			dataType : "json",
			success : function(unitList) { /*성공시 처리해야될 코드 작성*/
				for (var i = 0; i < unitList.length; i++) {
					var str = '';
					
					str += '<div class="adminMenu-unitBasicInfo" id="unitInfo_' + unitList[i].unitNo + '">';
					str += '	<input type="radio" id="unitInfo_check_' + unitList[i].unitNo + '" name="unitBasicInfo"';
					str += '		value="' + unitList[i].unitNo + '" style="margin-left: 0 !important;">';
					str += '	<p class="normal">' + unitList[i].unitName + '</p>';
					str += '</div';
					
					$(".adminMenu-unitListBtn").before(str);
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
	
	// 카테고리 리스트 불러오기 함수
	function getCateList(storeNo) {
		$.ajax({
			url : "${pageContext.request.contextPath}/admin/adminCateList",
			type : "post",
			data : { storeNo : storeNo },
			dataType : "json",
			success : function(cateList) { /*성공시 처리해야될 코드 작성*/
				for (var i = 0; i < cateList.length; i++) {
					cateListRender(cateList[i], "#adminDropdownCateList");
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
	
	// 카테고리 리스트 html 그리기 함수
	function cateListRender(cateList, selector) {
		var str = '';
		
		str += '<li role="presentation" id="cateNo_' + cateList.categoryNo + '"';
		str += 'value="' + cateList.categoryNo + '"><a role="menuitem"';
		str += 'tabindex="-1" href="#">'
				+ cateList.categoryName + '</a></li>';
	
		$(selector).prepend(str);
	}
	
	// 단위 모달 정보 받아오기 함수
	function getUnitList(storeNo) {
		$(".unitListModal-tbody").children('tr').remove(); // 모달을 열 때마다 tbody 비워줌 (비워주지 않을 시 클릭 할 때마다 ajax가 실행되어 구성 리스트가 중복적으로 출력됨)
		
		$.ajax({
			url : "${pageContext.request.contextPath}/admin/adminUnitList",
			type : "post",
			data : { storeNo : storeNo },
			dataType : "json",
			success : function(unitList) { /*성공시 처리해야될 코드 작성*/
				var unitNo = 0;
				
				for (var i = 0; i < unitList.length; i++) {					
					var str = '';
					if(unitNo != unitList[i].unitNo) {	
						str += '<tr id="unitNo_' + unitList[i].unitNo + '">';
						
								/* 체크 박스 */
						str += '	<td><input type="radio" id="check_' + unitList[i].unitNo;
						str += '" value="' + unitList[i].unitNo + '" name="selectUnit_check"></td>';
						
								/* 단위 이름 (세트, 박스 등) */
						str += '	<td>' + unitList[i].unitName + '</td>';
						str += '	<td id="unitNo_' + unitList[i].unitNo + '_td">';
						
								/* 구성 출력 */
						str += unitList[i].categoryName + ': ' + unitList[i].menuName + '<br>';
						str += '	</td>';
						str += '	<td>';
						
								/* 수정 / 적용 버튼 */
						str += '		<div class="adminMenu-unitListBtnContainer">';
						str += '			<input type="hidden" id="btn_unit_' + unitList[i].unitNo;
						str += ' "value="' + unitList[i].unitNo + '">';
						str += '			<a href="#"';
						str += '				class="btn btn-secondary btn-icon-split adminMenu-unitListModify">';
						str += '				<span class="text">수정</span>';
						str += '			</a><a href="#"';
						str += '				class="btn btn-success btn-icon-split adminMenu-unitListSelect">';
						str += '				<span class="text">적용</span>';
						str += '			</a>';
						str += '		</div>';
						str += '	</td>';
						str += '</tr>';
						
						$(".unitListModal-tbody").prepend(str);
						unitNo = unitList[i].unitNo;
						
					}
					else if(unitNo == unitList[i].unitNo) {
						str += unitList[i].categoryName + ': ' + unitList[i].menuName + '<br>';
						$("#unitNo_" + unitNo + '_td').prepend(str);
					}
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}

	/* 메뉴 리스트 받아오기 (특정 카테고리 선택 시, 해당 카테고리에 속해있는 메뉴 리스트 뽑아옴) */
	$(".adminDropdownCateList").on("click", "li", function() {
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
			data : { cateNo : cateNo },
			dataType : "json",
			success : function(menuList) { /*성공시 처리해야될 코드 작성*/
				
				if(menuList.length == 0) { // 카테고리 내에 입력된 메뉴가 없을 경우
					var str = '';
						
					str += '<li role="presentation" id="menuNo_0" value=""><a role="menuitem" tabindex="-1">새로운 메뉴 입력</a></li>';

					$("#adminDropdownMenuList").prepend(str);
				}
				else { // 메뉴가 하나라도 있을 경우 메뉴 리스트 출력
					
					for (var i = 0; i < menuList.length; i++) {
						menuListRender(menuList[i], $("#adminDropdownMenuList"));
					}

					var str = '';
				
					str += '<li role="presentation" id="menuNo_0" value="0">';
					str += '<a role="menuitem" tabindex="-1">새로운 메뉴 입력</a></li>';
					str += '<li role="presentation" class="divider"></li>';
					str += '<hr id="amdinMenu-menuDropdwon-hr">';

					$("#adminDropdownMenuList").prepend(str);
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});

	});

	// 메뉴 리스트 html 그리기 함수
	function menuListRender(menuList, selector) {
		var str = '';

		str += '<li role="presentation" id="menuNo_' + menuList.menuNo + '"';
		str += 'value="' + menuList.menuNo + '"><a role="menuitem"';
		str += 'tabindex="-1" href="#">'
				+ menuList.menuName + '</a></li>';

		selector.prepend(str);
	}
	
	// 카테고리를 한 번 선택할 때마다 초기화해줘야 하는 것들 (함수)
	function initialization() {
		$("#adminDropdownMenuList").children('li').remove(); // 기존 menuList 삭제
		$("#adminDropdownMenuName").children('button').text("메뉴를 선택하세요."); // 메뉴 드롭다운 타이틀 초기화
		$("#amdinMenu-menuDropdwon-hr").remove(); // 메뉴 드롭다운 리스트 초기화
		$("#selectMenuNo").val(""); // 페이지 하단의 메뉴 넘버 초기화
		$(".adminMenu-menuSubmitBtn").children('span').text("확인"); // 하단 버튼이 [확인]으로 변경
		resetInput(); // 인풋박스 모두 비워주기
	}
	
	// 인풋박스를 모두 비워주는 함수
	function resetInput() {
		$("#menuName").val("");
		$("#menuPrice").val("");
		$("#menuCalorie").val("");
		$("#menuDesc").val("");

		$("input[type=checkbox]").prop("checked", false); // 체크박스 모두 해제
		$("input[type=radio]").prop("checked", false); // 체크박스 모두 해제
	}
	
	/* 메뉴 정보 받아오기 (특정 메뉴 선택시 해당 메뉴에 대한 정보 받아옴 - 메뉴이름, 가격, 이미지 등) */
	$(".adminDropdownMenuList").on("click", "li", function() {
		event.preventDefault(); // 본래 html 안에 있는 태그의 기능을 사용하지 않음 (a 태그 사용 중지를 위함)

		var id = $(this).attr('id'); // 메뉴 드롭다운 li의 아이디값 받아오기 - 메뉴 넘버 알아오기 위함
		var menuNo = document.getElementById(id).value; // li의 value값(메뉴 넘버) 받아오기
		console.log(id + ', ' + menuNo);
		
		$("#selectMenuNo").val(menuNo); // 메뉴 등록, 수정, 삭제를 위해 페이지 하단에 메뉴 넘버 넘겨주기

		var menuName = $("#" + id).text(); // 선택한 메뉴 이름 받아오기 
		$("#adminDropdownMenuName").children('button').text(menuName); // '메뉴를 선택하세요' 문구를 선택한 메뉴 이름으로 변경

		if(menuNo == 0) { // 새로운 메뉴 등록을 클릭했을 경우 인풋박스 모두 지워줌
			resetInput();
			$(".adminMenu-menuSubmitBtn").children('span').text("확인"); // 입력 메뉴가 선택 된 경우 하단의 submit 버튼을 [확인]으로 바꿔줌
		}
		else {
			$(".adminMenu-menuSubmitBtn").children('span').text("수정"); // 메뉴가 선택 된 경우 하단의 submit 버튼을 [수정]으로 바꿔줌
			
			$.ajax({
				url : "${pageContext.request.contextPath}/admin/adminMenuInfo",
				type : "post",
				data : { menuNo : menuNo },
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
	
	// 메뉴 정보 받아서 인풋에 출력해주는 함수
	function menuInfo(menuVo) {
		$("#menuName").val(menuVo.menuName);
		$("#menuPrice").val(menuVo.menuPrice);
		/* $("#menuCalorie").val(menuVo.menuCalorie); */
		$("#menuDesc").val(menuVo.menuDesc);

		$("input[type=checkbox]").prop("checked", false); // 먼저 체크박스를 모두 해제해 줌
		$("input[type=radio]").prop("checked", false); // 먼저 체크박스를 모두 해제해 줌
		
		// isSpecial => 1 : 프로모션 / 2 : 추천 / 4 : 신메뉴
		switch (menuVo.isSpecial){
		    case 1 : // 1일 경우 프로모션 체크박스 체크해 줌
				$('input:checkbox[id="promotionMenu"]').prop("checked", true); 
		        break;
		        
		    case 2 : // 2일 경우 추천메뉴 체크박스 체크해 줌
				$('input:checkbox[id="recommendMenu"]').prop("checked", true); 
		        break;
		        
		    case 3 : // 3일 경우 프로모션, 추천메뉴 체크박스 체크해 줌
				$('input:checkbox[id="promotionMenu"]').prop("checked", true); 
				$('input:checkbox[id="newMenu"]').prop("checked", true); 
		        break;
		        
		    case 4 : // 4일 경우 신메뉴 체크박스 체크해 줌
				$('input:checkbox[id="newMenu"]').prop("checked", true); 
		        break;
		        
		    case 5 : // 5일 경우 프로모션, 신메뉴 체크박스 체크해 줌
				$('input:checkbox[id="promotionMenu"]').prop("checked", true); 
				$('input:checkbox[id="newMenu"]').prop("checked", true); 
		        break;
		        
		    case 6 : // 6일 경우 추천메뉴, 신메뉴 체크박스 체크해 줌
				$('input:checkbox[id="newMenu"]').prop("checked", true); 
		        break;
		        
		    case 7 : // 7일 경우 전체 체크해 줌
				$('input:checkbox[name="isSpecial"]').prop("checked", true); 
		        break;    
		}
		
		if(menuVo.isChange == 1) {
			$('input:checkbox[id="isChange"]').prop("checked", true); 
		}

		// 추가 구성 체크
		if(menuVo.unitNo != null && menuVo.unitNo != 0) {
			$('input:radio[id="unitInfo_check_' + menuVo.unitNo + '"]').prop("checked", true); 
		}
	}

	/* 메뉴 삭제 */
	$(".adminMenu-menuDelBtn").on("click", function() {
		event.preventDefault(); // 본래 html 안에 있는 태그의 기능을 사용하지 않음 (a 태그 사용 중지를 위함)
		
		var menuNo = $("#selectMenuNo").val(); // 메뉴 넘버 받아오기
		console.log("삭제 버튼 클릭", menuNo);
		
		if (window.confirm("삭제하시겠습니까?")) { // 알림창 띄우기
			// 확인 버튼을 누른 경우
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
					data : { menuNo : menuNo },
					dataType : "json",
					success : function(cnt) { /*성공시 처리해야될 코드 작성*/
						$("html").scrollTop(0); // 화면 최상단으로 이동
						alert("삭제가 완료되었습니다.");
						$("#adminDropdownMenuName").children('button').text("메뉴를 선택하세요."); // 메뉴 드롭다운 타이틀 초기화
						$("#menuNo_" + menuNo).remove();  // 해당 메뉴 리스트에서 삭제
						
						// 인풋박스 모두 비워주기
						resetInput();
					},
					error : function(XHR, status, error) {
						console.error(status + " : " + error);
					}
				});
			}
		}
		else {
			// 취소버튼을 누른 경우
		}
	});

	/* 메뉴 수정 & 추가 */
	$(".adminMenu-menuSubmitBtn").on("click", function() {
		event.preventDefault(); // 본래 html 안에 있는 태그의 기능을 사용하지 않음 (a 태그 사용 중지를 위함)
        
		// 메뉴 정보 받기
		var menuNo = $("#selectMenuNo").val();
		var cateNo = $("#selectCateNo").val();
		var unitNo = $("input[id^='unitInfo_check_']:checked").val();
		if(unitNo == null) {
			unitNo = 0;
		}
		
		// menuVo의 isSpecial 값을 위한 부분
		var isSpecial = 0; // 아무 것도 체크되지 않은 상태에서는 0임
		var check_count = document.getElementsByClassName("isSpecial").length; // 체크박스 개수 알아옴
		
        for (var i = 0; i < check_count; i++) { // 체크박스 개수만큼 반복
            if (document.getElementsByClassName("isSpecial")[i].checked == true) {  // 체크 된 박스일 경우
            	var checked_isSpecial = document.getElementsByClassName("isSpecial")[i].value; // 체크 된 박스의 value 값 가져옴
            	isSpecial += parseInt(checked_isSpecial); // 체크 된 값 더해줌
            }
        }
		
		// isChange (변경 가능한 메뉴인 지에 대한 여부 / 변경불가: 0, 변경가능: 1)
		var isChange = 0; // 아무 것도 체크되지 않은 상태에서는 0임
		if($('input:checkbox[id="isChange"]').is(":checked") == true) {  // isChange가 체크 된 경우
			var checked_isChange = $('input:checkbox[id="isChange"]').val(); // 체크 된 박스의 value 값 가져옴
			isChange = parseInt(checked_isChange); // isChange 값 변경해 줌
		}
		
		var form = $("#menuImgInput");
		var imgData = new FormData(form[0]);
		
		imgData.append("menuNo", menuNo);
		imgData.append("categoryNo", cateNo);
		imgData.append("menuName", $("#menuName").val());
		imgData.append("menuPrice", Number($("#menuPrice").val()));
		imgData.append("isSpecial", isSpecial);
		imgData.append("isChange", isChange);
		imgData.append("menuDesc", $("#menuDesc").val());
		imgData.append("unitNo", unitNo);

     	// 메뉴 정보 묶어주기
		var menuVo = { 
			menuNo: menuNo,
			categoryNo: cateNo,
			menuName: $("#menuName").val(), 
			menuPrice: $("#menuPrice").val(), 
			/* menuCalorie: $("#menuCalorie").val(),  */
			menuDesc: $("#menuDesc").val(),
			isSpecial: isSpecial,
			isChange: isChange,
			unitNo: unitNo
		};
	
     
		if(menuNo == 0 && cateNo == 0) { // 메뉴 추가 시 카테고리를 선택하지 않은 경우 경고창 띄움
			alert("카테고리를 선택하세요.");
		}
		else if(menuNo == '') { // menuNo이 null일 경우 아직 메뉴가 선택되지 않은 상태임
			alert("메뉴를 선택하세요.\n새로운 메뉴를 추가하실 경우 메뉴 드롭다운에서 [새로운 메뉴 입력] 버튼을 눌러주세요.");
		}	
		else {
			// 인풋박스가 모두 null이 아닐 경우에 메뉴 추가
			var txtInput = $(".menuInfo-basicInfoContainer input[type=text]"); // input[type=text](메뉴이름, 가격, 칼로리)
			var txtarea = $(".menuInfo-menuDescription :input"); // textarea (메뉴 설명)
			
			if(menuNo == 0) { // 메뉴 추가
				// (조건 ? 참일 경우 수행 : 거짓일 경우 수행)
				txtFieldCheck(txtInput) == true ? true : txtFieldCheck(txtarea) == true ? true : menuAdd(imgData);
			}
			else { // 메뉴 수정
				txtFieldCheck(txtInput) == true ? true : txtFieldCheck(txtarea) == true ? true : menuModify(menuVo);			
			} 
		}

	});
	
	// 메뉴정보 카드 안의 모든 input box를 조회하는 함수
	function txtFieldCheck(txtEle){
		for(var i = 0; i < txtEle.length; i ++){ // input box 모두 순회하여 null 값 있는지 찾기
			if("" == $(txtEle[i]).val() || null == $(txtEle[i]).val()){ // null인 경우
				var ele_id = $(txtEle[i]).attr("id"); // 해당 input의 아이디 가져오기
				
				alert("기본 정보를 모두 입력해주세요."); // 경고창 띄움
				
				// 해당 input에 focus
				$("#" + ele_id).focus();
				
				return true;
			}
		}
	}
	
	/* 메뉴 추가 함수 */
	function menuAdd(imgData) {
		$.ajax({
			url : "${pageContext.request.contextPath}/admin/adminAddeMenu",
			type : "post",
			enctype: 'multipart/form-data',
			processData:false,
			contentType: false,
			data : imgData, /* json 형식으로 변형 */
			dataType : "json",
			
			success : function(result) { /*성공시 처리해야될 코드 작성*/
				if(result > 0){
					// $(location).attr('href', 'http://125.180.31.137:8088/kiosk/admin/adminMenu');
					
					alert("추가가 완료되었습니다."); // 알림창
					location.reload();
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
	
	/* 메뉴 수정 함수 */
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
	
	/* 이중모달 허용 */
	$(document).on('hidden.bs.modal', function(event) {
		if ($('.modal:visible').length) {
			$('body').addClass('modal-open');
		}
	});

	/* 추가 구성 리스트 모달 열기 */
	$(".adminUnitListBtn").on("click", function() {
		$("#unitListModal").modal();
	});
	
	// 추가 구성 리스트 모달 닫기
	$(".unitListModal-close").on("click", function() {
		$("#unitListModal").modal("hide");
	});
	
	// 단위 모달 - 카테고리 리스트 받아오기 함수
	function renderCateList(storeNo, selector) {
		$.ajax({
			url : "${pageContext.request.contextPath}/admin/adminCateList",
			type : "post",
			data : { storeNo : storeNo },
			dataType : "json",
			success : function(cateList) { /*성공시 처리해야될 코드 작성*/
				for (var i = 0; i < cateList.length; i++) {
					cateListRender(cateList[i], selector);
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
	
	/* 구성 추가 모달 열기 */
	$("#adminMenu-unitAdd").on("click", function() {
		$(".unitManagerModal-unitComponent").remove(); // 구성 추가/수정 모달을 함께 쓰기 때문에 중복 출력되지 않도록 모달이 열릴 때마다 비워줌
		$("#unitManager-unitNameInput").val(""); // 단위 이름 인풋박스 비우기
		$(".numberOfUnit").val("1"); // 단위 개수 초기화
		$(".unitNo").val(0); // 단위를 추가하는 경우에는 유닛 넘버가 아직 없는 상태이기 때문에 유닛 넘버 초기화 해 줌

		renderUnitAdd(0); // 단위 추가 html 그리기
		
		var storeNo = 2;
	
		renderCateList(storeNo, ".unitAddDropdownCateList"); // 카테고리 리스트 출력
		
		$("#unitManagerModal").modal();
	});
	
	// 단위 추가 - html 그리기
	function renderUnitAdd(i) {
		var str = '';
		
		str += '<div class="unitManagerModal-unitComponent">';
/* 		str += '	<!-- 추가 구성(카테고리, 메뉴) -->'; */
		if(i == 0) {
			str += '	<p>추가구성</p>';
		}
		str += '	<div class="unitManagerModal-cateDropdown">';
		str += '		<!-- 카테고리 드롭다운 -->';
		str += '		<div class="dropdown unitManagerModal-basicInfoDropdown" id="unitAddDropdownCateName">';
		str += '			<input type="hidden" id="selectCateNo_1" value="">';
		str += '			<button class="btn btn-default dropdown-toggle" type="button"';
		str += '				id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">';
		str += '				카테고리를 선택하세요. <span class="caret"></span>';
		str += '			</button>';
		str += '			<ul class="dropdown-menu unitAddDropdownCateList unitManagerModalCateList" role="menu"';
		str += '				aria-labelledby="dropdownMenu1">';
		str += '				<!-- 카테고리 리스트 들어갈 자리 -->';
		str += '			</ul>';
		str += '		</div>';
		str += '	</div>';
		str += '	<!-- 카테고리 드롭다운 끝 -->';

		str += '	<!-- 메뉴 드롭다운 -->';
		str += '	<div class="unitManagerModal-menuDropdown">';
		str += '		<div class="dropdown unitManagerModal-basicInfoDropdown" id="unitAddDropdownMenuName">';
		str += '			<input type="hidden" id="selectMenuNo_1" value="">';
		str += '			<button class="btn btn-default dropdown-toggle" type="button"';
		str += '				id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true" style="margin-right: 0;">';
		str += '				메뉴를 선택하세요. <span class="caret"></span>';
		str += '			</button>';
		str += '			<ul class="dropdown-menu unitAddDropdownMenuList unitManagerModalMenuList" role="menu"';
		str += '				aria-labelledby="dropdownMenu1">';
		str += '					<li role="presentation"><a role="menuitem"';
		str += '					tabindex="-1">카테고리 먼저 선택하세요.</a></li>';
		str += '			</ul>';
		str += '		</div>';
		str += '	</div>';
		str += '	<!-- 메뉴 드롭다운 끝 -->';

		if(i == 0) { // 첫번째 구성 요소에는 구성 추가 버튼 삽입
			str += '	<!-- 구성 추가 버튼 -->';
			str += '	<div class="unitManagerModal-btnContainer" id="unitAddBtn">';
			str += '		<a href="#" class="btn btn-success btn-circle unitAddBtn"';
			str += '			style="margin: auto;"> <i class="fas fa-plus"></i>';
			str += '		</a>';
			str += '	</div>';
			str += '	<!-- 구성 추가 버튼 끝 -->';
		}
		else { // 두 번째 요소부터는 구성 삭제 버튼 삽입
			str += '	<!-- 구성 삭제 버튼 -->';
			str += '	<div class="unitManagerModal-btnContainer" id="unitDelBtn">';
			str += '		<a href="#" class="btn btn-secondary btn-circle unitDelBtn btn-unitInfoDel"';
			str += '			style="margin: auto;"> <i class="fas fa-minus"></i>';
			str += '		</a>';
			str += '	</div>';
			str += '	<!-- 구성 삭제 버튼 끝 -->';
		}
			
		str += '</div>';
		str += '<!-- 추가 구성(카테고리, 메뉴) 끝 -->';

		$(".unitManagerModal-inputAndDropDownContainer").append(str);
	}

	/* 구성 수정 모달 열기 */
	// 수정 버튼의 경우 동적으로 할당 된 요소이기 때문에 이벤트를 실행하기 위해서는 위임을 받아줘야 함
	// (동적 할당 요소를 감싼 부모를 선택자로 지정하고, 그 안의 특정 요소를 클릭받을 때를 이벤트로 받아줘야 함)
	$(".unitListModal-tbody").on("click", ".adminMenu-unitListModify", function() {
		var unitNo = $(this).parent().children("input").val(); // 클릭 된 단위의 unitNo 받아옴
		$(".unitManagerModal-unitComponent").remove();
		$(".numberOfUnit").val("1"); // 단위 개수 초기화
		$(".unitNo").val(unitNo);
		
		var storeNo = 2;
		
		$.ajax({
			url : "${pageContext.request.contextPath}/admin/adminUnitInfoList",
			type : "post",
			data : { unitNo : unitNo },
			dataType : "json",
			success : function(adminUnitInfoList) { /*성공시 처리해야될 코드 작성*/
				$("#unitManager-unitNameInput").val(adminUnitInfoList[0].unitName);
				
				for(var i = 0; i < adminUnitInfoList.length; i++) {
					var str = '';
					
					str += '<div class="unitManagerModal-unitComponent">';
/* 					str += '	<!-- 추가 구성(카테고리, 메뉴) -->'; */
					if(adminUnitInfoList[i] == adminUnitInfoList[0]) {
						str += '	<p>추가구성</p>';
					}
					str += '	<div class="unitManagerModal-cateDropdown">';
					str += '		<!-- 카테고리 드롭다운 -->';
					str += '		<div class="dropdown unitManagerModal-basicInfoDropdown">';
					str += '			<input type="hidden" id="cateNo_' + (i + 1) + '" value="' + adminUnitInfoList[i].categoryNo + '">';
					str += '			<input type="hidden" id="selectCateNo_' + (i + 1) + '" value="' + adminUnitInfoList[i].categoryNo + '">';
					str += '			<button class="btn btn-default dropdown-toggle" type="button"';
					str += '				id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">';
					str += 					adminUnitInfoList[i].categoryName + ' <span class="caret"></span>';
					str += '			</button>';
					str += '			<ul class="dropdown-menu unitManagerModal-dropdownCate unitManagerModalCateList" role="menu"';
					str += '				aria-labelledby="dropdownMenu1">';
					str += '				<!-- 카테고리 리스트 들어갈 자리 -->';
					str += '			</ul>';
					str += '		</div>';
					str += '	</div>';
					str += '	<!-- 카테고리 드롭다운 끝 -->';
					
					str += '	<!-- 메뉴 드롭다운 -->';
					str += '	<div class="unitManagerModal-menuDropdown">';
					str += '		<div class="dropdown unitManagerModal-basicInfoDropdown">';
					str += '			<input type="hidden" id="menuNo" value="' + adminUnitInfoList[i].menuNo + '">';
					str += '			<input type="hidden" id="selectMenuNo_' + (i + 1) + '" value="' + adminUnitInfoList[i].menuNo + '">';
					str += '			<button class="btn btn-default dropdown-toggle" type="button"';
					str += '				id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true" style="margin-right: 0;">';
					str += 					adminUnitInfoList[i].menuName + ' <span class="caret"></span>';
					str += '			</button>';
					str += '			<ul class="dropdown-menu unitManagerModal-dropdownMenu unitManagerModalMenuList" id="unitModifyMenuList_' + i + '" role="menu"';
					str += '				aria-labelledby="dropdownMenu1">';
					str += '				<!-- 메뉴 리스트 들어갈 자리 -->';
					str += '			</ul>';
					str += '		</div>';
					str += '	</div>';
					str += '	<!-- 메뉴 드롭다운 끝 -->';
					
					if(adminUnitInfoList[i] == adminUnitInfoList[0]) { // 첫번째 구성 요소에는 구성 추가 버튼 삽입
						str += '	<!-- 구성 추가 버튼 -->';
						str += '	<div class="unitManagerModal-btnContainer" id="unitAddBtn">';
						str += '		<a href="#" class="btn btn-success btn-circle unitAddBtn"';
						str += '			style="margin: auto;"> <i class="fas fa-plus"></i>';
						str += '		</a>';
						str += '	</div>';
						str += '	<!-- 구성 추가 버튼 끝 -->';
					}
					else { // 두 번째 요소부터는 구성 삭제 버튼 삽입
						str += '	<!-- 구성 삭제 버튼 -->';
						str += '	<div class="unitManagerModal-btnContainer" id="unitDelBtn">';
						str += '		<a href="#" class="btn btn-secondary btn-circle unitDelBtn btn-unitInfoDel"';
						str += '			style="margin: auto;"> <i class="fas fa-minus"></i>';
						str += '		</a>';
						str += '	</div>';
						str += '	<!-- 구성 삭제 버튼 끝 -->';
					}
					str += '</div>';
					str += '<!-- 추가 구성(카테고리, 메뉴) 끝 -->';

					$(".unitManagerModal-inputAndDropDownContainer").append(str);

					renderMenuList($("#cateNo_" + (i + 1)).val(), $("#unitModifyMenuList_" + i)); // 드롭다운의 카테고리 리스트 뿌리기
				}

				renderCateList(storeNo,".unitManagerModal-dropdownCate"); // 드롭다운의 카테고리 리스트 뿌리기
				$(".numberOfUnit").val(adminUnitInfoList.length); // 단위 개수를 세어주는 인풋에 현재 있는 리스트의 개수 넣어주기

				$("#unitManagerModal").modal(); // 모달 열기
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});		
	});
	
	/* 메뉴 리스트 받아오기 (특정 카테고리 선택 시, 해당 카테고리에 속해있는 메뉴 리스트 뽑아옴) */
	$(".unitManagerModal-inputAndDropDownContainer").on("click", ".unitManagerModalCateList>li", function() {
		event.preventDefault(); // 본래 html 안에 있는 태그의 기능을 사용하지 않음 (a 태그 사용 중지를 위함)
		
		var id = $(this).attr('id'); // 카테고리 드롭다운 li의 아이디값 받아오기 - 카테고리 넘버 알아오기 위함
		var cateNo = document.getElementById(id).value; // li의 value값(카테고리넘버) 받아오기
		console.log(id + ', ' + cateNo);
		
		var cateName = $("#"+id).text(); // 선택한 카테고리 이름 받아오기 
		console.log(cateName);
		
		$(this).parent().parent().children('button').text(cateName); // '카테고리를 선택하세요' 문구를 선택한 카테고리 이름으로 변경
		$(this).parent().parent().children('input[id^="selectCateNo_"]').val(cateNo); // 선택된 메뉴 넘버 넘겨주기(단위 등록을 위함)
		
		// 메뉴 리스트가 출력 될 위치 (카테고리 li > ul > 카테고리 드롭다운 div > 카테고리 container > 메뉴 container > 메뉴 드롭다운 div > ul)
		var selector = $(this).parent().parent().parent().next().children();
		
		selector.children('ul').children('li').remove(); // 카테고리 선택할 때마다 메뉴 리스트 비워줌 (이 과정이 없으면 카테고리를 선택할 때마다 기존 메뉴 리스트에 새로운 메뉴 리스트가 덧붙여져서 출력됨)
		selector.children('button').text("메뉴를 선택하세요."); // 메뉴 드롭다운 타이틀 초기화
		selector.children('input[id^="selectMenuNo_"]').val(""); // 메뉴 넘버 초기화
		
		renderMenuList(cateNo, selector.children('ul'));
	});
	
	// 단위 모달 - 메뉴 리스트 받아오기 함수
	function renderMenuList(cateNo, selector) {
		$.ajax({
			url : "${pageContext.request.contextPath}/admin/adminMenuList",
			type : "post",
			data : { cateNo : cateNo },
			dataType : "json",
			success : function(menuList) { /*성공시 처리해야될 코드 작성*/
				if(menuList.length == 0) { // 카테고리 내에 입력된 메뉴가 없을 경우
					var str = '';
						
					str += '<li role="presentation" id="menuNo_0" value="0"><a role="menuitem" tabindex="-1">메뉴가 없습니다.</a></li>';

					$(".unitAddDropdownMenuList").prepend(str);
				}
				else { // 메뉴가 하나라도 있을 경우 메뉴 리스트 출력
					for (var i = 0; i < menuList.length; i++) {
						menuListRender(menuList[i], selector);
						
					}
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}

	// 메뉴 리스트에서 메뉴 선택 시
	$(".unitManagerModal-inputAndDropDownContainer").on("click", ".unitManagerModalMenuList>li", function() {
		event.preventDefault(); // 본래 html 안에 있는 태그의 기능을 사용하지 않음 (a 태그 사용 중지를 위함)

		var id = $(this).attr('id'); // 드롭다운 li의 아이디값 받아오기 - 메뉴 넘버 알아오기 위함
		var menuNo = document.getElementById(id).value; // li의 value값(메뉴 넘버) 받아오기
		console.log(id + ', ' + menuNo);
		
		var menuName = $("#"+id).text(); // 선택한 메뉴 이름 받아오기 
		console.log(menuName);
		
		$(this).parent().parent().children('input[id^="selectMenuNo_"]').val(menuNo); // 선택된 메뉴 넘버 넘겨주기(단위 등록을 위함)
		$(this).parent().parent().children('button').text(menuName); // 메뉴 드롭다운 타이틀을 선택한 메뉴 이름으로 변경
	});
	
	// 구성 추가 버튼 [+] 클릭 시
	$(".unitManagerModal-inputAndDropDownContainer").on("click", "#unitAddBtn", function() {
		console.log("구성추가 버튼클릭");
		$(".numberOfUnit").val(parseInt($(".numberOfUnit").val()) + 1);// 단위 개수 카운트
		var numberOfUnit = $(".numberOfUnit").val();

		var storeNo = 2;

		renderUnitAdd(1); // 단위 추가 html 그리기
		renderCateList(storeNo, ".unitManagerModal-unitComponent:last-child div:first-child div .unitManagerModalCateList"); // 카테고리 리스트 받아옴

		// 추가/수정/삭제를 위해서는 단위 구성품의 카테고리와 메뉴 id가 모두 달라야 함 (첫 번째 단위 구성품의 카테고리와 메뉴는 No_1의 아이디를 가짐)
		// 때문에 새로 생긴 단위의 경우 카테고리와 메뉴 아이디를 바꿔줘야 함 (selectCateNo_ + 마지막 유닛의 수)
		$(".unitManagerModal-unitComponent:last-child div div #selectCateNo_1").attr('id', "selectCateNo_" + numberOfUnit);
		$(".unitManagerModal-unitComponent:last-child div:nth-child(2) div #selectMenuNo_1").attr('id', "selectMenuNo_" + numberOfUnit)
		
	});
	
	// 구성 삭제 버튼 [-] 클릭 시
	$(".unitManagerModal-inputAndDropDownContainer").on("click", "#unitDelBtn", function() {
		console.log("구성삭제 버튼클릭");
		var numberOfUnit = $(".numberOfUnit").val();
		$(".numberOfUnit").val(parseInt(numberOfUnit) - 1);// 단위 개수 카운트
		
		$(this).parent().remove(); // 해당 요소 삭제
	});
	
	// 구성 추가/수정 모달 - 확인 버튼 클릭 시
	$(".unitAdd-submit").on("click", function() {
		event.preventDefault(); // 본래 html 안에 있는 태그의 기능을 사용하지 않음 (a 태그 사용 중지를 위함)
		console.log("구성 추가/수정 모달 - 확인 버튼 클릭");
		
		var storeNo = 2;
		var unitNo = $(".unitNo").val();
		var unitName = $("#unitManager-unitNameInput").val(); // 단위 이름 받아오기          
		var numberOfUnit = $(".unitManagerModal-unitComponent").length; // 추가 된 구성들의 개수 구하기
		var nullCheck = false; // 구성 추가모달에서 드롭다운 null 체크를 위한 변수
		var arrNumber = new Array(); // menuNo을 담아줄 배열
		
		if(unitName == "" || unitName == null) { // 단위 이름 null 체크
			alert("기본 정보를 모두 입력하세요.");
			$("#unitManager-unitNameInput").focus();
		}
		else if(nullCheck == false) { // 드롭다운 null 체크
			for(var i = 1; i <= numberOfUnit; i++) {
				if($("#selectCateNo_" + i).val() == 0 || $("#selectMenuNo_" + i).val() == 0) {
					alert("기본 정보를 모두 입력하세요.");
					nullCheck = true; // 드롭다운에 null 값이 있을 경우 nullCheck 변수를 true로 바꿔줌
					break; // 다음으로 넘어가지 않고 조건문 종료
				}
			}
			
			if(nullCheck == false) { // null 체크가 완료된 경우 구성 추가/수정 함수 실행
				for(var i = 1; i <= numberOfUnit; i++){ // 추가 된 구성들의 개수만큼 반복하여 menuNo 담아주기
					arrNumber[i - 1] = parseInt($("#selectMenuNo_" + i).val());
				}
			
				$.ajax({
					url : "${pageContext.request.contextPath}/admin/unitInsert",
					type : "post",
					data : { storeNo: storeNo, unitNo: unitNo, unitName: unitName, arrNumber : arrNumber },
					dataType : "json",
					success : function(map) {
						var unitList = map.unitInfo; // map으로 가져온 리스트 담아줌
						
						if(map.result == 0) {
							for (var i = 0; i < unitList.length; i++) {	
								if(unitList[i] == unitList[0]) {
									renderUnitList(0, unitList[i]);
								}
								else {
									renderUnitList(unitList[i].unitNo, unitList[i]);
								}
							}
							
							alert("추가가 완료되었습니다.");
						}
						else if(map.result == 1) { // 수정 시 리스트에서 수정된 정보로 변경해줌
							$("#unitNo_" + unitList[0].unitNo + '_td').empty(); // 추가 구성 품목 td 비워주기
							$("#unitNo_" + unitList[0].unitNo + '_td').prev().empty(); // 구성 이름 td 비워주기
							$("#unitNo_" + unitList[0].unitNo + '_td').prev().prepend(unitList[0].unitName); // 단위 모달에서의 단위 이름을 수정된 이름으로 변경
							$("#unitInfo_" + unitNo).children('p').text(unitList[0].unitName); // 메뉴 정보페이지에서의 단위 이름을 수정된 이름으로 변경
							
							for(var i = 0; i < unitList.length; i++) { // 추가 구성 품목 td를 수정한 구성 품목으로 채워줌
								var str = '';
							
								str += unitList[i].categoryName + ': ' + unitList[i].menuName + '<br>';
								$("#unitNo_" + unitList[0].unitNo + '_td').prepend(str);
							}
							
							alert("수정이 완료되었습니다.");
						}
						
						$("#unitManagerModal").modal("hide"); // 모달 닫기
					},
					error : function(XHR, status, error) {
						console.error(status + " : " + error);
					}
				});
			}
		}
	});
	
	function renderUnitList(unitNo, unitList) {				
		var str = '';
		
		if(unitNo != unitList.unitNo) {	
			str += '<tr id="unitNo_' + unitList.unitNo + '">';
			
					/* 체크 박스 */
			str += '	<td><input type="radio" id="check_' + unitList.unitNo;
			str += '" value="' + unitList.unitNo + '" name="selectUnit_check"></td>';
			
					/* 단위 이름 (세트, 박스 등) */
			str += '	<td>' + unitList.unitName + '</td>';
			str += '	<td id="unitNo_' + unitList.unitNo + '_td">';
			
					/* 구성 출력 */
			str += unitList.categoryName + ': ' + unitList.menuName + '<br>';
			str += '	</td>';
			str += '	<td>';
			
					/* 수정 / 적용 버튼 */
			str += '		<div class="adminMenu-unitListBtnContainer">';
			str += '			<input type="hidden" id="btn_unit_' + unitList.unitNo;
			str += ' "value="' + unitList.unitNo + '">';
			str += '			<a href="#"';
			str += '				class="btn btn-secondary btn-icon-split adminMenu-unitListModify">';
			str += '				<span class="text">수정</span>';
			str += '			</a><a href="#"';
			str += '				class="btn btn-success btn-icon-split adminMenu-unitListSelect">';
			str += '				<span class="text">적용</span>';
			str += '			</a>';
			str += '		</div>';
			str += '	</td>';
			str += '</tr>';
			
			$(".unitListModal-tbody").append(str);
			unitNo = unitList.unitNo;
			
		}
		else if(unitNo == unitList.unitNo) {
			str += unitList.categoryName + ': ' + unitList.menuName + '<br>';
			$("#unitNo_" + unitNo + '_td').prepend(str);
		}
	}
	
	// 단위 삭제
	$("#adminMenu-unitDel").on("click", function() {
		console.log("삭제 버튼 클릭");
		
		var unitNo = $("input[id^='check_']:checked").val();
		console.log(unitNo);

		if (window.confirm("삭제하시겠습니까?")) {
			// 확인 버튼을 누른 경우
			$.ajax({
				url : "${pageContext.request.contextPath}/admin/unitDel",
				type : "post",
				data : { unitNo: unitNo },
				dataType : "json",
				success : function(result) {
					alert("삭제가 완료되었습니다.");
					$("#unitNo_" + unitNo).remove(); // 해당 단위를 모달 화면에서 삭제
					$("#unitInfo_" + unitNo).remove(); // 해당 단위를 메뉴 정보 화면에서 삭제
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});
		}
		else {
			// 취소버튼을 누른 경우
		}
	});
	
	// 2차 때 할 것
	$("#all_unit_checked").on("click", function() {
		console.log("모든 단위 체크");

		$("input[type=checkbox]").prop("checked", true); // 체크박스 모두 체크
		
	});

	/* 구성 추가/수정 모달 닫기 */
	$(".unitManagerModal-close, .unitManager-cancle").on("click", function() {
		$("#unitManagerModal").modal("hide");
	});
	
</script>
</html>
