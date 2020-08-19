var curPoint = 0;
var endPoint = $("#menuSectionContent > div").size();
var curPos = 0;

$(document).ready(function(){
	var size = endPoint * 800;
	console.log(size);
	
	$("#menuSectionContent").width(size);
	
	if(endPoint > 1){
		$("#btnRight").addClass("btnActive");
	}
});

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
