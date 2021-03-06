var url = window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));
var isEnd

$(document).ready(function(){
	isEnd = false;
	tooltipTimer(0, 1);
});

//강제 종료했을 경우 진행중이던 곳 저장
function forceStop(endPoint){
	$.ajax({		
		url : url+"/share/addFailData",		
		type : "post",
		//contentType : "application/json",
		data : {endPoint : endPoint},
		dataType : "json",
		success : function(){
				console.log("확인");
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
}

$(".serveyImgContainer").hover(function(){
	$(this).css("filter", "brightness(100%)");
	$(this).children().eq(1).addClass("serveyHidden");
	$(this).children().eq(0).removeClass("serveyHidden");
}, function(){
	$(this).css("filter", "brightness(50%)");
	$(this).children().eq(0).addClass("serveyHidden");
	$(this).children().eq(1).removeClass("serveyHidden");
});

$(window).bind("beforeunload", function (e){
	console.log(isEnd);
	if(isEnd){
		$(window).unbind('beforeunload');	
	} else{
		
		if($("script[src='https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.js']").length == 1){
			$.removeCookie('selectList');
			$.removeCookie('modalCanclePoint');
		}
		forceStop(modalCanclePoint.pop()[0]);
		return "진행된 내용은 저장되지 않습니다.";
	}
});

$(".serveyImgContainer").on("click", function(){
	isEnd=true;
});

//툴팁에 사용되는 변수들
var tooltipVal;
var tooltipIndex = [];

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