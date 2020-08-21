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
		$("#side").modal();
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
		
		$('#side').modal("hide");
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
};

function setMenu(menuNo, drinkNo, drinkPrice){
	$.ajax({
		url : url+"/api/selectMenu",		
		type : "post",
		contentType : "application/json",
		data : JSON.stringify(menuNo),
		dataType : "json",
		success : function(selectMenu){
			var price = selectMenu[0].setPrice +  Number(dessertPrice) + Number(drinkPrice);
			
			render(selectMenu[0].setName, price);
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	}); 
};

/*페이지하단에 선택한 총갯수와 총가격 출력*/
function result(){
	
	var number = 0;
	var price = 0;
	
	for(var v = 1; v <=i; v++){
		number += Number($(".menuNumber"+v).children().eq(0).text());
		price += Number($(".menuPrice"+v).children().eq(0).text());
	}
	
	$("#maximum").text(number);
	$("#resultPrice").text(price);
	
};

/*세트매뉴의 디저트와 드링크가 있지만 선택하지 않고 그냥 선택완료번튼을 클릭할경우*/
function dessertAndDrink(){
	
	$('#side').modal("hide");
	render(setName, setPrice);
};


function render(menuName, menuPrice){
	
		var str1="";
		str1 += "<div class='number"+i+" number'>1</div><div class='up-downDiv'>"; 
		str1	+= "<button type='button'class='glyphicon glyphicon-menu-up btn-up' id='up' onClick='btnUp("+i +","+menuPrice +")'></button>";
		str1 += "<button type='button'class='glyphicon glyphicon-menu-down btn-down' id='down' onClick='btnDown("+i+","+menuPrice+")'></button>";
		str1 += "</div>";
		
		var selectMenuNo = Number(thisMenu.data("menuno"));
		
		$.ajax({
			url : url+"/api/menuCategoryNo",		
			type : "post",
			contentType : "application/json",
			data : JSON.stringify(selectMenuNo),
			dataType : "json",
			success : function(categoryNo){
				
				if(categoryNo == 5){
					var str2="";
					str2 += "<div class='number'>"+menuPrice+"</div>";
					str2 += "<button type='button' onClick='toppingModal()'class='margin-right'>토핑추가</button>";
					str2 += "<button type='button' onClick='trDelete("+i+")'>삭제</button>";
					
					$(".menuNameText"+i).text(menuName);
					$(".menuNumber"+i).append(str1);
					$(".menuPrice"+i).append(str2);
					
					result();
					i+=1;
				}else{
					var str2="";
					str2 += "<div class='number'>"+menuPrice+"</div>";
					str2 += "<button type='button' onClick='trDelete("+i+")'>삭제</button>";
					
					$(".menuNameText"+i).text(menuName);
					$(".menuNumber"+i).append(str1);
					$(".menuPrice"+i).append(str2);
					
					result();
					i+=1;
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		}); 
		
		
		
};

function btnUp(i, menuPrice){
	var menuNumber = Number($(".number"+i).text());
	menuNumber +=1;
	$(".number"+i).text(menuNumber);
	
	 var upPrice = menuPrice * Number($(".menuNumber"+i).text());
	 $(".menuPrice"+i ).children().eq(0).text(upPrice);
	
	result();
	i+=1;
};

function btnDown(i, menuPrice){
	var menuNumber = Number($(".number"+i).text());
	
	if(menuNumber > 1){
		menuNumber -=1;
		$(".number"+i).text(menuNumber);
		
		var downPrice = Number(menuPrice)*Number(menuNumber);
		$(".menuPrice"+i ).children().eq(0).text(downPrice);
		
		result();
		i-=1;
	};
};

function trDelete(i){
	var y = $(".tr-center").nextAll().size()+1;
	
	$(".menuNameText"+i).empty();
	$(".menuNumber"+i).empty();
	$(".menuPrice"+i).empty();
	
	var str = "";
	str += "<tr>";
		str += "<td class='menuNameText"+y+"'>&nbsp;</td>"; 
		str += "<td class='menuNumber"+y+"'>&nbsp;</td>"; 
		str += "<td class='menuPrice"+y+"'>";
		str += "</td>";
	str += "</tr>";
	$(".table-center").append(str);
	
	result();
	i+=1;
}

function toppingModal(){
	
	
	
	$(".toppingMenuName").text(setName);
	$('#topping').modal();
}
