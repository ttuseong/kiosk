var url = window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));


/* 카테고리 추가 및 수정 */
$("#adminCate-insert").on("click", ".adminCate-btn",function(){
	event.preventDefault();
	
	var title = $("input[name=title]").val();
	
	if(title == ""){
		alert("카테고리 이름을 입력하세요");
		return;
	}
	
	var form = $("#cateImgUpload")[0];
	var formData = new FormData(form);
	var cateNo = $(".input-group").data('hiddenCateNo');
	
	console.log(cateNo);
	
	if(cateNo == undefined){
		$.ajax({
			url : url+"/admin/adminCateUpdate",
			type: "post",
			data : {"categoryName": title},
			dataType : "json",
			success : function(result){
				console.log(result);
				/*성공시 처리해야 될 코드 작성 
				확인버튼 눌렀을시 타이틀이 중복되었을경우 alert창 뜨기*/
				
				if(result == 0) {
					alert("사용 가능합니다.");
					//중복되지 않았을 경우 리스트에 추가하기
					$.ajax({
						url : url+"/admin/adminCateAdd",
						type: "post",
						processData : false,
             			contentType : false,
						data : formData,
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
				}else {
					alert("중복된 타이틀입니다. 사용할 수 없습니다.");
					return;
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}		
		});
	} else{
		formData.append("cateNo", cateNo);
		$.ajax({
			url : url+"/admin/adminCateUpdate",
			type: "post",
			data : {"categoryName": title, 
					"categoryNo": cateNo},
			dataType : "json",
			success : function(result){
				console.log(result);
				/*성공시 처리해야 될 코드 작성 
				확인버튼 눌렀을시 타이틀이 중복되었을경우 alert창 뜨기*/
				
				if(result == 0) {
					alert("사용 가능합니다.");
						$.ajax({
					
						url : url+"/admin/titleClickUpdate",
								
						type: "post",
						processData : false,
             			contentType : false,
						data : formData,
						dataType : "json",
						success : function(categoryUpdate){
							console.log(categoryUpdate);
									
							if(categoryUpdate==1){
								console.log("완료");
								alert('수정이 완료되었습니다');
								window.location.reload();
							}else{
								console.log("완료");
								alert('수정에 실패하였습니다');
								}
						},	
						error : function(XHR, status, error) {
							console.error(status + " : " + error);
						}	
					});
				}else {
					alert("중복된 타이틀입니다. 사용할 수 없습니다.");
					return;
				}
				//중복되지 않았을 경우 리스트에 추가하기
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}	
		});
	}
});


function render(cateVo){
	
	var str = "";
	
	str += "		<tr data-no="+ cateVo.categoryNo+">";
	str += "			<td>"+ cateVo.categoryNo +"</td>";
	str += "			<td><a href='#' class='adminCate-title'>"+ cateVo.categoryName+"</a></td>";
	if(cateVo.publicYN==1){
		str += "			<td>공개</td>";
		str += "			<td></td>";
	}
	if(cateVo.publicYN==0){
		str += "			<td></td>";
		str += "			<td>비공개</td>";
	}
	str += "			<td><a href='#' class='adminCate-delete'>X</a></td>";
	str += "			<td>";
	str += "				<div class='adminnCate-tooltipPicture'>";
	str += "					<i class='far fa-image fa-lg tooltipImgHover'></i>";
	str += '					<span class="tooltip-img"><img alt="미리보기 이미지" src="'+url+'/kfc/${cateVo.categoryImg}"></span>';
	str += "				</div>";
	str += "			</td>";
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
	//categoryNo를 숨겨야하는이유 : 카테고리 넘버를 넣어주긴하지만 밖에보이면 안되서 태그에다 넣어줘야함
	//데이터의 값을 넣는법
	$(".input-group").data('hiddenCateNo', categoryNo);
	console.log($(".input-group").data('hiddenCateNo'));
	
	//값을 읽어왔고 확인버튼이 수정버튼으로 바뀌어야함
	
});


/*카테고리 x버튼 누르면 삭제하기 메뉴가 있으면 삭제가 되면 안된다.. --삭제기능..*/
$(".table-bordered").on("click", ".adminCate-delete", function(){
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

$("#tooltipTextHover").hover(function(){
	$(".tooltip-text").css("opacity", "1");
}, function(){
	$(".tooltip-text").css("opacity", "0");
});

$(".tooltipImgHover").hover(function(){
	var thisHover = $(this);
	
	$(".adminCate-delete").css("z-index", "0");
	$(".adminCate-title").css("z-index", "0");
	
	thisHover.next().css("opacity", "1");
}, function(){
	var thisHover = $(this);
	
	$(".adminCate-delete").css("z-index", "2");
	$(".adminCate-title").css("z-index", "2");
	
	thisHover.next().css("opacity", "0");
});

$("input[name=cateimgCheck]").change(function(){
	if ( $(this).prop('checked') ) { 
		$("#cate-menuImgInput").css("display", "inline-block");
	} else { 
		$("#cate-menuImgInput").css("display", "none");
	}
});

