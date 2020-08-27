var url = window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));


/*카테고리 x버튼 누르면 삭제하기 메뉴가 있으면 삭제가 되면 안된다.. --삭제기능..*/
$(".adminCate-delete").on("click", function(){
	console.log("클릭");
	var cateDelete = $(this);
	
	console.log(cateDelete);
	var categoryNo = cateDelete.parent().parent().data("no");
	
	console.log(cateDelete.parent().parent());
	console.log(categoryNo);
	/*var categoryNo = $("#");*/
	
	if(confirm("                    카테고리 안에 메뉴가 있을 수 있습니다 \n                    그래도 정말로 삭제하시겠습니까?") == true){
		$.ajax({
			url : url+"/admin/adminCateDel",
			type: "post",
			data : {categoryNo : categoryNo},
			dataType : "json",
			success : function(cnt){
				console.log(cnt);
				/*성공시 처리해야 될 코드 작성 */
				if(cnt>1){
					console.log("찐")
				}
				else{
					console.log("넌 그냥 삭제");
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}	
		});
	}else{
		return false;
	}

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
$(".adminCate-btn").on("click", function(){
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
	str += "			<td><a href='#'>"+ cateVo.categoryName+"</a></td>";
	if(cateVo.publicYN==1){
		str += "			<td>공개</td>";
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


/*카테고리 x버튼 누르면 삭제하기 메뉴가 있으면 삭제가 되면 안된다..*/

