var curPoint = 0;
var endPoint;
var curPos = 0;

//선택한 카테고리의 번호
//선택한 메뉴를 뽑아올 때 사용
var categoryNo;
var highlight;

//툴팁에 사용되는 변수들
var tooltipVal;
var tooltipIndex = [];

$(document).ready(function(){
	categoryListInit();
	defaultMenuList();
});

function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

function removeComma(str){
	var n = parseInt(str.replace(/,/g,""));

	return n;
}

function tooltipTimer(index, check){
	if(check == 1){
		tooltipIndex.push(index);
	}
	console.log(tooltipIndex);
	tooltipVal = setTimeout(function(){ $(".tooltip-text").eq(index).css("display", "block"); }, 3000);
}

function tooltipTimerStop(check){
	$(".tooltip-text").eq(tooltipIndex[tooltipIndex.length-1]).css("display", "none");
	
	if(check == 1){
		tooltipIndex.pop();
	}
	
	clearTimeout(tooltipVal);
}

function categoryListInit(){
	var length = $(".categoryItem").length;
	
	var width = (Number($("#category").css("width").split("px")[0]) - ((length-1)*5))/length;

	$(".categoryItem").css("width", width);
}

function defaultMenuList(){
	categoryNo = $("#category").children("ul").children().eq(0).children(".menuLink").data("no");
	highlight = $("#category").children("ul").children().eq(0).children(".menuLink").data("highlight");
	
	console.log(categoryNo, highlight);
	addMenuAjax();
}

$(".menuLink").on("click", function(){
	event.preventDefault();
	tooltipTimerStop(0);
	var thismenuLink = $(this);
	categoryNo = thismenuLink.data("no");
	highlight = thismenuLink.data("highlight");
	addMenuAjax();
});

