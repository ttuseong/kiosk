var url= window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));

$(document).ready(function() {
	
	loginFail();
	
	$(".btn").on("click", function(){
		var id = $("#exampleInputEmail").val();
		var pw = $("#exampleInputPassword").val();
		
		dataCheck(id, pw);
	});
});

function dataCheck(id,pw){
	if(id == ""){
		alert("아이디를 입력하세요.");
		return 0;
	}else if(pw == ""){
		alert("비밀번호를 입력하세요.");
		return 0;
	}else{
		return 1;
	}
};

function loginFail(){
	var params = location.search.substr(location.search.indexOf("?") + 1);
	var temp,result;
	
	if(params != ""){
		params = params.split("&");
		for (var z = 0; z < params.length; z++) {
			temp = params[z].split("=");
			if ([temp[0]] == "result") { result = temp[1]; }
		}
	}
	
	if(result != null){
		alert("로그인에 실패하였습니다. 다시 시도해주세요.");
	}
	
}