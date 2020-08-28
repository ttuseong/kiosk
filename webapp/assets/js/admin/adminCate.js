var url = window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));

/*카테고리 x버튼 누르면 삭제하기 메뉴가 있으면 삭제가 되면 안된다.. --삭제기능..*/
$(".adminCate-delete").on("click", function(){
	event.preventDefault();
	console.log("클릭");
	var cateDelete = $(this);
	
	console.log(cateDelete);
	var categoryNo = cateDelete.parent().parent().data("no"); //data값 no를 가져온 이유는 최상위 값만 삭제하면 그 안에있던 데이터도 같이 삭제되기때문에(ex폴더)
	console.log($('[data-no=' + categoryNo + ']'));
	console.log(cateDelete.parent().parent());
	console.log(categoryNo);
	/*var categoryNo = $("#");*/
	
	$.ajax({
		url : url+"/admin/adminCateDel",
		type: "post",
		data : {categoryNo : categoryNo},
		dataType : "json",
		success : function(cnt){
			console.log(cnt);
			/*성공시 처리해야 될 코드 작성 */
			if(cnt==0){
				console.log("실패");
				alert('카테고리에 값이 남아있습니다.');
			}
			else{
				console.log("넌 그냥 삭제");
				$('[data-no=' + categoryNo + ']').remove();
			}
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}	
	});

});



/* 카테고리 추가 및 수정 */
$("#btnCateNameCheck").on("click", function(){
	event.preventDefault();
	console.log("클릭");
	console.log(url);
	var adminCateName = $(".adminCate-addCateForm").val();
	console.log(adminCateName);
	
	var adminCateInfo ={
			cateName:adminCateName
	};
	
	$.ajax({
		
		url : url+"/admin/adminCateUpdate",
		type: "post",
		data : adminCateInfo,
		
		dataType : "json",
		success : function(result){
			console.log(result);
			/*성공시 처리해야 될 코드 작성 */
			if(result == true) {
				alert("사용가능합니다")
			}else {
				alert("중복된 이름입니다.")
			}
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
		
	});
});

/* 확인 버튼 누르면 카테고리 목록에 추가*/
$(".adminCate-submitBtn").on("click", ".adminCate-btn",function(){
	event.preventDefault();
	console.log("확인클릭");
	
	var cateTitle = $(".adminCate-addCateForm").val();
	console.log(cateTitle);
	
	var adminCatePublicYn = $('input[name=cate-openStatus]:checked').val();
	console.log(adminCatePublicYn);
	
	var cateNameAndPublicYn = {
			categoryName:cateTitle,
			publicYN: adminCatePublicYn
	};
	
	
	$.ajax({
			
			url : url+"/admin/adminCateAdd",
			
			type: "post",
			data : cateNameAndPublicYn,
			dataType : "json",
			success : function(cateVo){
				console.log(cateVo);
				render(cateVo);

				for(var i=0; i<cateVo.length; i++){
					render(cateVo[i]);
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
			
		});
	
});

function render(cateVo){
	
	var str = "";
	
	str += "		<tr data-no="+ cateVo.categoryNo+">";
	str += "			<td>"+ cateVo.categoryNo +"</td>";
	str += "			<td><a href='#' class='adminCate-title'>"+ cateVo.categoryName+"</a></td>";
	if(cateVo.publicYN==1){
		str += "	<td>공개</td>";
		str += "			<td></td>";
	}
	if(cateVo.publicYN==0){
		str += "			<td></td>";
		str += "			<td>비공개</td>";
	}
	str += "			<td><a href='#' class='adminCate-delete'>X</a></td>";
	str +="			</tr>";
	
	$("tbody").prepend(str);
}


/*타이틀을 누르면 수정가능한 인풋박스 띄우기*/
$(".adminCate-title").on("click", function(){
	event.preventDefault();
	console.log("타이틀 클릭");
	var cateTitle = $(this);
	console.log(cateTitle.text());
	
	//확인버튼 --> 수정버튼으로 변경
	$(".text").text("수정");
	//수정버튼 추가
    $(".text").addClass("adminCate-btnUpdate");
    //확인버튼 삭제
    $(".text").removeClass("adminCate-btn") ;
   

	출처: https://sharphail.tistory.com/45 [샤해의 포스트잇]
	var categoryNo = cateTitle.parent().parent().data("no"); //부모값 가져오기
	console.log(categoryNo);
	var categoryPublicY = cateTitle.parent().next().text().trim(); //형제가져오기 text=val trim=공백제거
	console.log(categoryPublicY);
	/*	console.log(cateTitle.parent().next().text());
	console.log(cateTitle.parent().next());*/
	if(categoryPublicY==""){
		categoryPublicY = cateTitle.parent().next().next().text().trim(); //형제 중에 다른 형제가져요기
	}

	
	//값을 넣어줄거야
	$(".adminCate-addCateForm").val(cateTitle.text());
	//라디오 체크값 넣어주기
	
	if(categoryPublicY == "공개"){
		$('#cate-public').prop("checked", true).change();
	}else{
		console.log("치킨사라져");
		$('#cate-private').prop("checked", true).change();
	}
	//categoryNo를 숨겨야하는이유 : 카테고리 넘버를 넣어주긴하지만 밖에보이면 안되서태그에다 넣어줘야함
	//데이터의 값을 넣는법
	$(".input-group").data('noe', categoryNo);
	console.log($(".input-group").data('noe'));
	
	//값을 읽어왔고 확인버튼이 수정버튼으로 바뀌어야함
	
});

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!List ajax로 변경시 수정작업해야해
//원래는 .adminCate-btnUpdate에 클릭 기능을 줬으나 먹지 않아서 그 위에있는 부모에게 기능을 줬다 
$(".adminCate-submitBtn").on("click", ".adminCate-btnUpdate",function(){
	console.log("수정버튼 클릭");
	
	//변경된 값을 가져올거야
	var cateTitleChange = $(".adminCate-addCateForm").val();
	console.log(cateTitleChange);
	
	var  publicYnChange = $('input:radio[name="cate-openStatus"]:checked').val();
	console.log(publicYnChange);

	//숨겨진 카테고리 값 데이터로 받아오기 

	
});

