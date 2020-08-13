var url = getUrl();

function getUrl(){
	return window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));
}

$(".category").on("click", function(){
	var test = $(this);
	var no = test.data("no");
	console.log(test);
	console.log(no);
	changeMenu(no);
});

function changeMenu(no){
	$.ajax({
		url : url+"/KFC/index",		
		type : "post",
		data : {categoryNo : no},
		success : function(vo){
			console.log(vo);
			
		},
		
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
}