function addMenuAjax(){
	$.ajax({
      url : url+"/kfc/menuList",      
      type : "post",
      data :{categoryNo : categoryNo, highlight : highlight},
      success : function(map){
		$("#menuSectionContent > div").remove();
		$("#pageCircleGroup>li").remove();
		
		if(map.highlight==1){
			for(var i = 0; i < map.list.length; i++){
				if(i%3 == 0){
					$("#menuSectionContent").append('<div></div>');	
				}
				addHighlight(map.list[i]);
			}
		}else{
			for(var i = 0; i < map.list.length; i++){
				if(i%9 == 0){
					$("#menuSectionContent").append('<div></div>');		
				}
				addMenuList(map.list[i]);
			}
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
		
		$("#menuSectionContent").width(size);
		
		if(endPoint > 1){
			$("#btnRight").addClass("btnActive");
		}
		
		tooltipTimer(0, 1);
      },
      error : function(XHR, status, error) {
         console.error(status + " : " + error);
      }
   });
}

function addHighlight(menuVo){
	console.log(menuVo);
	str="";
	
	str += ' <div class="highlightMenu">';
	str += '		<img alt="메뉴 이미지"';
	str += '			src="'+url+'/kfc/'+menuVo.menuImg+'">';
	str += '		<div>';
	str += '			<p class="highlightName">'+menuVo.menuName+'</p>';
	if(menuVo.discount == 0){
		str += '		<div>';
		str += '			<div class="highlightConfig">구성</div>';
		str += '			<p class="highlightPrice">'+numberWithCommas(menuVo.menuPrice)+'</p>';
		str += '		</div>';
		str += '		<p class="highlightItem">구성품</p>';
	} else{
		str += '		<div>';
		str += '			<div class="highlightConfig"></div>';
		str += '			<p class="highlightPrice">'+numberWithCommas(menuVo.menuPrice)+'</p>';
		str += '		</div>';
		str += '		<p class="highlightItem"></p>';
	}
	str += '		</div>';
	str += '	</div>';
	
	$("#menuSectionContent > div:last-child").append(str);
}

function addMenuList(menuVo){
	console.log(menuVo);
	str = "";
	str += ' <div class="menu" data-no="'+menuVo.menuNo+'">';
	str += ' 	<img class="menuImg" alt="메뉴 이미지" src="'+url+'/kfc/'+ menuVo.menuImg +'">';
	str += '	<div class="menuContent">';
	str += '		<p>'+menuVo.menuName+'</p>';
	if(menuVo.discount == 0){
		str += '	<p>'+numberWithCommas(menuVo.menuPrice)+'</p>';	
	}
	else{
		str += '	<p>'+menuVo.discount	+'</p>'	
	}
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
	if($("#btnRight").hasClass("btnActive")){
		curPoint++;
		curPos = -1 * curPoint * 800;
		$("#menuSectionContent").animate({
			marginLeft : curPos
		});
		movePageCircle();
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
	str += '				<p>'+ numberWithCommas(totalPrice) +'</p>;';
	
	str += '			</div>';
	str += '				<div class="icon-cancel"></div>';
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
		mainTotalPrice += removeComma(trGroup.eq(i).find(".pricePos").children().eq(0).text());
	}
	
	$("#orderLeft").children().eq(0).children().eq(1).text(mainTotalCount);
	$("#orderLeft").children().eq(1).children().eq(1).text(numberWithCommas(mainTotalPrice));
}


$("#menuTable").on("click", ".icon-cancel", function(){
	var thisDelete = $(this);
	
	thisDelete.parent().parent().parent().remove();
	
	mainPageTotal();
	
	var count = $("#menuTableContents").children().size();
	var targetPos = count > 2 ? (count-4) * -31 : 0;
	var str = $("#menuTableContents").css("bottom").split("px");
	
	if(count == 3){
		console.log("test");
		$("#menuTableContents").removeAttr("style");
	} else if(targetPos > Number(str[0])){
		console.log("1");
		$("#menuTableContents").css("bottom", targetPos);
	}
	
	// 업, 다운 화살표 활성화 제거
	if(menuListCurPos == 0){
		console.log(2);
		menuListlength--;
		if(menuListlength == 0){
			$("#scrollUp").removeClass("scrollActive");
		}
	} else if((menuListCurPos == menuListlength * -1) && menuListCurPos != 0){
		console.log(3);
		menuListCurPos ++;
		menuListlength --;
		if(menuListlength == 0){
			$("#scrollDown").removeClass("scrollActive");
		}
	} else if(menuListCurPos > menuListlength * -1){
		console.log(4);
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
	
	var price = removeComma($(this).parent().parent().next().children(".price").children(".pricePos").children().eq(0).text());
	
	price = price/count;
	
	price = price*(++count);
	
	
	$(this).prev().text(count);
	$(this).parent().parent().next().children(".price").children(".pricePos").children().eq(0).text(numberWithCommas(price));
	
	mainPageTotal();
});

$("#menuTable").on("click", ".icon-minus", function(){
	var count = $(this).next().text();
	
	if(count == 1){
		return;
	}
	
	var price = removeComma($(this).parent().parent().next().children(".price").children(".pricePos").children().eq(0).text());
	
	price = price/count;
	
	price = price*(--count);
	
	
	$(this).next().text(count);
	$(this).parent().parent().next().children(".price").children(".pricePos").children().eq(0).text(numberWithCommas(price));

	mainPageTotal();
});

$("#allCancelBtn").on("click", function(){
	$("#menuTableContents").empty();
	$("#scrollContents").children(".scrollActive").removeClass("scrollActive");
	$("#menuTableContents").removeAttr("style");
	mainPageTotal();
});

var menuListlength;
var menuListCurPos;

function countAllMenulList(){
	count = $("#menuTableContents").children().size();
	
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
	var thisScroll = $(this);
	
	if(thisScroll.hasClass("scrollActive")){
		if(menuListCurPos==0){
			$("#scrollDown").addClass("scrollActive");
		}
		
		menuListCurPos--;
		var movePos = menuListCurPos * 31;
		
		$("#menuTableContents").animate({bottom : movePos});
		
		if(menuListCurPos == menuListlength*-1){
			thisScroll.removeClass("scrollActive");
		}
	}
});

//scrollActive

$("#scrollDown").on("click", function(){
	var thisScroll = $(this);
	
	if(thisScroll.hasClass("scrollActive")){
		if(menuListCurPos == menuListlength*-1){
			$("#scrollUp").addClass("scrollActive");
		}
		
		menuListCurPos++;
		var movePos = menuListCurPos * 31;
		
		$("#menuTableContents").animate({bottom : movePos});
		
		if(menuListCurPos == 0){
			thisScroll.removeClass("scrollActive");
		}
	}
});