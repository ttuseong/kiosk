var url= window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));
var i = 1;
var dessertNo;
var dessertPrice = 0;
var thisMenu;
var setName;
var setPrice;

var pg;
var categoryNo;
var params = location.search.substr(location.search.indexOf("?") + 1);

var selectMenu = {}

$(document).ready(function() {
	
	
	/*총주문내역이 쿠키에 있을 경우 cookieRender 호출*/
	if($.cookie("selectList") != null ) {
		cookieParsing();
	}
		
	if(params != ""){
		
		params = params.split("&");
		
		for (var z = 0; z < params.length; z++) {
			temp = params[z].split("=");
			if ([temp[0]] == "pg") { pg = temp[1]; }
			if ([temp[0]] == "categoryNo") { categoryNo = temp[1]; }
		}
	}else{
		categoryNo=4;
		pg = 1;
	}
	 
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
	$(".tab-"+categoryNo).addClass("active").show();
	$("#tab"+categoryNo).show();
	
	$("ul.tabs li").click(function() {
		cookieCheck();
		
		pg = 1;
		$("ul.tabs li").removeClass("active"); 
		$(this).addClass("active");
		
		categoryNo = $(this).children().eq(0).data("categoryno")
		
		$(".tab_content").hide(); 
		
		var activeTab = $(this).find("a").attr("href");
		$(activeTab).fadeIn();
		location.href=url+"/lotteria/order?categoryNo="+categoryNo+"&pg=1";
		return false;
	});
	
	/*모달 탭*/
	$(".modal-tab_content").hide(); 
	$("ul.modal-tabs li:first").addClass("active").show(); 
	$(".modal-tab_content:first").show(); 
	
	$("ul.modal-tabs li").click(function() {
		side(1);
		$("ul.modal-tabs li").removeClass("active"); 
		$(this).addClass("active");
		$(".modal-tab_content").hide(); 
		
		var activeTab = $(this).find("a").attr("href");
		$(activeTab).fadeIn(); 
		return false;
	});
	
	/*세트클릭했을경우*/
	$("#modalName-setMenu").on("click", function(){
		$("ul.modal-tabs li").removeClass("active");
		$(".modal-tab_content").hide(); 
		$("ul.modal-tabs li:first").addClass("active").show();
		$(".modal-tab_content:first").show();
		
		$("#setAndSingle").modal("hide");
		side(1);
	});
	
	/*세트메뉴에 디저트를 클릭했을때*/
	$("#modal-tab1").on("click",".set_dessert", function(){
		/*모달페이지 초기화*/
		$(".modalDotDiv").data("page",1);
		$("#modalCategory").data("category",28);
		
		menuNo = thisMenu.data("menuno");
		dessertNo = $(this).data("no");
		dessertPrice = $(this).children().eq(0).children().eq(0).children().eq(1).children().eq(1).text();
		
		$("ul.modal-tabs li:first").removeClass("active");
		$("ul.modal-tabs li:last").addClass("active").show();
		$("#modal-tab1").hide();
		
		side(1);
		$("#modal-tab2").addClass("active").show();
	});
	
	/*세트메뉴에 드링크를 클릭했을때*/
	$("#modal-tab2").on("click",".set_drink", function(){
		/*모달페이지 초기화*/
		$(".modalDotDiv").data("page",1);
		
		var drinkNo = $(this).data("no");
		var drinkPrice = $(this).children().eq(0).children().eq(0).children().eq(1).children().eq(1).text();
		
		$('#side').modal("hide");
		setMenu(menuNo,drinkNo, drinkPrice);
		side(1);
	});
	
	$("#toppingContents").on("click",".toppingDiv", function(){
		
		var thisTopping = $(this);
		var toppingNo = thisTopping.data("toppingno");
		var toppingPrice = thisTopping.children().eq(2).text();
		var toppingNumber = thisTopping.children().eq(2).next().next().next().text();
		var toppingTotalPrice = Number($(".toppingPrice").text());
		
		if(toppingNumber != ""){
			toppingNumber = Number(toppingNumber) + 1;
			thisTopping.children().eq(2).next().next().next().text(toppingNumber);
		}else{
			var str = "";
			str += "<div class='toppingCheck'></div>";
			str += "<div class='toppingCheckNumber'>1</div>";
			str += "<div class='toppingCansle'>X</div>";
			thisTopping.append(str);
		}
		
		if(toppingNumber == 0)toppingNumber =1;
		
		var total = Number(toppingPrice) + Number(toppingTotalPrice); 
		$(".toppingPrice").text(total);
	});

});

