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

function orderComplate(subText){
	console.log("test 성공");
	
	var str = "";
	str += ' <tr>';
	str += ' 	<td>';
	str += '		<div class="textarea">';
	str += '			<p>'+ burgerName +'</p>';
	str += '			<p>'+ subText +'</p>';
	str += '		</div>';
	str += '	</td>';
	str += '	<td>';
	str += '		<div class="count">';
	str += '			<div class="icon-minus iconCombination"></div>';
	str += '			<p>' + burgerCount + '</p>';
	str += '			<div class="icon-plus iconCombination"></div>';
	str += '		</div>';
	str += '	</td>';
	str += '	<td>';
	str += '		<div class="price">';
	str += '			<div class="pricePos">';
	str += '				<p>'+ burgerPrice +'</p>';
	str += '				<div class="icon-cancel"></div>';
	str += '			</div>';
	str += '		</div>';
	str += '	</td>';
	str += ' </tr>';
	
	$("#menuTable>tbody").append(str);
}
