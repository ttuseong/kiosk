var url= window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));

$(document).ready(function() {

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
});	


	
