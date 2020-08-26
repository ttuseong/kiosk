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
	
	var str = "";
	str += ' <tr>';
	str += ' 	<td>';
	str += '		<div class="textarea">';
	str += '			<p>'+ burgerName +'</p>';
	if(subText != '-'){
		str += '		<p>'+ subText +'</p>';	
	}
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
	
	mainPageTotal();
}

function mainPageTotal(){
	var mainTotalPrice = 0;
	var mainTotalCount = 0;
	
	var trGroup = $("#menuTable>tbody").children();  
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
