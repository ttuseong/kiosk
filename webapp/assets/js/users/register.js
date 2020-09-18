$(document).ready(function() {
	$(".btn").on("click", function(){
		dataCheck();
	})
})

function dataCheck(){
	var name = $("#exampleFirstName").val();
	var pass1 = $("#exampleInputPassword").val();

	if(name == "" ){
		alert("이름을 입력하세요.");
		event.preventDefault();
	}else if(pass1 == ""){
		alert("비밀번호를 입력하세요.");
		event.preventDefault();
	}else{
		alert("회원가입을 축하합니다.");
	}
	
}