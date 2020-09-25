var modalCanclePoint = []
$(document).ready(function() {
	$.removeCookie('selectList');
	modalCanclePoint.push(["결제수단선택"]);		
	console.log(modalCanclePoint);
	
	$(".nextBtn").on("click", function(){
		console.log("test");
		isEnd=true;
	})
});
