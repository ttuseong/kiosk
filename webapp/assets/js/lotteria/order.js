var url;
$(document).ready(function() {
	url=getUrl();
	list();
});	



function getUrl(){
	return window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));
}

function list(){
	$.ajax({
		url : url+"/api/list",
		type : "post",
		dataType : "json",
		success : function(list){

			for(var i = (list.length-1); i >= 0; i--){
				render(list[i]);
			}
			
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
};

function render(vo){
	var str="";
	
	str += "<div id='tab1' class='tab_content'>";
	str += "<div class='menu' data-setNo='"+vo.setNo+"'>";
	str += "<div class='menu-img'>";
	str += "<img src='"+url+"/upload/"+vo.setImg+"' width='100%'>";
	str += "</div>";
	str += "<div class='menu-text'>";
	str += "<div>"+ vo.setName+"</div>";
	str += "<div class='menu-price'>"+vo.setPrice+"</div>";
	str += "</div>";
	str += "</div>";
	
	$("#tab_menu").append(str);
}



	
$(".menu").on("click",function(){
	var no = $(this).data("no");
	console.log(no);
	$("#setAndSingle").modal();
});


/*페이지 탭*/
$(".tab_content").hide(); 
$("ul.tabs li:first").addClass("active").show();
$(".tab_content:first").show();

$("ul.tabs li").click(function() {

	$("ul.tabs li").removeClass("active"); 
	$(this).addClass("active"); 
	$(".tab_content").hide(); 

	var activeTab = $(this).find("a").attr("href");
	$(activeTab).fadeIn();
	return false;
});

/*모달 탭*/
$(".modal-tab_content").hide(); 
$("ul.modal-tabs li:first").addClass("active").show(); 
$(".modal-tab_content:first").show(); 

$("ul.modal-tabs li").click(function() {

	$("ul.modal-tabs li").removeClass("active"); 
	$(this).addClass("active");
	$(".modal-tab_content").hide(); 

	var activeTab = $(this).find("a").attr("href");
	$(activeTab).fadeIn(); 
	return false;
});


$("#modalName-setMenu").on("click", function(){
	$("#setAndSingle").modal('hide');
	$("#topping").modal();
});

$("#modalName-onlyBurger").on("click", function(){
	$("#modalName-body").modal('hide');
})
