var url= window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));
var i = 1;

$(document).ready(function() {

    var thisMenu;


	//메뉴 클릭
	$(".menu").on("click",function(){
		thisMenu = $(this);
		var menuNo = $(this).data("menuno");
		var menuName = $(this).children().eq(1).children().eq(0).text();
		var menuPrice = $(this).children().eq(1).children().eq(1).text();
		
		setOrSingle(menuNo, menuName,menuPrice);
		
	});	
	
	

	/*세트제품이 있지만 단품을 클릭했을 경우*/
	$("#modalName-onlyBurger").on("click", function(){
		$("#modalName-body").modal('hide');
		
		var menuName = thisMenu.children().eq(1).children().eq(0).text();
		var menuPrice = thisMenu.children().eq(1).children().eq(1).text();
		
		$(".menuNameText"+i).text(menuName);
		$(".menuNumber"+i).text("1");
		$(".menuPrice"+i).text(menuPrice);
		
		i+=1;
	})
	
	
	
	
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
	
	/*세트클릭했을경우*/
	$("#modalName-setMenu").on("click", function(){
		$("#setAndSingle").modal('hide');
		$("#topping").modal();
		
	});
	
	
	
});	






function setOrSingle(menuNo, menuName, menuPrice){
	/*세트제품이 있는지 확인*/
	$.ajax({
		url : url+"/api/setOrSingle",		
		type : "post",  	
		dataType : "json", 
		contentType : "application/json",
		data : JSON.stringify(menuNo),
		success : function(count){
			if(count <= 0){
				/*단품제품일경우*/
				$(".menuNameText"+i).text(menuName);
				$(".menuNumber"+i).text("1");
				$(".menuPrice"+i).text(menuPrice);
				
				i+=1;
				
			}else{

				/*셋트제품이 있을경우*/
				$.ajax({
					url : url+"/api/selectMenu",		
					type : "post",
					contentType : "application/json",
					data : JSON.stringify(menuNo),
					dataType : "json",
					success : function(selectMenu){
						console.log(selectMenu)
						console.log(i);
						$("#modalName-setPrice").text(selectMenu[0].setPrice);
						$("#modalName-singlePrice").text(menuPrice);
						
						
						$("#setAndSingle").modal();
					},
					error : function(XHR, status, error) {
						console.error(status + " : " + error);
					}
				}); 
				
			}
			
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
}


