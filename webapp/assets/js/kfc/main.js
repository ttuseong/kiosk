var curPoint = 0;
var endPoint;
var curPos = 0;

//선택한 카테고리의 번호
//선택한 메뉴를 뽑아올 때 사용
var categoryNo;

$(document).ready(function(){
	defaultMenuList();
});

function defaultMenuList(){
	console.log($(".categoryColorWhite:first-child").children(".menuLink"));
	categoryNo = $(".categoryColorWhite:first-child").children(".menuLink").data("no");
	addMenuAjax();
}



$(".menuLink").on("click", function(){
	event.preventDefault();
	var thismenuLink = $(this);
	categoryNo = thismenuLink.data("no");
	
	addMenuAjax();
});

function addMenuAjax(){
	$.ajax({
      url : url+"/KFC/menuList",      
      type : "post",
      data :{categoryNo : categoryNo},
      success : function(menuList){
		$("#menuSectionContent > div").remove();
		$("#pageCircleGroup>li").remove();
		
		for(var i = 0; i < menuList.length; i++){
			if(i%9 == 0){
				$("#menuSectionContent").append('<div></div>');		
			}
			addMenuList(menuList[i]);
		}
		
		if(endPoint != 0 && curPoint < endPoint){
			$("#btnRight").removeClass("btnActive");
		}
		
		endPoint = $("#menuSectionContent > div").size();
		
		if(curPoint != 0){
			curPoint = 0;
			curPos = 0;
			$("#menuSectionContent").css("margin-left", curPos);
			$("#btnLeft").removeClass("btnActive");
		}
		
		for(var i = 0; i < endPoint; i++){
			addPageCircleGroup(i);
		}
		
		var size = endPoint * 800;
		console.log(size);
		
		$("#menuSectionContent").width(size);
		
		if(endPoint > 1){
			$("#btnRight").addClass("btnActive");
		}
      },
      error : function(XHR, status, error) {
         console.error(status + " : " + error);
      }
   });
}

function addMenuList(menuVo){
	str = "";
	str += ' <div class="menu" data-no="'+menuVo.menuNo+'">';
	str += ' 	<img class="menuImg" alt="메뉴 이미지" src="'+url+'/assets/images/icon1.png">';
	str += '	<div class="menuContent">';
	str += '		<p>'+menuVo.menuName+'</p>';
	str += '		<p>'+menuVo.menuPrice+'</p>';
	str += '	</div>';
	str += ' </div>';
		
	$("#menuSectionContent > div:last-child").append(str);
}

function addPageCircleGroup(index){
	str = '';
	str += ' <li><div class="pageCircle ';
	if(index == 0){
		str += ' pageActive';
	}
	str += ' ">${current}</div></li>';
	
	$("#pageCircleGroup").append(str);
}

$("#btnRight").on("click", function(){
	console.log($("#btnRight").hasClass("btnActive"))
	if($("#btnRight").hasClass("btnActive")){
		curPoint++;
		curPos = -1 * curPoint * 800;
		$("#menuSectionContent").animate({
			marginLeft : curPos
		});
		movePageCircle();
		console.log(!$("#btnLeft").hasClass("btnActive"));
		if(!$("#btnLeft").hasClass("btnActive") && curPoint > 0){
			$("#btnLeft").addClass("btnActive");
		}
		if(curPoint == endPoint-1){
			$("#btnRight").removeClass("btnActive");
		}
	}
	
});
$("#btnLeft").on("click", function(){
	
	if($("#btnLeft").hasClass("btnActive")){
		curPoint--;
		curPos = -1 * curPoint * 800;
		$("#menuSectionContent").animate({
			marginLeft : curPos
		});
		movePageCircle();
		if(!$("#btnRight").hasClass("btnActive") && curPoint < endPoint-1){
			$("#btnRight").addClass("btnActive");
		}
		if(curPoint == 0){
			$("#btnLeft").removeClass("btnActive");
		}
	}
	
});

function movePageCircle(){
	$("#pageCircleGroup").children().eq(curPoint).children(".pageCircle").addClass("pageActive");
	$("#pageCircleGroup").children().eq(curPoint).siblings().children(".pageCircle").removeClass("pageActive");
}

function orderComplate(subText){
	var str = "";
	str += ' <div>';
	str += ' 	<div>';
	str += ' 		<div class="textarea">';
	str += '			<p>' + burgerName + '</p>';
	if(subText != '-' && typeof subText != "undefined"){
		console.log(subText);
		console.log(typeof subText);
		str += '		<p>'+ subText +'</p>';	
	}
	str += '		</div>';
	str += ' 	</div>'
	str += ' 	<div>';
	str += '		<div class="count">';
	str += '			<div class="icon-minus iconCombination"></div>'
	str += '			<p>'+ burgerCount +'</p>'
	str += '			<div class="icon-plus iconCombination"></div>';
	str += '		</div>';
	str += ' 	</div>';
	str += ' 	<div>';
	str += ' 		<div class="price">';
	str += '			<div class="pricePos">';
	str += '				<p>'+totalPrice+'</p>;'
	str += '				<div class="icon-cancel"></div>'
	str += '			</div>'
	str += '		</div>';
	str += ' 	</div>';
	str += ' </div>';
	
	$("#menuTableContents").append(str);
	
	mainPageTotal();
}

