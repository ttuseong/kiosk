var url = window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));

$(document).ready(function() { 
	$.getJSON(url+'/assets/json/korea-administrative.json', function(data){
		for(key in data){
			dropProvinceRender(key);
		}
	});
});

//휴대전화 관련 js
$(".sharePhoneNumber").keyup(function(){
	var thisInput = $(this);
	
	console.log()
	
	if(thisInput.prev().text() == "-"){
		if($(this).val().length>=4){
			console.log($(this).val().substring(0, 4));
			$(this).val($(this).val().substring(0, 4));	
			thisInput.next().next().focus();
		}
	} else{
		if($(this).val().length>=3){
			console.log($(this).val().substring(0, 3));
			$(this).val($(this).val().substring(0, 3));	
			thisInput.next().next().focus();
		}
	}
		
});


//드롭다운 관련 js
function dropProvinceRender(key){
	str = '';
	
	str += ' <li role="presentation" data-province='+ key +'><a role="menuitem" tabindex="-1" href="#">' + key + '</a></li>';
	
	$("#province").append(str);
}

function dropCityRender(cityList){
	
	for(var i = 0; i < cityList.length; i++){
		str = '';
	
		str += ' <li role="presentation" data-province='+ cityList[i] +'><a role="menuitem" tabindex="-1" href="#">' + cityList[i] + '</a></li>';
		
		$("#city").append(str);	
	}
}

$(".dropdown").on("click", "li",function(){
	var thisLi = $(this);
	var target = thisLi.parent().prev();
	
	target.children("div").children("p").text(thisLi.data("province"));
	
	if(target.is("#provinceBtn")){
		$("#city li").remove();
		$("#cityText").text("시/군/구");
		$.getJSON(url+'/assets/json/korea-administrative.json', function(data){
			dropCityRender(data[thisLi.data("province")]);
		});	
	}
});