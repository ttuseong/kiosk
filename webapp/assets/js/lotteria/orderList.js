var url= window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));
var modalCanclePoint =[];
$(document).ready(function() {
	modalCanclePoint.push(["장소 선택전 결제"]);
	
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
			modalCanclePoint.push(["장소 선택후 결제"]);
			console.log(modalCanclePoint);
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



