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

var toppingArr;
var sideArr = [0,0,0];
var totalPrice=0;

$(document).ready(function(){
	inittoppingArr();
});

/*토핑의 no, pricem, count*/
function inittoppingArr(){
	$.ajax({
		url : url+"/KFC/initTopping",		
		type : "post",
		success : function(toppingList){
			toppingArr = new Array(toppingList.length);
			for(var i = 0; i < toppingArr.length; i++){
				toppingArr[i] = new Array();
				toppingArr[i].push(toppingList[i].toppingNo);
				toppingArr[i].push(toppingList[i].toppingPrice);
				toppingArr[i].push(0);
			}
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
}

/*토핑 및 버거 수에 따른 금액 합산*/
function computeAllPrice(){
	totalPrice = Number(burgerPrice);
	for(var i=0; i<toppingArr.length; i++){
		totalPrice += (toppingArr[i][1]*toppingArr[i][2]);
	}
	for(var i=0; i<sideArr.length;i++){
		totalPrice+=sideArr[i];
	}

	totalPrice *= burgerCount;

}

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
	
	burgerName = clickMode.children(".selectModeBodyContent").children(".selectModeName").text();
	burgerConfig = clickMode.children(".selectModeBodyContent").children(".selectModeMenuGroup").text();
	burgerPrice = clickMode.children(".selectModeBodyContent").children(".selectModePrice").text();
	
	selectedMode = clickMode.data("mode");
});


// 모달 교체 시점1
$("#selectedModecompleted").on("click", function(){
	
	$("#selectMode").modal("hide");
	computeAllPrice();
	hamburgerBoxSideMenuInputDefault();
	addBurgerBoxBody();
	$("#hamburgerBoxSideMenu").modal();
})

// hamburgerBoxHeader 기본 값 설정
function hamburgerBoxSideMenuInputDefault(){
	$(".hamburgerBoxLabel").text(burgerName);
	$(".burgerBoxDesc").text(burgerConfig);
	$(".count").children("p").text(burgerCount);
	$(".burgerBoxPrice").text(totalPrice);
}

//햄버거 박스 사이드 메뉴 모달
function addBurgerBoxBody(){
	for(var i = 0; i < selectedMode;i++){
		addBurgerBoxContents(i)
	}
}

function addBurgerBoxContents(i){
	$("#hamburgerBoxBodyContainer").children().eq(i).removeClass('hidden');

}

// 모달 교체 시점2-1 토핑을 변경할 경우
$(".hamburgerBoxButton").on("click", function(){
	var thisBtn = $(this);
	no = thisBtn.data("no");
	
	$("#hamburgerBoxSideMenu").modal("hide");
	hamburgerBoxSideMenuInputDefault();
	switch(no){
		case 1:
			burgerToppingList();	
			$("#bugerTopping").modal();
			break;
		case 2:
			$("#sideChange").modal();
		case 3:
			$("#sideChange").modal();
		case 4:
			$("#sideChange").modal();
		default:
	}
});

/*토핑 추가*/
function burgerToppingList(){
	$.ajax({
		url : url+"/KFC/selectTopping",		
		type : "post",
		success : function(toppingList){
			for(var i = 0; i < toppingList.length; i++){
				addBurgerToppingContent(toppingList[i]);	
			}
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
}

function addBurgerToppingContent(toppingVo){
	var str = "";
	str += ' <div class="bugerToppinglist" id="cheeseTopping">';
	str += ' 	<img alt="' + toppingVo.toppingName + '추가 이미지' + '"';
	str += ' 	src="' + url + '/assets/images/icon1.png">';					
	str += '	<h6>' + toppingVo.toppingName + '추가' + '</h6>';						
	str += '	<p>' + '+' + toppingVo.toppingPrice +  '</p>';					
	str += '	<div class="count">';		
	str += '		<div class="icon-minus iconCombination"></div>';
	str += '		<p data-toppingNo='+ toppingVo.toppingNo +'>0</p>';
	str += '		<div class="icon-plus iconCombination"></div>';
	str += '	</div>';	
	str += ' </div>';

	$("#bugerToppingContiner").append(str);
}

/*클릭을 통한 가격 증가 이벤트*/
$(".icon-plus").on("click", function(){
	var thisBtn = $(this);
	burgerCount++;
	computeAllPrice();
	thisBtn.prev().text(burgerCount);
	$(".burgerBoxPrice").text(totalPrice);
});

$(".icon-minus").on("click", function(){
	var thisBtn = $(this);
	if(burgerCount == 1){
		return;
	}
	
	burgerCount--;
	computeAllPrice();
	thisBtn.next().text(burgerCount);
	$(".burgerBoxPrice").text(totalPrice);
});

$("#bugerToppingContiner").on("click", ".icon-minus",function(){
	var thisBtn = $(this);
	var toppingNo = thisBtn.next().data("toppingno");
	console.log(toppingNo);
	
	for(var i=0; i<toppingArr.length;i++){
		if(toppingArr[i][0] == toppingNo){
			if(toppingArr[i][2]==0)
				return;
			
			thisBtn.next().text(--toppingArr[i][2]);
			break;
		}
	}
	computeAllPrice();
	$(".burgerBoxPrice").text(totalPrice);
	
});

$("#bugerToppingContiner").on("click", ".icon-plus",function(){
	var thisBtn = $(this);
	var toppingNo = thisBtn.prev().data("toppingno");
	console.log(toppingNo);
	
	for(var i=0; i<toppingArr.length;i++){
		if(toppingArr[i][0] == toppingNo){
			
			thisBtn.prev().text(++toppingArr[i][2]);
			break;
		}
	}
	computeAllPrice();
	$(".burgerBoxPrice").text(totalPrice);
});