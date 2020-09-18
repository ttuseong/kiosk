var url= window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));

$(document).ready(function() {
	
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
/*

function idCheck(id, pw){
	$.ajax({
		url : url+"/usersApi/idCheck",		
		type : "post",
		contentType : "application/json",
		data : JSON.stringify(id),
		dataType : "json",
		success : function(idCheck){
			
			if(idCheck == 0){
				alert("없는 아이디입니다. 아이디를 확인해주세요.");
				
			}else{
				pwCheck(id, pw);
			}
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
};

function pwCheck(id, pw){
	
	var user = {userId: id, userPw: pw};
	
	$.ajax({
		url : url+"/usersApi/pwCheck",		
		type : "post",
		contentType : "application/json",
		data : JSON.stringify(user),
		dataType : "json",
		success : function(idCheck){
			if(idCheck== 1){
				console.log("체크 완료");
				
			}else{
				alert("비밀번호가 맞지 않습니다. 비밀번호를 확인해주세요.");
				event.preventDefault();
			}
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
};*/