function mainPageTotal(){
	var mainTotalPrice = 0;
	var mainTotalCount = 0;
	
	var trGroup = $("#menuTableContents").children();  
	var length = trGroup.size();
	
	for(var i=0; i<length; i++){
		mainTotalCount += Number(trGroup.eq(i).find(".count").children().eq(1).text());
		mainTotalPrice += Number(trGroup.eq(i).find(".pricePos").children().eq(0).text());
	}
	
	$("#orderLeft").children().eq(0).children().eq(1).text(mainTotalCount);
	$("#orderLeft").children().eq(1).children().eq(1).text(mainTotalPrice);
}


$("#menuTable").on("click", ".icon-cancel", function(){
	var thisDelete = $(this);
	thisDelete.parent().parent().parent().parent().remove();
	
	mainPageTotal();
	
	var count = $("#menuTableContents").children().size();
	var targetPos = (count-4) * -31;
	var str = $("#menuTableContents").css("bottom").split("px");

	if(count == 3){
		console.log("test");
		$("#menuTableContents").removeAttr("style");
	} else if(targetPos > Number(str[0])){
		$("#menuTableContents").css("bottom", targetPos);
	}
	
	if(menuListCurPos == 0){
		menuListlength--;
		if(menuListlength == 0){
			$("#scrollUp").removeClass("scrollActive");
		}
	} else if((menuListCurPos == menuListlength * -1) && menuListCurPos != 0){
		menuListCurPos ++;
		menuListlength --;
		if(menuListlength == 0){
			$("#scrollDown").removeClass("scrollActive");
		}
	} else if(menuListCurPos > menuListlength * -1){
		menuListlength --;
		if(menuListlength == 0){
			$("#scrollDown").removeClass("scrollActive");
		} else if(menuListCurPos == menuListlength * -1){
			$("#scrollUp").removeClass("scrollActive");
		}
	}
	console.log("menuListlength : " + menuListlength + ", " + "menuListCurPos : " + menuListCurPos);
});

$("#menuTable").on("click", ".icon-plus", function(){
	var count = $(this).prev().text();
	
	var price = $(this).parent().parent().next().children(".price").children(".pricePos").children().eq(0).text();
	
	price = price/count;
	
	price = price*(++count);
	
	
	$(this).prev().text(count);
	$(this).parent().parent().next().children(".price").children(".pricePos").children().eq(0).text(price);
	
	mainPageTotal();
});

$("#menuTable").on("click", ".icon-minus", function(){
	var count = $(this).next().text();
	
	if(count == 1){
		return;
	}
	
	var price = $(this).parent().parent().next().children(".price").children(".pricePos").children().eq(0).text();
	
	price = price/count;
	
	price = price*(--count);
	
	
	$(this).next().text(count);
	$(this).parent().parent().next().children(".price").children(".pricePos").children().eq(0).text(price);

	mainPageTotal();
});

$("#allCancelBtn").on("click", function(){
	$("#menuTableContents").empty();
	mainPageTotal();
});

var menuListlength;
var menuListCurPos;

function countAllMenulList(){
	count = $("#menuTableContents").children().size();
	console.log(count);
	
	if(count > 4){
		if(menuListCurPos != 0){
			$("#scrollDown").removeClass("scrollActive");
		}
		
		menuListlength = count - 4;
		menuListCurPos = 0;
		
		$("#menuTableContents").css('bottom', '0');
		
		$("#scrollUp").addClass("scrollActive");
	}
}

$("#scrollUp").on("click", function(){
	console.log("스크롤 업");
	var thisScroll = $(this);
	
	if(thisScroll.hasClass("scrollActive")){
		if(menuListCurPos==0){
			$("#scrollDown").addClass("scrollActive");
		}
		
		menuListCurPos--;
		var movePos = menuListCurPos * 31;
		
		
		console.log(menuListCurPos + ", " +movePos);
		console.log($("#menuTableContents"));
		
		$("#menuTableContents").animate({bottom : movePos});
		
		if(menuListCurPos == menuListlength*-1){
			thisScroll.removeClass("scrollActive");
		}
	}
	
});

//scrollActive

$("#scrollDown").on("click", function(){
	console.log("스크롤 다운");
	var thisScroll = $(this);
	
	if(thisScroll.hasClass("scrollActive")){
		if(menuListCurPos == menuListlength*-1){
			$("#scrollUp").addClass("scrollActive");
		}
		
		menuListCurPos++;
		var movePos = menuListCurPos * 31;
		
		
		console.log(menuListCurPos + ", " +movePos);
		console.log($("#menuTableContents"));
		
		$("#menuTableContents").animate({bottom : movePos});
		
		if(menuListCurPos == 0){
			thisScroll.removeClass("scrollActive");
		}
	}
	
});