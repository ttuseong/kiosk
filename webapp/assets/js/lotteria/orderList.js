$(document).ready(function() {
	$("#discount,#payment").css("opacity","0.3");
	
	$("#cancel").on("click",function(){
		$("#modalName01").modal();
	});
	
	$("#cancelDouble-check").on("click", function(){
		$("#modalName02").modal();
	});
	
	$("#ok").on("click", function(){
		location.href="index";
	});
	
	
});