function cookieCheck(){
	/*총주문내역이 있을경우*/
	if(($(".tr-center").next().children().eq(0).text()) != ""){
		/*총주문내역 쿠키에 저장*/
		for(var v = 1; v < i; v++){
			
			var number = $(".menuNumber"+v).text();
			var price =$(".menuPrice"+v).children().eq(0).text();
			var menuName = $(".menuNameText"+v).text();
			var categoryNo = $(".menuPrice"+v).children().eq(0).data("categoryno");
			
			var menuList;
			var temp = {"categoryNo":categoryNo, "menuName":menuName, "number":number, "menuPrice":price};
			
			if(menuName != ""){
				if(v >= 2){
					menuList = menuList + JSON.stringify(temp);
					$.cookie("selectList",menuList);
					
				}else{
					$.cookie("selectList",JSON.stringify(temp));
					menuList = JSON.stringify(temp);
				}
			}
			
		}
	}else{
		$.removeCookie('selectList');
	}
}

/*사이드모달 페이지다운*/
function sidePageDown(){
	var modalPage = $(".modalDotDiv").data("page");
	
	if(modalPage>1){
		modalPage-=1;
		side(modalPage);
		$(".modalDotDiv").data("page",modalPage);
	}
}

/*사이드모달 페이지업*/
function sidePageUp(){
	var modalPage = $(".modalDotDiv").data("page");
	var pgCount=$(".modalPageDot").size();
	
	if(pgCount>modalPage){
		modalPage+=1;
		side(modalPage);
		$(".modalDotDiv").data("page",modalPage);
	}
}

