var url = window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));


/*토핑 추가하기*/
$(".adminTopping-btn").on("click", function(){
	event.preventDefault(); //a태그의 링크 이동기능을 아예 막아줌
	console.log("왜안찍혀"); //꼭 사용할 jsp 아래에 js링크 넣어주기
	
	/*var toppingName = $('input[name=toppingName]').val();
	console.log(toppingName);
	
	var toppingPrice = $('input[name=toppingPrice]').val(); //토핑가격
	console.log(toppingPrice); //int가 안넘어올경우 input type="number"로 바꿔봐
*/	//주석막아둔 이유는 일일이 if를 넣어줘야해서,,,,
	
	var form = $("#toppingImgUpload")[0];
	var formdata = new FormData(form);	
	
	for(var pair of formdata.entries()) {
		   console.log(pair[0]+ ', '+ pair[1]);
		   if(pair[1] == ""){
			   alert(pair[0]+"이 없습니다");
			   return;
		   }
	}

	$.ajax({
		url : url+"/admin/adminTopingAdd",
		type: "post",
		processData : false,
		contentType : false,
		data : formdata,
		dataType : "json",
		success : function(toVo){
			console.log(toVo);
			if(toVo.storeNo == 0){
				alert("뭐하는짓이야");
				return;
			}
			/*else{
				window.location.reload();
			}
*/
			/*for(var i=0; i<toVo.length; i++){
			} */
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	
	});
	
	
	
});