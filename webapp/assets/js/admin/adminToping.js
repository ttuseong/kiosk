var url = window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));

//토핑 삭제하기

$(".toppingDeleteBtn").on("click", function(){
	event.preventDefault();
	console.log("토핑삭제하기");
	
	var toppingDelete = $(this);

	var toppingNo = toppingDelete.parent().parent().data("toppingno");

	console.log(toppingDelete);
	console.log(toppingNo);
	
	if (window.confirm("삭제하시겠습니까?")) {
		console.log("확인");
		$.ajax({
			url : url+"/admin/adminToppingDelete",
			type: "post",
			data : {toppingNo : toppingNo},
			dataType : "json",
			success : function(cnt){
				console.log(cnt);
				/*성공시 처리해야 될 코드 작성 */
				if(cnt==1){
					console.log("삭제했다")
					window.location.reload();
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}	
		});
	}
	else{/*취소버튼을 누른 경우*/
		console.log("취소");
	}
	
});

//토핑 수정하기(보내주는 값과 컨트롤러에서 보내주는 값을 무조건 일치시키기 못 보내줄겨우 default를 넣어주기)
$(".toppingTitle").on("click", function(){
	event.preventDefault();
	console.log("타이틀 클릭");
	
	var toppingTitleClick = $(this);
	
	$(".text").text("수정"); //확인버튼을 수정버튼으로 바꿔주기

	var toppingPrice = toppingTitleClick.parent().next().text();
	var toppingNo = toppingTitleClick.parent().parent().data("toppingno");
	
	$(".adminTopping-addForm").val(toppingTitleClick.text()); //타이틀 값 넣어주기
	$(".adminTopping-addFormD").val(toppingPrice);
	
	$(".input-groupTopping").data('hiddenToppingNo', toppingNo);
	console.log($(".input-groupTopping").data('hiddenToppingNo'));
	

});
/*토핑 추가하기, 수정하기 */
$(".text").on("click", function(){
	event.preventDefault(); //a태그의 링크 이동기능을 아예 막아줌
	
	var toppingTitleNo = $(".input-groupTopping").data('hiddenToppingNo');
	console.log(toppingTitleNo);
	
	if(toppingTitleNo==undefined){
		console.log("추가");
		console.log("왜안찍혀"); //꼭 사용할 jsp 아래에 js링크 넣어주기
		
		/*var toppingName = $('input[name=toppingName]').val();
		console.log(toppingName);
		
		var toppingPrice = $('input[name=toppingPrice]').val(); //토핑가격
		console.log(toppingPrice); //int가 안넘어올경우 input type="number"로 바꿔봐
	*/	//주석막아둔 이유는 일일이 if를 넣어줘야해서,,,,
		
		var form = $("#toppingImgUpload")[0]; //input name값 다 읽어왔어
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
				if(toVo.toppingNo == 0){
					alert("이름이 중복되어 추가할 수 없습니다.");
					return;
				}
				else{
					window.location.reload();
				}

				/*for(var i=0; i<toVo.length; i++){
				} */
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		
		});
	}else {
		console.log("수정");
		var form = $("#toppingImgUpload")[0]; //input name값 다 읽어왔어
		var formdata = new FormData(form);
		
		
		formdata.append("toppingNo", toppingTitleNo);
		$.ajax({
			url : url+"/admin/adminToppingUpdate",
			type: "post",
			processData : false,
			contentType : false,
			data : formdata,
			dataType : "json",
			success : function(result){
				console.log(result);
				/*성공시 처리해야 될 코드 작성 */
				
				if(result==1){
					console.log("수정완료")
					alert("수정이 완료되었습니다.");
					window.location.reload();
				}else {
					console.log("수정 안됐어");
					alert("수정에 실패하였습니다.");
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}	
		});
	}
	
});

/* 토핑 툴팁 텍스트 */
$("#toppingQuestionTool").hover(function(){ //마우스에 툴팁이 가까이 가면 hover가 실행 if/else문 같이씀
	$(".tooltip-text").css("opacity", "1");
}, function(){
	$(".tooltip-text").css("opacity", "0");
});


if(jQuery("#displayDiv").css("display") == "none") {

    jQuery("#displayDiv").css("display", "block");
}

출처: https://wickedmagic.tistory.com/487 [사악미소의 현대마법의 공방]


/* 토핑 사진 미리보기*/
$(".adminToping-table").on("mouseover", ".tooltipImgHover", function(){
	var hoverImg = $(this);

	hoverImg.next().css("display", "block");
});

$(".adminToping-table").on("mouseleave", ".tooltipImgHover", function(){
	var hoverImg = $(this);
	
	hoverImg.next().css("display", "none");

});


