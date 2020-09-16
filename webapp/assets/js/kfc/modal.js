var url = window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));

//모달이 취소할 때 이동할 지점
var modalCanclePoint= new Array();

//메뉴의 고유 번호
var menuNo;

// 단품/세트/박스 중 어떤 것을 선택했는지(4. 박스, 3. 세트, 1. 단품)
// 메뉴 하나로 3개의 이미지도 가져와야함
// menuImg+1+확장자 -> 이미지
var selectedMode;

//햄버거박스 사이드 메뉴 정보
var burgerName;
var burgerConfig;
var burgerCount;
var burgerPrice=0;
var burgerImg;

/*토핑 배열*/
var toppingArr;

/*사이드관련 배열*/
/*디폴트 메뉴의 번호, 변경될 번호, 추가 금액*/
var sideArr;

var sideIndex;
var totalPrice=0;

//sideChange 모달에 적용될 변수들 슬라이드할 때 사용
var sideChangeCurPoint = 0;
var sideChangeEndPoint;
var sideChangeCurPos = 0;

//사이드 변경할 때 사용될 기본 가격, 변경할 때 얼마가 추가요금으로 나오는지 판단하기 위해 미리 저장
var defaultPrice=0;


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

		 initSideArr(selectedMode);
      },
      error : function(XHR, status, error) {
         console.error(status + " : " + error);
      }
   });
}

