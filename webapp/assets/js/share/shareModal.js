var url = window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));

//강제 종료했을 경우 진행중이던 곳 저장
function forceStop(endPoint){
	$.ajax({		
		url : url+"/share/addFailData",		
		type : "post",
		//contentType : "application/json",
		data : {endPoint : endPoint},
		dataType : "json",
		success : function(){
				
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

$(".serveyImgContainer").on("click", function(){
	$(window).unbind('beforeunload');
});