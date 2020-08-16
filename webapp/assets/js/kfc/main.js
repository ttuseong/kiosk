var url = window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));

//메뉴의 고유 번호
var menuNo;

// 단품/세트/박스 중 어떤 것을 선택했는지(4. 박스, 3. 세트, 1. 단품)
// 메뉴 하나로 3개의 이미지도 가져와야함
// menuImg+1+확장자 -> 이미지
var selectedMode = 0;

//햄버거박스 사이드 메뉴
var burgerName;
var burgerConfig;
var burgerCount = 1;
var burgerPrice=0;
var burgerImg;


//메뉴 클릭 이벤트 처리
$(".menu").on("click", function(){
	var thisMenu = $(this);
	menuNo = thisMenu.data("no");
	
	selectMenu();
})


//단품/세트/박스 모달 띄우는 함수
function selectMenu(){
	$.ajax({
		url : url+"/KFC/selectMenu",		
		type : "post",
		data : {menuNo : menuNo},
		success : function(menuVo){
			OnselectMode(menuVo);
			burgerImg = menuVo.menuImg;
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
}

// 단품/세트/박스 모달을 띄울 때 해당 메뉴에 대한 정보로 리뉴얼하는 함수
function OnselectMode(menuVo){
	$("#selectModeMainName").text(menuVo.menuName);
	$("#selectModeMainDesc").text(menuVo.menuDesc);
	
	$("#selectModeBoxName").text(menuVo.menuName+"박스");
	$("#selectModeBoxConfig").text(menuVo.menuName + " + 사이드 변경 + 음료 변경 + 치킨 변경")
	$("#selectModeBoxPrice").text(menuVo.menuPrice+3800);
	
	$("#selectModeSetName").text(menuVo.menuName+"세트");
	$("#selectModeSetConfig").text(menuVo.menuName + " + 사이드 변경 + 음료 변경")
	$("#selectModeSetPrice").text(menuVo.menuPrice+2300);
	
	$("#selectModeNomalName").text(menuVo.menuName);
	$("#selectModeNomalCongig").text(menuVo.menuName);
	$("#selectModeNomalPrice").text(menuVo.menuPrice);
	
	$("#selectMode").modal();
}

$(".selectModeBodyContainer").on("click", function(){
	var clickMode = $(this);
	
	clickMode.siblings().children(".selectModeCheckBox").removeAttr("id", "selectedMode");
	clickMode.children(".selectModeCheckBox").attr("id", "selectedMode");
	
	console.log();
	
	burgerName = clickMode.children(".selectModeBodyContent").children(".selectModeName").text();
	burgerConfig = clickMode.children(".selectModeBodyContent").children(".selectModeMenuGroup").text();
	burgerPrice = clickMode.children(".selectModeBodyContent").children(".selectModePrice").text();
	
	selectedMode = clickMode.data("mode");
	
	console.log(selectedMode);
});


// 모달 교체 시점1
$("#selectedModecompleted").on("click", function(){
	
	$("#selectMode").modal("hide");
	
	hamburgerBoxSideMenuInputDefault();
	addBurgerBoxBody();
	$("#hamburgerBoxSideMenu").modal();
})

//기본 값 설정
function hamburgerBoxSideMenuInputDefault(){
	$("#hamburgerBoxSideMenu").find(".count").attr("id", "burgerBoxCount");
	$("#hamburgerBoxLabel").text(burgerName);
	$("#burgerBoxDesc").text(burgerConfig);
	$("#burgerBoxCount").children("p").text(burgerCount);
	$("#burgerBoxPrice").text(burgerPrice*burgerCount);
}

function addBurgerBoxBody(){
	for(var i = 0; i < selectedMode;i++){
		addBurgerBoxContents(i)
	}
}

function addBurgerBoxContents(i){
	var str = "";
	var imgUrl;
	var menuName;
	var btnName;
	
	console.log(i);
	
	switch(i){
		case 0:
			menuName="추가 없음";
			btnName="버거재료 추가"
			break;
		case 1:
			menuName="후렌치후라이(M)";
			btnName="사이드 변경"
			break;
		case 2:
			menuName="콜라(M)";
			btnName="음료 변경";
			break;
		case 3:
			menuName="핫크리스피치킨 1조각";
			btnName="치킨 변경";
			break;
		default:
			console.log("잘못된 값이 addBurgerBoxContents 함수에 들어왔습니다")
	}
	
	str += ' <div class="menu-container" id="menuSet">';
	str += ' 	<img';
	str += ' 		src= ' + url + '/assets/images/icon1.png';
	str += ' 		class="img-responsive">';
	str += ' 	<div>';
	str += ' 		<p class="menuName">' + menuName + '</p>';
	str += '	</div>';
	str += '	<button type="button" id="hamburgerBoxButton">' + btnName + '</button>';
	str += ' </div>';

	$("#hamburgerBoxBodyContainer").append(str);
}