function initSideArr(unitNo){
   $.ajax({
      url : url+"/KFC/initSide",      
      type : "post",
      data :{unitNo : unitNo},
      success : function(sideList){
         sideArr = new Array(sideList.length);
         
		addBurgerBoxDefault();

         for(var i = 0; i < sideList.length; i++){
            sideArr[i] = new Array();
            sideArr[i].push(sideList[i].menuNo);
            sideArr[i].push(sideList[i].menuNo);
            sideArr[i].push(0);
			addBurgerBoxContent(sideList[i], i);
         }
         computeAllPrice();
         hamburgerBoxSideMenuInputDefault();
		 modalCanclePoint.push("hamburgerBoxSideMenu");
         $("#hamburgerBoxSideMenu").modal();
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
      totalPrice+=Number(sideArr[i][2]);
   }
   
   totalPrice *= burgerCount;
}

//모달을 취소할 경우 이벤트 처리
$(".btnCancle").on("click", function(){
	console.log(modalCanclePoint);
	if(modalCanclePoint[0] != undefined){
		$("#"+modalCanclePoint.pop()).modal("hide");
		console.log(modalCanclePoint[modalCanclePoint.length-1]);
		$("#"+modalCanclePoint[modalCanclePoint.length-1]).modal();
	}
});

//메뉴 클릭 이벤트 처리
$("#menuSectionContent").on("click",".menu", function(){
   selectedMode = -1;
   var thisMenu = $(this);
   var name = thisMenu.children(".menuContent").children().eq(0).text();
   var price = thisMenu.children(".menuContent").children().eq(1).text();

   var data = {categoryNo : categoryNo, menuName : name};

   selectMenu(data, price);
   
})

//단품/세트/박스 모달 띄우는 함수
function selectMenu(data, price){
   $.ajax({
      url : url+"/KFC/selectMenu",      
      type : "post",
      data : data,
      success : function(menuList){
	     console.log(menuList.length);
		if(menuList.length > 1){
			$("#selectModeMainContent").empty();
         
	         $("#selectModeMainName").text(menuList[0].menuName);
	         $("#selectModeMainDesc").text(menuList[0].menuDesc);
			 $("#selectModeMainImg").attr("src", url+"/kfc/"+menuList[0].menuImg);
	         
	         for(var i = 0; i < menuList.length ; i++){
	            OnselectMode(menuList[i]);
	         }
	         
			 modalCanclePoint.push("selectMode");
	         $("#selectMode").modal();	
		}
		else{
			//단위가 없는 메뉴 처리
			burgerName = data.menuName;

			burgerCount = 1;
			
			totalPrice = price;
			
			orderComplate();
			
			countAllMenulList();
			
		}
         
      },
      error : function(XHR, status, error) {
         console.error(status + " : " + error);
      }
   });
}

// 단품/세트/박스 모달을 띄울 때 해당 메뉴에 대한 정보로 리뉴얼하는 함수
function OnselectMode(menuVo){
   var str = "";
   
   str += ' <div class="selectModeBodyContainer" data-mode="' + menuVo.unitNo + '">';
   str += '    <div class="icon-check selectModeCheckBox">';
   str += '       <p class="hidden">채크박스</p>';
   str += '    </div>';
   str += '    <div class="selectModeBodyContent">';
   str += '       <h2 class="selectModeName">' + menuVo.menuName + '</h2>';
   str += '      <div class="selectModeCompose">';
   str += '         <p>구성</p>';
   str += '      </div>';
   str += '      <p class="selectModeMenuGroup">' + menuVo.composition + '</p>';
   str += '       <p class="selectModePrice"> ' + menuVo.menuPrice + '</p>';
   str += '    </div>';
   str += '    <img class="selectModeBoxImg" alt=""';
   str += '      src="' + url +'/kfc/' + menuVo.menuImg + '">';
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
   burgerImg = clickMode.children(".selectModeBoxImg").attr("src");

   selectedMode = clickMode.data("mode");
});


// 모달 교체 시점1
$("#selectedModecompleted").on("click", function(){
	if(selectedMode >= 0){
	   burgerCount = 1;
	   $("#selectMode").modal("hide");
	   
	   if(selectedMode == -2){
	      
	   }
	   else{
	      inittoppingArr();
	   }
	} else{
		alert("단위를 선택해주세요");
	}
  
})

// hamburgerBoxHeader 기본 값 설정
function hamburgerBoxSideMenuInputDefault(){
   $(".hamburgerBoxLabel").text(burgerName);
   $(".burgerBoxDesc").text(burgerConfig);
   $(".burgertotalCount").text(burgerCount);
   $(".burgerBoxPrice").text(totalPrice);
   $(".img-hamburgerBoxFix").attr("src", burgerImg);

}

function addBurgerBoxDefault(){
   $("#hamburgerBoxBodyContainer > div").remove();
   var str = '';
   
   str += ' <div class="menu-container" id="menuSet">';
   str += '    <img';
   str += '      src="' + url + '/kfc/toppingDefaultImg.png"';
   str += '      class="img-responsive">';
   str += '    <div class="hamburgerBoxBodyContent">';
   str += '      <p class="menuName" id="selectedBurgurTopping">추가 없음</p>';
   str += '   </div>';
   str += '   <button type="button" class="hamburgerBoxButton" data-no="0">버거재료 변경</button>';
   str += ' </div>';
   
   $("#hamburgerBoxBodyContainer").append(str);
}

function addBurgerBoxContent(menuVo, i){
   var str = '';
   
   str += ' <div class="menu-container" id="menuSet">';
   str += '    <img';
   str += '      src="' + url + '/kfc/' + menuVo.menuImg + '"';
   str += '      class="img-responsive">';
   str += '    <div class="hamburgerBoxBodyContent">';
   str += '      <p class="menuName">' + menuVo.menuName +  '</p>';
   str += '   </div>';
   str += '   <button type="button" class="hamburgerBoxButton" data-no="' + menuVo.categoryNo + '" data-index="' + i + '">'  + menuVo.categoryName + ' 변경' + '</button>';
   str += ' </div>';
   
   $("#hamburgerBoxBodyContainer").append(str);
}

// 모달 교체 시점2-1 토핑을 변경할 경우
$("#hamburgerBoxBodyContainer").on("click", ".hamburgerBoxButton", function(){
   var thisBtn = $(this);
   var no = thisBtn.data("no");
   sideIndex = thisBtn.data("index");   

   var data = {categoryNo : no};

   if(sideIndex != undefined){
	  data.menuNo = sideArr[sideIndex][0];
   }

   changeList(data);
});

/*토핑 추가*/
function changeList(data){
   $.ajax({
      url : url+"/KFC/changeList",      
      type : "post",
      data:data,
      success : function(list){
         if(data.categoryNo == 0){
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
   var str = "";
   str += ' <div class="bugerToppinglist" id="cheeseTopping">';
   str += '    <img alt="' + toppingVo.menuName + '추가 이미지' + '"';
   str += '    src="' + url + '/kfc/'+toppingVo.menuImg+'">';               
   str += '   <h6>' + toppingVo.menuName + '추가' + '</h6>';                  
   str += '   <p>' + '+' + toppingVo.menuPrice +  '</p>';               
   str += '   <div class="count">';      
   str += '      <div class="icon-minus iconCombination"></div>';
   str += '      <p data-toppingNo='+ toppingVo.menuNo +'>' + toppingArr[i][3] + '</p>';
   str += '      <div class="icon-plus iconCombination"></div>';
   str += '   </div>';   
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
   } else{
	   str += "추가 없음";
   }

   $("#selectedBurgurTopping").html(str);
   $("#bugerTopping").modal("hide");
   $("#hamburgerBoxSideMenu").modal();
});

/*클릭을 통한 가격 증가 이벤트*/
$(".icon-plus").on("click", function(){
   burgerCount++;
   computeAllPrice();
	
   $(".burgertotalCount").text(burgerCount);
   $(".burgerBoxPrice").text(totalPrice);
});

$(".icon-minus").on("click", function(){
   var thisBtn = $(this);
   if(burgerCount == 1){
      return;
   }
   
   burgerCount--;
   computeAllPrice();
   $(".burgertotalCount").text(burgerCount);
   $(".burgerBoxPrice").text(totalPrice);
});

$("#bugerToppingContiner").on("click", ".icon-minus",function(){
   var thisBtn = $(this);
   var toppingNo = thisBtn.next().data("toppingno");
   
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
function addSideMenu(sideList){
   var str = "";
   var listLength = sideList.length;
   var index = listLength-1; 
   var classStatus;

   defaultPrice = sideList[index].menuPrice;

   while(index > -1){
   
      str += ' <div id="sideChangeContent">';
      for(var j = 0; j < 6; j++){
         if(index == -1){
            break;
         }   
         if(sideArr[sideIndex][1] == sideList[index].menuNo){
            classStatus='recommend-check';
         }
         else
            classStatus='hidden';
         
         var addPrice = sideList[index].menuPrice - defaultPrice;
         
         str += '    <div class="menu-container menuSetSecond" data-no=' + sideList[index].menuNo + '>';
         str += '       <img';
         str += '         src="'+ url +'/kfc/' + sideList[index].menuImg + '"';
         str += '          class="img-responsive">';
         str += '      <div>';
         str += '         <p class="menuName">' + sideList[index].menuName + '</p>';
         if(addPrice <= 0){
            str += '      <p class="menuPrice"></p>';
         }
         else{
            str += '      <p class="menuPrice">' + '+' + addPrice + '</p>';
         }
         str += '      </div>';
         str += '      <div class="icon-check ' + classStatus + '"></div>';
         str += '   </div>';

         index--;
      }
      str += ' </div>';
   }
   
   $("#sideChangeContents").append(str);
}

$("#hamburgerBox-SideChangeBodyRightBtn").on("click", function(){
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
   var temp = sideArr[sideIndex][1];
   var curClick = $(this);
   sideArr[sideIndex][1] = curClick.data("no");
   
   $('.menuSetSecond[data-no=' + temp + ']').children(".icon-check").removeClass('recommend-check');
   $('.menuSetSecond[data-no=' + temp + ']').children(".icon-check").addClass('hidden');
   
   curClick.children(".icon-check").removeClass('hidden');
   curClick.children(".icon-check").addClass('recommend-check');

   sideArr[sideIndex][2] = curClick.children().eq(1).children(".menuPrice").text().slice(1);
   computeAllPrice();
   
   $(".burgerBoxPrice").text(totalPrice);
});

$("#sideChangeComplete").on("click", function(){
   
   
   var childrenLength = $("#sideChangeContents > div").size();
   
   for(var i = 0; i < childrenLength; i++){
      var currentChild = $("#sideChangeContents").children().eq(i);
      var grandchildrenLength = currentChild.children().size();
      
      for(var j = 0 ; j < grandchildrenLength; j++){
         if(currentChild.children().eq(j).children().eq(2).hasClass("recommend-check")){         
            var parent = $('.hamburgerBoxButton[data-index=' + sideIndex + ']').parent();

            parent.children().eq(0).attr("src", currentChild.children().eq(j).children().eq(0).attr("src"));
            parent.children().eq(1).children(".menuName").text(currentChild.children().eq(j).children().eq(1).children('.menuName').text());

         }
      }
   }
   
   $("#sideChange").modal("hide");
   $("#hamburgerBoxSideMenu").modal();
});

$("#hamburgerBoxSideMenuComplete").on("click", function(){
   var burgurChangeList = "-";

   var menuName = burgerName.split(" ");

   burgurChangeList += menuName[0];
   
   console.log(burgurChangeList);
   
   if(sideArr != undefined){
      for(var i = 0; i < sideArr.length; i++){
		 burgurChangeList += " + ";
		 burgurChangeList += $(".hamburgerBoxButton[data-index=" + i + "]").prev().children(".menuName").text();
      }
   }

   for(var i = 0; i < toppingArr.length; i++){
      if(toppingArr[i][3] != 0){
         burgurChangeList += " + ";
         burgurChangeList += toppingArr[i][1] + " " + toppingArr[i][3] +"개";
      }
   }

   orderComplate(burgurChangeList);

	countAllMenulList();
   
	modalCanclePoint = [];

   $("#hamburgerBoxSideMenu").modal('hide');
});

/* 추천 메뉴 모달 */
$('#recommend-body').on("click", ".recommendation",function(){
   var thisMenuContainer = $(this);
   var target = thisMenuContainer.children(".icon-check");
   
   if(target.hasClass("recommend-check")){
      target.addClass("recommend-hidden");
      target.removeClass("recommend-check")
   }
   else{
      target.addClass("recommend-check");
      target.removeClass("recommend-hidden")
   }
});

/*주문버튼-->장소선택 모달-->추천 메뉴 모달*/
$("#orderBtn").on("click", function(){
	var menuLenght = $("#menuTableContents").children().size();
	modalCanclePoint = [];
	
	if(menuLenght > 0){
		modalCanclePoint.push("placeSelect");
   		$("#placeSelect").modal();
	} else{
		alert("메뉴를 선택해주세요");
	}
	
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

		 modalCanclePoint.push("recommend");
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
   str += '    <div class="recommend-imgAndPtag">';
   str += '    <img';
   str += '    src="' + url + '/kfc/'+menuVo.menuImg+'"';
   str += '   class="img-responsive-recommend">';
   str += '   <p class="menuName">' +  menuVo.menuName +  '</p><br>';
   str += '   <p class="menuPrice">' + menuVo.menuPrice +  '</p><br>';
   str += '   <p class="menuCount">';
   str += '   </div>';                  
   str += '   <div class="icon-check recommend-hidden"></div>';      
   str += ' </div>';   
   
   $("#recommend-body").append(str);
}

/*추천메뉴모달에서 체크된 값만 읽어오기*/
var myOrderListModalLength;
var myOrderListModalCurrentPos;
var myOrderListModalLastMove;

$("#recommendCompleteBtn").on("click", function(){
  	console.log("test");
   var text=[];
   var price=[];
   var count=[];

   var length = $("#menuTableContents>div").size();
   
   for(var i = 0; i<length; i++ ){
		var menuText = $("#menuTableContents>div").eq(i).children().eq(0).children(".textarea").children().eq(0).text();
		text.push(menuText);
		
		var menuPrice = $("#menuTableContents>div").eq(i).children().eq(2).children().eq(0).children().eq(0).children().eq(0).text();
		price.push(menuPrice);
		
		var menuCount = $("#menuTableContents>div").eq(i).children().eq(1).children().eq(0).children().eq(1).text();
		count.push(menuCount);
		
		
		var subtext = $("#menuTableContents>div").eq(i).children().eq(0).children(".textarea").children().eq(1).text();
	
		if(subtext!=""){
			subtext = subtext.substring(1, subtext.length);

			firstSplitText = subtext.split(" + ");
			
			for(var j = 0; j < firstSplitText.length; j++){
				console.log(firstSplitText[j]);
				lastSplitText = firstSplitText[j].split(" ");
				text.push(lastSplitText[0]);
				if(lastSplitText[1] == undefined){
					count.push(1*menuCount);
				} else{
					count.push(lastSplitText[1].substring(0, 1)*menuCount);
				}
				
				price.push(0);
			}
		}
   }

   length = $("#recommend-body > div").size();	

   for(var i = 0; i < length; i++){
      var currentDiv = $("#recommend-body").children().eq(i);
      
      if(currentDiv.children().eq(1).hasClass("recommend-check")){
         text.push(currentDiv.children().eq(0).children('.menuName').text());
         price.push(currentDiv.children().eq(0).children('.menuPrice').text());
		 count.push(1);
      }
   }

   addOrderList(text, price, count);
   sum();

   $("#recommend").modal("hide");
   modalCanclePoint.push("MyOrderListModal");
   $("#MyOrderListModal").modal();
   
   myOrderListSlideSetting();
});

function addOrderList(textArr, priceArr, countArr){
   var str = "";
   $(".orderList-table").empty();
   for(var i=0; i < textArr.length; i++) {
	  
	  if(priceArr[i] == 0){
		str += '<tr ' + 'class="subText"' + '>';
		str += '   <td id="orderlist-menuName" class="subTextTd">' + textArr[i] + '</td>';
		str += '   <td id="orderlist-menuCnt" class="noCount"> ' + countArr[i] + ' </td>';
	  }
      	
	  else{
		str += '<tr>';
		str += '   <td id="orderlist-menuName">' + textArr[i] + '</td>';
		str += '   <td id="orderlist-menuCnt"> ' + countArr[i] + ' </td>';
	  }	

	  if(priceArr[i] != 0)
      	str += ' <td id="orderlist-menuPrice"> ' + priceArr[i] +' </td>';
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
 	  if(!tbody.eq(i).children().eq(1).hasClass("noCount")){		 var currentCount = 
         count += Number(tbody.eq(i).children().eq(1).text());
         totalPay += Number(tbody.eq(i).children().eq(2).text());
      }
   }

   totalPrice = totalPay
   
   $(".order-totalMenu > p").text(count);
   $(".order-totalPrice > p").text(totalPay);
}

$("#myOrderComplete").on("click", function(){
	$("#MyOrderListModal").modal("hide");
	modalCanclePoint.push("paySelect");
	$("#paySelect").modal();
});

$(".payMethod").on("click", function(){
	var thisSelect = $(this);
	
	var no=thisSelect.data("no");
	
	$("#paymentDetailsMoney").text(totalPrice);
	$("#paymentTitle").text(thisSelect.children().eq(1).text());
	
	$("#paymentmodalContent").attr("src", url+"/assets/images/" +no+".png");
	
	$("#paySelect").modal("hide");
	modalCanclePoint.push("paymentDetails");
	$("#paymentDetails").modal();
});

function myOrderListSlideSetting(){
	var maxSize = 600;
	var curHeight = $(".orderList-tableDiv").height();
   
	myOrderListModalLength = Math.floor(curHeight/maxSize)*-1;
	
	$("#orderList-pagingUp").removeClass("scrollActive");
	$("#orderList-pagingDown").removeClass("scrollActive");
	
	if(myOrderListModalLength<0){
		myOrderListModalLastMove = curHeight%maxSize;
		
		if(myOrderListModalLastMove == 0 && myOrderListModalLength != 1){
			myOrderListModalLastMove = maxSize;
		} else if(!(myOrderListModalLastMove == 0 && myOrderListModalLength == 1)){
			$("#orderList-pagingDown").addClass("scrollActive");
			myOrderListModalCurrentPos = 0;
		}
	}
}

$("#orderList-pagingDown").on("click",function(){
	var thisDownBtn = $(this);
	
	if(thisDownBtn.hasClass("scrollActive")){
		
		var movePos;
		var maxSize = 600;
		
		if(myOrderListModalCurrentPos == 0){
			$("#orderList-pagingUp").addClass("scrollActive");
		}
		
		myOrderListModalCurrentPos--;
		
		if(myOrderListModalCurrentPos == myOrderListModalLength){
			movePos = ((maxSize * (myOrderListModalLength + 1)) - myOrderListModalLastMove);
			$("#orderList-pagingDown").removeClass("scrollActive");
		} else{
			movePos = maxSize*myOrderListModalCurrentPos;	
		}
		
		$(".orderList-tableDiv").animate({top : movePos});
	}
});

$("#orderList-pagingUp").on("click",function(){
	var thisDownBtn = $(this);
	
	if(thisDownBtn.hasClass("scrollActive")){
		
		var movePos;
		var maxSize = 600;
		
		if(myOrderListModalCurrentPos == myOrderListModalLength){
			$("#orderList-pagingDown").addClass("scrollActive");
		}
		
		myOrderListModalCurrentPos++;
		
		if(myOrderListModalCurrentPos == 0){
			movePos = 0;
			$("#orderList-pagingUp").removeClass("scrollActive");

		} else{
			movePos = ($(".orderList-tableDiv").height() + maxSize*(myOrderListModalLength - myOrderListModalCurrentPos -1)) * -1;
		}
		
		$(".orderList-tableDiv").animate({top : movePos});
	}
});

$("#payComplate").on("click", function(){
	modalCanclePoint.push("paymentDetails");
	$("#paymentDetails").modal("hide");
	$("#paymentmodal").modal();
});


$(".paySelectUp").on("click", function(){
	var parent = $(this).parent().parent().parent().children().eq(0).children().eq(1);
	if(parent.is("#selectPayCodeContainer")){
		var target = parent.children("#selectPayCodeContents");
		target.animate({top : "0px"});
	}
});

$(".paySelectDown").on("click", function(){
	console.log("downtest");
	var parent = $(this).parent().parent().parent().children().eq(0).children().eq(1);
	if(parent.is("#selectPayCodeContainer")){
		var target = parent.children("#selectPayCodeContents");
		target.animate({top : "-75px"});
	}
});