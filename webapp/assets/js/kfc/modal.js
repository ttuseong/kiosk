var url = window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));

//메뉴의 고유 번호
var menuNo;

// 단품/세트/박스 중 어떤 것을 선택했는지(4. 박스, 3. 세트, 1. 단품)
// 메뉴 하나로 3개의 이미지도 가져와야함
// menuImg+1+확장자 -> 이미지
var selectedMode;

//햄버거박스 사이드 메뉴
var burgerName;
var burgerConfig;
var burgerCount = 1;
var burgerPrice=0;
var burgerImg;

/*토핑 배열*/
var toppingArr;
/*사이드관련 배열*/
var sideArr = [0,0,0];
var sideCheckArr = [0, 0, 0];
var sideIndex;
var totalPrice=0;

//sideChange 모달에 적용될 변수들
var sideChangeCurPoint = 0;
var sideChangeEndPoint;
var sideChangeCurPos = 0;

//사이드 변경할 때 사용될 기본 가격
var defaultPrice=0;

$(document).ready(function(){
	inittoppingArr();
});

/*토핑의 no, name, price, count*/
/*금액 합산을 위해 미리 초기화를 하는 작업*/
function inittoppingArr(){
	$.ajax({
		url : url+"/KFC/initTopping",		
		type : "post",
		success : function(toppingList){
			toppingArr = new Array(toppingList.length);
			for(var i = 0; i < toppingArr.length; i++){
				toppingArr[i] = new Array();
				toppingArr[i].push(toppingList[i].toppingNo);
				toppingArr[i].push(toppingList[i].toppingName);
				toppingArr[i].push(toppingList[i].toppingPrice);
				toppingArr[i].push(0);
			}
			console.log(toppingArr);
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
		totalPrice += (toppingArr[i][2]*toppingArr[i][3]);
	}
	for(var i=0; i<sideArr.length;i++){
		totalPrice+=Number(sideArr[i]);
	}

	totalPrice *= burgerCount;

}

//메뉴 클릭 이벤트 처리
$(".menu").on("click", function(){
	var thisMenu = $(this);
	var status = thisMenu.data("status");
	
	if(status == 0){
		
	}
	else{
		menuNo = thisMenu.data("no");
	
		selectMenu();
	}
	
})


//단품/세트/박스 모달 띄우는 함수
function selectMenu(){
	$.ajax({
		url : url+"/KFC/selectMenu",		
		type : "post",
		data : {menuNo : menuNo},
		success : function(menuVoList){
			$("#selectModeMainContent").empty();
			
			$("#selectModeMainName").text(menuVoList[menuVoList.length-1].menuName);
			$("#selectModeMainDesc").text(menuVoList[menuVoList.length-1].menuDesc);
			
			for(var i = menuVoList.length - 1; i >= 0 ; i--){
				OnselectMode(menuVoList[i]);
			}
			
			$("#selectMode").modal();
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
}

// 단품/세트/박스 모달을 띄울 때 해당 메뉴에 대한 정보로 리뉴얼하는 함수
function OnselectMode(menuVo){
	var str = "";
	
	str += ' <div class="selectModeBodyContainer" data-mode="' + menuVo.unitName + '">';
	str += ' 	<div class="icon-check selectModeCheckBox">';
	str += ' 		<p class="hidden">채크박스</p>';
	str += ' 	</div>';
	str += ' 	<div class="selectModeBodyContent">';
	str += ' 		<h2 class="selectModeName">' + menuVo.menuName + '</h2>';
	str += '		<div class="selectModeCompose">';
	str += '			<p>구성</p>';
	str += '		</div>';
	str += '		<p class="selectModeMenuGroup">' + menuVo.menuName + '</p>';
	str += ' 		<p class="selectModePrice"> ' + menuVo.menuPrice + '</p>';
	str += ' 	</div>';
	str += ' 	<img id="selectModeBoxImg" alt=""';
	str += '		src="' + url +'/assets/images/icon1.png">';
	str += ' </div>';				
	
	$("#selectModeMainContent").prepend(str);
}

$("#selectModeMainContent").on("click", ".selectModeBodyContainer", function(){
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
	
	if(selectedMode == 'default'){
		
	}
	else{
		computeAllPrice();
		hamburgerBoxSideMenuInputDefault();
		addBurgerBoxBody();
		$("#hamburgerBoxSideMenu").modal();
	}
	
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
	$.ajax({
		url : url+"/KFC/selectMode",		
		type : "post",
		data : {utilName : selectedMode},
		success : function(menuList){
			$("#hamburgerBoxBodyContainer").empty();
			hamburgerBoxShowDefault();
			for(var i=0; i<menuList.length;i++){
				hamburgerBoxShowContent(menuList[i], i);
			}
			
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
}

function hamburgerBoxShowDefault(){
	var str = '';
	
	str += ' <div class="menu-container" id="menuSet">';
	str += ' 	<img';
	str += '		src="' + url + '/assets/images/icon1.png"';
	str += '		class="img-responsive">';
	str += ' 	<div>';
	str += '		<p class="menuName">추가 없음</p>';
	str += '	</div>';
	str += '	<button type="button" class="hamburgerBoxButton" data-no="0">버거재료 변경</button>';
	str += ' </div>';
	
	$("#hamburgerBoxBodyContainer").append(str);
}

function hamburgerBoxShowContent(menuVo, i){
	var str = '';
	
	str += ' <div class="menu-container" id="menuSet">';
	str += ' 	<img';
	str += '		src="' + url + '/assets/images/icon1.png"';
	str += '		class="img-responsive">';
	str += ' 	<div>';
	str += '		<p class="menuName">' + menuVo.menuName +  '</p>';
	str += '	</div>';
	str += '	<button type="button" class="hamburgerBoxButton" data-no="' + menuVo.defaultNo + '" data-index="' + i + '">'  + menuVo.categoryName + ' 변경' + '</button>';
	str += ' </div>';
	
	$("#hamburgerBoxBodyContainer").append(str);
}

// 모달 교체 시점2-1 토핑을 변경할 경우
$("#hamburgerBoxBodyContainer").on("click", ".hamburgerBoxButton", function(){
	var thisBtn = $(this);
	var no = thisBtn.data("no");
	sideIndex = thisBtn.data("index");	
	changeList(no);
	
});

/*토핑 추가*/
function changeList(no){
	$.ajax({
		url : url+"/KFC/changeList",		
		type : "post",
		data:{no:no},
		success : function(list){
			
			console.log(no);
			if(no == 0){
				$("#bugerToppingContiner").empty();
				for(var i = 0; i < list.length; i++){
					addBurgerToppingContent(list[i], i);
				}
				$("#hamburgerBoxSideMenu").modal("hide");
				$("#bugerTopping").modal();
			}
			else{
				$("#sideChangeContents").empty();
				$("#sideChangeContents").css("margin-left", "0px");
				$(".sideChangeBtn").removeClass("btnActive");
				sideChangeCurPoint = 0;
				
				addSideMenu(list);
				
				sideChangeEndPoint = Math.ceil(list.length/6.0);
				
				$("#sideChangeContents").width(648*sideChangeEndPoint);
				
				if(sideChangeEndPoint>1){
					$("#hamburgerBox-SideChangeBodyRightBtn").addClass("btnActive");
			}
				$("#hamburgerBoxSideMenu").modal("hide");
				$("#sideChange").modal();
			}
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
}

function addBurgerToppingContent(toppingVo, i){
	console.log("test");
	var str = "";
	str += ' <div class="bugerToppinglist" id="cheeseTopping">';
	str += ' 	<img alt="' + toppingVo.menuName + '추가 이미지' + '"';
	str += ' 	src="' + url + '/assets/images/icon1.png">';					
	str += '	<h6>' + toppingVo.menuName + '추가' + '</h6>';						
	str += '	<p>' + '+' + toppingVo.menuPrice +  '</p>';					
	str += '	<div class="count">';		
	str += '		<div class="icon-minus iconCombination"></div>';
	str += '		<p data-toppingNo='+ toppingVo.menuNo +'>' + toppingArr[i][3] + '</p>';
	str += '		<div class="icon-plus iconCombination"></div>';
	str += '	</div>';	
	str += ' </div>';

	$("#bugerToppingContiner").append(str);
}

/*버거 토핑에서 완료를 눌러서 햄버거 박스 사이드 모달로 이동 */
$("#bugerToppingCompleted").on("click", function(){
	var str="";
	var arr=[];
	for(var i=0; i<toppingArr.length; i++){
		if(toppingArr[i][3] != 0){
			arr.push(toppingArr[i][1] + " " +toppingArr[i][3]+"개");
		}
	}
	
	if(arr.length != 0){
		for(var i=0; i<arr.length; i++){
		str+=arr[i];
			if(i != arr.length-1){
				str+="<br>";
			}
		}
	}

	$("#selectedBurgurTopping").html(str);
	$("#bugerTopping").modal("hide");
	$("#hamburgerBoxSideMenu").modal();
});

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
			if(toppingArr[i][3]==0)
				return;
			
			thisBtn.next().text(--toppingArr[i][3]);
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

			thisBtn.prev().text(++toppingArr[i][3]);
			break;
		}
	}
	computeAllPrice();
	$(".burgerBoxPrice").text(totalPrice);
});

/*사이드 변경 모달에 컨텐츠 추가하는 함수*/
function addSideMenu(sideList, arrIndex){
	var str = "";
	var listLength = sideList.length;
	var index = listLength-1; 
	var classStatus;

	defaultPrice = sideList[index].menuPrice;
	
	console.log("test start" + sideList.length);
	while(index > -1){
		console.log(index);
	
		str += ' <div id="sideChangeContent">';
		for(var j = 0; j < 6; j++){
			if(index == -1){
				break;
			}	
			if(index == listLength-1 && sideCheckArr[sideIndex] == 0){
				sideCheckArr[sideIndex] = sideList[index].menuNo;
				classStatus='recommend-check';
			}
			else if(sideCheckArr[sideIndex] == sideList[index].menuNo){
				classStatus='recommend-check';
			}
			else
				classStatus='hidden';
			
			var addPrice = sideList[index].menuPrice - defaultPrice;
			
			str += ' 	<div class="menu-container menuSetSecond" data-no=' + sideList[index].menuNo + '>';
			str += ' 		<img';
			str += '			src="'+ url +'/assets/images/' + sideList[index].menuImg + '"';
			str += ' 			class="img-responsive">';
			str += '		<div>';
			str += '			<p class="menuName">' + sideList[index].menuName + '</p>';
			if(addPrice <= 0){
				str += '		<p class="menuPrice"></p>';
			}
			else{
				str += '		<p class="menuPrice">' + '+' + addPrice + '</p>';
			}
			str += '		</div>';
			str += '		<div class="icon-check ' + classStatus + '"></div>';
			str += '	</div>';

			index--;
		}
		str += ' </div>';
	}
	
	console.log(sideCheckArr);
	$("#sideChangeContents").append(str);
}

$("#hamburgerBox-SideChangeBodyRightBtn").on("click", function(){
	console.log("클릭!");
	if($("#hamburgerBox-SideChangeBodyRightBtn").hasClass("btnActive")){
		sideChangeCurPoint++;
		sideChangeCurPos = -1 * sideChangeCurPoint * 648;
		$("#sideChangeContents").animate({
			marginLeft : sideChangeCurPos
		});
		if(!$("#hamburgerBox").hasClass("btnActive") && sideChangeCurPoint > 0){
			$("#hamburgerBox-SideChangeBodyLeftBtn").addClass("btnActive");
		}
		if(sideChangeCurPoint == sideChangeEndPoint-1){
			$("#hamburgerBox-SideChangeBodyRightBtn").removeClass("btnActive");
		}
	}
});

$("#hamburgerBox-SideChangeBodyLeftBtn").on("click", function(){
	
	if($("#hamburgerBox-SideChangeBodyLeftBtn").hasClass("btnActive")){
		sideChangeCurPoint--;
		sideChangeCurPos = -1 * sideChangeCurPoint * 648;
		$("#sideChangeContents").animate({
			marginLeft : sideChangeCurPos
		});
		if(!$("#hamburgerBox-SideChangeBodyRightBtn").hasClass("btnActive") && sideChangeCurPos < sideChangeEndPoint-1){
			$("#hamburgerBox-SideChangeBodyRightBtn").addClass("btnActive");
		}
		if(sideChangeCurPoint == 0){
			$("#hamburgerBox-SideChangeBodyLeftBtn").removeClass("btnActive");
		}
	}
	
});

$("#sideChangeContents").on("click", ".menuSetSecond", function(){
	var temp = sideCheckArr[sideIndex];
	var curClick = $(this);
	sideCheckArr[sideIndex] = curClick.data("no");
	
	$('.menuSetSecond[data-no=' + temp + ']').children(".icon-check").removeClass('recommend-check');
	$('.menuSetSecond[data-no=' + temp + ']').children(".icon-check").addClass('hidden');
	
	curClick.children(".icon-check").removeClass('hidden');
	curClick.children(".icon-check").addClass('recommend-check');
	
	console.log(curClick.children().eq(1).children(".menuPrice").text().slice(1));

	sideArr[sideIndex] = curClick.children().eq(1).children(".menuPrice").text().slice(1);
	computeAllPrice();
	
	$(".burgerBoxPrice").text(totalPrice);
});

$("#sideChangeComplete").on("click", function(){
	$("#hamburgerBoxSideMenu").modal();
	
	var childrenLength = $("#sideChangeContents > div").size();
	console.log(childrenLength);
	
	for(var i = 0; i < childrenLength; i++){
		var currentChild = $("#sideChangeContents").children().eq(i);
		var grandchildrenLength = currentChild.children().size();
		
		for(var j = 0 ; j < grandchildrenLength; j++){
			if(currentChild.children().eq(j).children().eq(2).hasClass("recommend-check")){
				console.log("ㅋㅋ루삥뽕");
				
				
				console.log(currentChild.children().eq(j).children().eq(1).children('.menuName').text());
				
				var parent = $('.hamburgerBoxButton[data-index=' + sideIndex + ']').parent();
				console.log(parent);
				
				parent.children().eq(0).attr("src", currentChild.children().eq(j).children().eq(0).attr("src"));
				parent.children().eq(1).children(".menuName").text(currentChild.children().eq(j).children().eq(1).children('.menuName').text());

			}
		}
	}
	
	$("#sideChange").modal("hide");
});

$("#hamburgerBoxSideMenuComplete").on("click", function(){
	console.log("test");
	test();
});

/* 추천 메뉴 모달 */
$('.recommend-body').on("click", ".recommendation",function(){
	var thisMenuContainer = $(this);
	var target = thisMenuContainer.children(".icon-check");
	
	if(target.hasClass("recommend-check")){
		target.addClass("hidden");
		target.removeClass("recommend-check")
	}
	else{
		target.addClass("recommend-check");
		target.removeClass("hidden")
	}
});

/*주문버튼-->장소선택 모달-->추천 메뉴 모달*/
$("#orderBtn").on("click", function(){
	$("#placeSelect").modal();
});

$(".placeSelectBodyContentContiner").on("click", function(){
	$("#placeSelect").modal("hide");
	$.ajax({
		url : url+"/KFC/recommenDationMenu",		
		type : "post",
		success : function(mList){
			$("#recommend-body").empty();
			for(var i=0; i< mList.length; i++){
				addRecommenDationMenu(mList[i]);
			}
			$("#recommend").modal();
			
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});

});

function addRecommenDationMenu(menuVo){
	var str = "";
	str += ' <div class="menu-container recommendation">';
	str += ' 	<div class="recommend-imgAndPtag">';
	str += ' 	<img';
	str += ' 	src="' + url + '/assets/images/icon1.png"';
	str += '	class="img-responsive-recommend">';
	str += '	<p class="menuName">' +  menuVo.menuName +  '</p><br>';
	str += '	<p class="menuPrice">' + menuVo.menuPrice +  '</p><br>';
	str += '	<p class="menuCount">';
	str += '	</div>';						
	str += '	<div class="icon-check hidden"></div>';		
	str += ' </div>';	
	
	$("#recommend-body").append(str);
}

/*추천메뉴모달에서 체크된 값만 읽어오기*/

$("#recommendCompleteBtn").on("click", function(){
	$("#recommend").modal("hide");
	var text=[];
	var price=[];

	var length = $("#recommend-body > div").size();


	for(var i = 0; i < length; i++){
		var currentDiv = $("#recommend-body").children().eq(i);
		console.log(currentDiv.children().eq(1).hasClass("recommend-check"));

		if(currentDiv.children().eq(1).hasClass("recommend-check")){
			text.push(currentDiv.children().eq(0).children('.menuName').text());
			price.push(currentDiv.children().eq(0).children('.menuPrice').text());
		}
	}
	addOrderList(text, price);
	$("#MyOrderListModal").modal();
	
});

function addOrderList(textArr, priceArr){
	var str = "";
	$(".orderList-table").empty();
	for(var i=0; i < textArr.length; i++) {
		str += '<tr>';
		str += '	<td id="orderlist-menuName">' + textArr[i] + '</td>';
		str += '	<td id="orderlist-menuCnt"> 1 </td>';
		str += '	<td id="orderlist-menuPrice"> ' + priceArr[i] +' </td>';
		str += '</tr>';
	}

	$(".orderList-table").append(str);
}

function sum(){
	var tbody = $(".orderList-table > tbody > tr");
	var length = tbody.size();
	var count = 0;
	var totalPay = 0;
	
	for(var i = 0; i < length; i++){
		console.log(typeof(tbody.eq(i).children().eq(1).text()))
		var currentCount = Number(tbody.eq(i).children().eq(1).text());
		count += currentCount;
		totalPay += Number(tbody.eq(i).children().eq(2).text())*currentCount;
	}
	
	$(".order-totalMenu > p").text(count);
	$(".order-totalPrice > p").text(totalPay);
}