/*세트메뉴 선택시 사이드메뉴 리스트*/
function side(pg){
	$("#side").modal();
	
	$.ajax({
		url : url+"/api/side",		
		type : "post",
		dataType : "json",
		contentType : "application/json",
		data : JSON.stringify(pg),
		success : function(side){
			$("#modal-tab1").empty();
			$("#modal-tab2").empty();
			$(".modalDotDiv").empty();
			
			var dessertPg = side.dessertPg.pageCount;
			var drinkPg = side.drinkPg.pageCount;
			
			for( var y = 0 ; y < side.dessert.length; y++){
				sideRender(side.dessert[y], 1);
			};
			for( var y = 0 ; y < side.drink.length; y++){
				sideRender(side.drink[y], 2);
			};
			
			if($("ul.modal-tabs li.active").text() == "세트_디저트"){
				for(var y =1; y <= side.dessertPg.page_Count; y++){
					$(".modalDotDiv").append("<div class='modalPageDot '></div>");
				}
			}else if($("ul.modal-tabs li.active").text() == "세트_드링크"){
				for(var y =1; y <= side.drinkPg.page_Count; y++){
					$(".modalDotDiv").append("<div class='modalPageDot '></div>");
				}
			}
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	}); 
}

function sideRender(side, sideType){
	
	var str = "";
	str += "<div class='modal-float margin_battom16px' data-no='"+side.menuNo+"'>";
		str += "<div class='width110px'>";
			str += "<div><img src='"+url+"/lotteria/"+side.menuImg+"' width='110px'</div>";
			str += "<div class='modal-center width110px'>";
				str += "<div class='modal-fontSize15px'>"+side.menuName+"</div>";
				str += "<p class='modal-red modal-fontSize15px'>"+side.menuPrice+"</p>";
			str += "</div>";
		str += "</div>";
	str += "</div>";
	
	if(sideType == 1){
		$("#modal-tab1").append(str);
		$("#modal-tab1").children().addClass("set_dessert");
	}else if(sideType == 2){
		$("#modal-tab2").append(str);
		$("#modal-tab2").children().addClass("set_drink");
	}
}


function cansle(){
	$(".toppingPrice").text("+0");
}

function toppingOk(numberI){
	var toppingPrice = Number($(".toppingPrice").text());
	var price = Number($(".menuPrice" + numberI).children().eq(0).text());
	var hap = toppingPrice + price;
	$(".menuPrice" + numberI).children().eq(0).text(hap);
	
	menuPrice = hap;
	result();
	
	$("#topping").modal("hide");
}

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
						$("#modalName-setPrice").text(selectMenu[0].menuPrice);
						$("#modalName-singlePrice").text(menuPrice);
						
						setNo = selectMenu[0].menuNo;
						setName = selectMenu[0].menuName;
						setPrice = selectMenu[0].menuPrice;
						
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
			var price = selectMenu[0].menuPrice +  Number(dessertPrice) + Number(drinkPrice);
			
			render(selectMenu[0].menuName, price);
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

/*선택한메뉴 총주문내역에 출력*/
function render(menuName, menuPrice){
	
		var str1="";
		
		str1 += "<input type='hidden' name='menuName"+i+"' value='"+menuName+"'>";
		str1 += "<input type='hidden' name='menuPrice"+i+"' value='"+menuPrice+"'>";
		str1 += "<input type='hidden' name='number"+i+"' value='1' id='ea"+i+"'>";
		str1 += "<div class='number"+i+" number'>1</div><div class='up-downDiv'>";
			str1+= "<button type='button'class='glyphicon glyphicon-menu-up btn-up' id='up' onClick='btnUp("+i +","+menuPrice +")'></button>";
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
					str2 += "<div class='number' data-categoryno='5'>"+menuPrice+"</div>";
					str2 += "<button type='button' onClick='toppingModal("+i+")'class='margin-right height25px'>토핑추가</button>";
					str2 += "<button type='button' onClick='trDelete("+i+")' class='height25px'>삭제</button>";
					
					$(".menuNameText"+i).text(menuName);
					$(".menuNumber"+i).append(str1);
					$(".menuPrice"+i).append(str2);
					
					result();
					i+=1;
				}else{
					var str2="";
					str2 += "<div class='number' data-categoryno='"+categoryNo+"' >"+menuPrice+"</div>";
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
	
	$("#ea"+i).val(menuNumber);
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
		
		$("#ea"+i).val(menuNumber);
		result();
		i-=1;
	};
};

function trDelete(i){
	/*var y = $(".tr-center").nextAll().size()+1;*/
	var classname = $(".table-center tr:last").children().eq(0).attr("class");
	classname = classname.substring(12);
	classname = Number(classname);
	var y = classname + 1;
	
	$(".menuNameText"+i).parents("tr").remove();
	var str = "";
	str += "<tr style='height: 27px;'>";
		str += "<td class='menuNameText"+y+"'></td>"; 
		str += "<td class='menuNumber"+y+"'></td>"; 
		str += "<td class='menuPrice"+y+"'>";
		str += "</td>";
	str += "</tr>";
	$(".table-center").append(str);
	
	result();
	i+=1;
}

