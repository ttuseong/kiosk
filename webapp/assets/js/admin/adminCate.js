$(".adminCate-delete").on("click", function(){
	console.log("클릭");

	if(confirm("정말 삭제하시겠습니까?") == true){
		document.removefrm.submit();
	}else{
		return false;
	}
});