var modalCanclePoint = []
$(document).ready(function() {
	$.removeCookie('selectList');
	modalCanclePoint.push(["광고"]);
	console.log(modalCanclePoint);
	
	$(".nextBtn").on("click", function(){
		console.log("test");
		isEnd=true;
	})
});