function toppingModal(numberI){
	$(".toppingModalBtn").empty();
	$(".toppingPrice").text("+0");
	$(".toppingMenuName").text(setName);
	var menuNo = thisMenu.data("menuno");
	$("#toppingContents").empty();
	
	$(".toppingPrice")
	
	$.ajax({
		url : url+"/api/toppingList",		
		type : "post",
		contentType : "application/json",
		data : JSON.stringify(menuNo),
		dataType : "json",
		success : function(toppingList){
			for(var z = 0; z < toppingList.length; z++){
				str = "";
				str += "<div class='toppingDiv relative' data-toppingno='"+toppingList[z].toppingNo+"'>";
					str += "<img src='"+url+"/lotteria/"+toppingList[z].toppingImg+"'>";
					str += "<p>"+toppingList[z].toppingName+"</p>";
					str += "<p class='menuPrice'>"+ toppingList[z].toppingPrice+"</p>";
				str += "<div>";
				
				$("#toppingContents").append(str);
			}
			var str1 = "";
			str1 += "<button class='topping-btn' type='button' data-dismiss='modal' onClick='cansle();'>취소하기</button>";
			str1 += "<button class='topping-btn' type='button' onClick='toppingOk("+numberI+");'>완료하기</button>";
			
			$(".toppingModalBtn").append(str1);
			$('#topping').modal();
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	}); 
}

function pageDown(){
	if(pg > 1){
		cookieCheck();
		location.href=url+"/lotteria/order?categoryNo="+categoryNo+"&pg="+(Number(pg)-1);
	}
}

function pageUp(pageEnd){
	if(pg < pageEnd){
		cookieCheck();
		location.href=url+"/lotteria/order?categoryNo="+categoryNo+"&pg="+(Number(pg)+1);
	}
}

/*쿠키 데이터 파싱*/
function cookieParsing(){
	var menuList = ($.cookie("selectList")).split('}');//특정문자 삭제
	
	for(var ii = 0; ii < menuList.length-1; ii++){
		menuList[ii] = menuList[ii].replace("{","");//특정문자 치환
		//console.log(menuList[ii]);
		cookieRender(menuList[ii]);
	}
}

function cookieRender(menuList){
	var menu= menuList.split(",")
	
	
	for(var zz = 0; zz < menu.length; zz++){
		var n = [zz]; 
		n[zz]= menu[zz].indexOf(":");
		
		menu[zz] = menu[zz].substring(n[zz]);
		menu[zz] = menu[zz].replace(/"/g, "");
		menu[zz] = menu[zz].replace(":", "");
		
		console.log(menu[3]);
		var str1="";
		str1 += "<input type='hidden' name='menuName"+i+"' value='"+menu[1]+"'>";
		str1 += "<input type='hidden' name='menuPrice"+i+"' value='"+menu[3]+"'>";
		str1 += "<input type='hidden' name='number"+i+"' value='"+menu[2]+"' id='ea"+i+"'>";
		
		str1 += "<div class='number"+i+" number'>1</div><div class='up-downDiv'>"; 
		str1	+= "<button type='button'class='glyphicon glyphicon-menu-up btn-up' id='up' onClick='btnUp("+i +","+menu[3] +")'></button>";
		str1 += "<button type='button'class='glyphicon glyphicon-menu-down btn-down' id='down' onClick='btnDown("+i+","+menu[3]+")'></button>";
		str1 += "</div>";
	}
	
	if(menu[0] == 5){
		
		var str2="";
		str2 += "<div class='number' data-categoryno='5'>"+menu[3]+"</div>";
		str2 += "<button type='button' onClick='toppingModal("+i+")'class='margin-right height25px'>토핑추가</button>";
		str2 += "<button type='button' onClick='trDelete("+i+")' class='height25px'>삭제</button>";
		
		$(".menuNameText"+i).text(menu[1]);
		$(".menuNumber"+i).append(str1);
		$(".menuPrice"+i).append(str2);
		
		result();
		i+=1;
	}else{
		
		var str2="";
		str2 += "<div class='number' data-categoryno='"+categoryNo+"' >"+menu[3]+"</div>";
		str2 += "<button type='button' onClick='trDelete("+i+")'>삭제</button>";
		
		$(".menuNameText"+i).text(menu[1]);
		$(".menuNumber"+i).append(str1);
		$(".menuPrice"+i).append(str2);

		result();
		i+=1;
	}
}