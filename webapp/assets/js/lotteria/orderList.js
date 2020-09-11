var url= window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));

$(document).ready(function() {
	$("#cancel").on("click",function(){
		$("#modalName01").modal();
	});
	
	$("#cancelDouble-check").on("click", function(){
		$("#modalName02").modal();
	});
	
	$("#ok").on("click", function(){
		location.href="index";
	});
	
	$(".subtitle").on("click", function(e){
		e.stopPropagation();
	})
	
	$("#selectPackage").on("click",".img-inline_block",function(){
		var select = $(this);
		
		select.children().eq(1).addClass("glyphicon glyphicon-ok");
		select.children().eq(1).addClass("check");
		
		if(select.hasClass("selectDisable") || select.hasClass("selectOption")){
			console.log("이미 선택된 놈들입니다.")
		}
		else{
			$(".subtitle").addClass("gray");
			select.addClass("selectOption");
			select.siblings().addClass("selectDisable");
		}
	});
	
	$("#discount").on("click",".img-inline_block",function(){
		var select = $(this);
		if($("#discount").hasClass("selectDisable")){
			console.log("클릭할 수 없습니다");
		}
		else if(select.hasClass("selectDisable") || select.hasClass("selectOption")){
			console.log("이미 선택된 놈들입니다.");
		}
		else{
			select.addClass("selectOption");
			select.siblings().addClass("selectDisable");
			$("#payment").removeClass("selectDisable");
		}
	});
	
	$("#payment").on("click",".img-inline_block",function(){
		var select = $(this);
		if($("#payment").hasClass("selectDisable")){
			console.log("클릭할 수 없습니다");
		}
		else if(select.hasClass("selectDisable") || select.hasClass("selectOption")){
			console.log("이미 선택된 놈들입니다.")
		}	
		else{
			select.addClass("selectOption");
			select.siblings().addClass("selectDisable");
		}
	});

	orderPrice();
	
});

function orderPrice(){
	var priceHap = $("tbody").children("tr").eq(0).children("td").eq(2).text();
	priceHap = Number(priceHap);
	
	if($("tbody").children("tr").eq(1).children("td").eq(2).text() != ""){
		priceHap +=Number($("tbody").children("tr").eq(1).children("td").eq(2).text());
		
	}else if($("tbody").children("tr").eq(2).children("td").eq(2).text() != ""){
		priceHap +=Number($("tbody").children("tr").eq(2).children("td").eq(2).text());
		
	}else if($("tbody").children("tr").eq(3).children("td").eq(2).text() != ""){
		priceHap +=Number($("tbody").children("tr").eq(3).children("td").eq(2).text());
		
	}else if($("tbody").children("tr").eq(4).children("td").eq(2).text() != ""){
		priceHap +=Number($("tbody").children("tr").eq(4).children("td").eq(2).text());
		
	}else if($("tbody").children("tr").eq(5).children("td").eq(2).text() != ""){
		priceHap +=Number($("tbody").children("tr").eq(5).children("td").eq(2).text());
	}
	$(".orderPrice").text(priceHap);
}

function complete(){
	confirm("카드를 투입구에 넣어주시면 주문이 끝납니다. 롯데리아 키오스크 처음 화면으로 이동하겠습니다.")
	window.location = url+"/lotteria/index";
}


