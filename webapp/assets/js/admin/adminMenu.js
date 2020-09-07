/* 페이지가 로드되는 순간 불러와야 할 정보들 */
$(document).ready(function(){	
	var storeNo = 1;
	getCateList(storeNo); // 카테고리 리스트
	getUnitList(storeNo); // 단위 정보
});

// 카테고리 리스트 불러오기 함수
function getCateList(storeNo) {
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
}

// 카테고리 리스트 html 그리기 함수
function cateListRender(cateList) {
	var str = '';
	
	str += '<li role="presentation" id="cateNo_' + cateList.categoryNo + '"';
	str += 'value="' + cateList.categoryNo + '"><a role="menuitem"';
	str += 'tabindex="-1" href="#">'
			+ cateList.categoryName + '</a></li>';

	$("#dropdownCateList").prepend(str);
}

// 단위 모달 정보 받아오기 함수
function getUnitList(storeNo) {
	$(".unitListModal-tbody").children('tr').remove(); // 모달을 열 때마다 tbody 비워줌 (비워주지 않을 시 클릭 할 때마다 ajax가 실행되어 구성 리스트가 중복적으로 출력됨)
	
	$.ajax({
		url : "${pageContext.request.contextPath}/admin/adminUnitList",
		type : "post",
		data : {
			storeNo : storeNo
		},
		dataType : "json",
		success : function(unitList) { /*성공시 처리해야될 코드 작성*/
			var unitNo = 0;
		
			for (var i = 0; i < unitList.length; i++) {					
				var str = '';
				if(unitNo != unitList[i].unitNo) {	
					str += '<tr id="unitNo_' + unitList[i].unitNo + '">';
					
							/* 체크 박스 */
					str += '	<td><input type="checkbox" id="check_' + unitList[i].unitNo;
					str += '" value="' + unitList[i].unitNo + '"></td>';
					
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

// 메뉴 리스트 html 그리기 함수
function menuListRender(menuList) {
	var str = '';

	str += '<li role="presentation" id="menuNo_' + menuList.menuNo + '"';
	str += 'value="' + menuList.menuNo + '"><a role="menuitem"';
	str += 'tabindex="-1" href="#">'
			+ menuList.menuName + '</a></li>';

	$("#dropdownMenuList").prepend(str);
}

// 카테고리를 한 번 선택할 때마다 초기화해줘야 하는 것들 (함수)
function initialization() {
	$("#dropdownMenuList").children('li').remove(); // 기존 menuList 삭제
	$("#dropdownMenuName").children('button').text("메뉴를 선택하세요."); // 메뉴 드롭다운 타이틀 초기화
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

// 메뉴 정보 받아서 인풋에 출력해주는 함수
function menuInfo(menuVo) {
	$("#menuName").val(menuVo.menuName);
	$("#menuPrice").val(menuVo.menuPrice);
	/* $("#menuCalorie").val(menuVo.menuCalorie); */
	$("#menuDesc").val(menuVo.menuDesc);

	$("input[type=checkbox]").prop("checked", false); // 먼저 체크박스를 모두 해제해 줌
	
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
				alert("삭제가 완료되었습니다.");
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
    
	// 메뉴 정보 받기
	var menuNo = $("#selectMenuNo").val();
	var cateNo = $("#selectCateNo").val();
	
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
	
 	// 메뉴 정보 묶어주기
	var menuVo = { 
		menuNo: menuNo,
		categoryNo: cateNo,
		menuName: $("#menuName").val(), 
		menuPrice: $("#menuPrice").val(), 
		/* menuCalorie: $("#menuCalorie").val(),  */
		isSpecial: isSpecial,
		isChange: isChange,
		menuDesc: $("#menuDesc").val()
	};

	if(menuNo == 0) { // 메뉴 추가
		if(cateNo == 0) { // 카테고리를 선택하지 않은 경우 경고창 띄움
			alert("카테고리를 선택하세요.");
		}
		else {
			// 인풋박스가 모두 null이 아닐 경우에 메뉴 추가
			var txtInput = $(".menuInfo-basicInfoContainer input[type=text]"); // input[type=text](메뉴이름, 가격, 칼로리)
			var txtarea = $(".menuInfo-menuDescription :input"); // textarea (메뉴 설명)
			
			// (조건 ? 참일 경우 수행 : 거짓일 경우 수행)
			txtFieldCheck(txtInput) == true ? true : txtFieldCheck(txtarea) == true ? true : menuAdd(menuVo);
		}
	}
	else { // 메뉴 수정
		menuModify(menuVo);			
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

/* 구성 추가 모달 열기 */
$(".adminMenu-unitAdd").on("click", function() {
	$("#unitManagerModal").modal();
});

/* 구성 수정 모달 열기 */
// 수정 버튼의 경우 동적으로 할당 된 요소이기 때문에 이벤트를 실행하기 위해서는 위임을 받아줘야 함
// (동적 할당 요소를 감싼 부모를 선택자로 지정하고, 그 안의 특정 요소를 클릭받을 때를 이벤트로 받아줘야 함)
$(".unitListModal-tbody").on("click", ".adminMenu-unitListModify", function() {
	var unitNo = $(this).parent().children("input").val(); // 클릭 된 단위의 unitNo 받아옴
	
	$("#unitManagerModal").modal();
	
	
});

/* 구성 추가/수정 모달 닫기 */
$(".unitManagerModal-close, .unitManager-cancle").on("click", function() {
	$("#unitManagerModal").modal("hide");
});