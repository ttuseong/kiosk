var url= window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));
var i = 1;
var dessertNo;
var dessertPrice = 0;
var thisMenu;
var setName;
var setPrice;

$(document).ready(function() {

    var menuNo;

	//메뉴 클릭
	$(".menu").on("click",function(){
		thisMenu = $(this);
		menuNo = thisMenu.data("menuno");
		var menuName = thisMenu.children().eq(1).children().eq(0).text();
		var menuPrice = thisMenu.children().eq(1).children().eq(1).text();
		
		setOrSingle(menuNo, menuName,menuPrice);
		
	});	
	
	

	/*세트제품이 있지만 단품을 클릭했을 경우*/
	$("#modalName-onlyBurger").on("click", function(){
		$("#modalName-body").modal('hide');
		
		var menuName = thisMenu.children().eq(1).children().eq(0).text();
		var menuPrice = thisMenu.children().eq(1).children().eq(1).text();
		
		render(menuName, menuPrice);
		
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
		$("#setAndSingle").modal("hide");
		$("#topping").modal();
	});
	
	
	
	/*세트메뉴에 디저트를 클릭했을때*/
	$(".set_dessert").on("click", function(){
		menuNo = thisMenu.data("menuno");
		dessertNo = $(this).data("dessertmenuno");
		dessertPrice = $(this).children().eq(0).children().eq(1).children().eq(1).text();
		
		$("ul.modal-tabs li:first").removeClass("active");
		$("ul.modal-tabs li:last").addClass("active").show();
		$("#modal-tab1").hide();
		$("#modal-tab2").addClass("active").show(); 
	});
	
	/*세트메뉴에 드링크를 클릭했을때*/
	$(".set_drink").on("click", function(){
		var drinkNo = $(this).data("drinkmenuno");
		var drinkPrice = $(this).children().eq(0).children().eq(1).children().eq(1).text();
		
		$('#topping').modal("hide");
		setMenu(menuNo,drinkNo, drinkPrice);
	})
	
	
	
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
				render(menuName, menuPrice);
				
			}else{

				/*셋트제품이 있을경우*/
				$.ajax({
					url : url+"/api/selectMenu",		
					type : "post",
					contentType : "application/json",
					data : JSON.stringify(menuNo),
					dataType : "json",
					success : function(selectMenu){
						$("#modalName-setPrice").text(selectMenu[0].setPrice);
						$("#modalName-singlePrice").text(menuPrice);
						
						setNo = selectMenu[0].setNo;
						setName = selectMenu[0].setName;
						setPrice = selectMenu[0].setPrice;
						
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

function setMenu(menuNo, drinkNo, drinkPrice){
	$.ajax({
		url : url+"/api/selectMenu",		
		type : "post",
		contentType : "application/json",
		data : JSON.stringify(menuNo),
		dataType : "json",
		success : function(selectMenu){
			$(".menuNameText"+i).text(selectMenu[0].setName);
			$(".menuNumber"+i).text("1");
			var price = selectMenu[0].setPrice +  Number(dessertPrice) + Number(drinkPrice);
			$(".menuPrice"+i).text(price);
			
			i+=1;
			result();
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	}); 
}

/*페이지하단에 선택한 총갯수와 총가격 출력*/
function result(){
	
	var number = 0;
	var price = 0;
	
	for(var v = 1; v <=i; v++){
		number += Number($(".menuNumber"+v).text());
		price += Number($(".menuPrice"+v).text());
	}
	
	$("#maximum").text(number);
	$("#resultPrice").text(price);
};

/*세트매뉴의 디저트와 드링크가 있지만 선택하지 않고 그냥 선택완료번튼을 클릭할경우*/
function dessertAndDrink(){
	
	$('#topping').modal("hide");
	render(setName, setPrice);
}


function render(menuName, menuPrice){
	$(".menuNameText"+i).text(menuName);
	$(".menuNumber"+i).text("1");
	$(".menuPrice"+i).text(menuPrice);
	
	i+=1;
	result();
}
