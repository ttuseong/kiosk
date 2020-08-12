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
		
		if(select.hasClass("selectDisable") || select.hasClass("selectOption")){
			console.log("이미 선택된 놈들입니다.")
		}
		else{
			select.addClass("selectOption");
			select.siblings().addClass("selectDisable");
			$("#discount").removeClass("selectDisable");
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
	
});

