<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 메타태그 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- css -->
<link href="/kiosk/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">

<!-- 자바스크립트 -->
<script type="text/javascript" src="/kiosk/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="/kiosk/assets/bootstrap/js/bootstrap.js"></script>

<title>키오스크-롯데리아</title>
</head>
<body>
	<div class="container">
		<ul class="nav nav-tabs">
			<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#lunch">착한점심</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#recommend">추천메뉴</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#hamburger">햄버거</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#dessert">디저트/치킨</a></li>
		</ul>
		<div class="tab-content">
			<div class="tab-pane fade show active" id="lunch">
				<div class="row">
				<div class="col-md-6" style="height: 200px;">착한항우세트</div>
				<div class="col-md-6" style="height: 200px;">착한AZ버거세트</div>
			</div>
			<div class="row">
				<div class="col-md-6" style="height: 200px;">착한DOUBLEX2세트</div>
				<div class="col-md-6" style="height: 200px;">착한핫크리스피세트</div>
			</div>
			<div class="row">
				<div class="col-md-6" style="height: 200px;">착한데리세트</div>
				<div class="col-md-6"></div>
			</div>
			</div>
			
			<div class="tab-pane fade" id="recommend">
				<div class="row">
					<div class="col-md-6" style="height: 200px;">폴더버거 핫치킨</div>
					<div class="col-md-6" style="height: 200px;">폴더버거 비프</div>
				</div>
				<div class="row">
					<div class="col-md-6" style="height: 200px;">레몬에이드L</div>
					<div class="col-md-6" style="height: 200px;">아이스티</div>
				</div>
				<div class="row">
					<div class="col-md-6" style="height: 200px;">롯데리아찐氷</div>
					<div class="col-md-6" style="height: 200px;">만렙세트 (폴더버거비프)</div>
				</div>
				<div class="row">
					<div class="col-md-6" style="height: 200px;">만렙세트 (폴더버거핫치킨)</div>
					<div class="col-md-6" style="height: 200px;"></div>
				</div>
			</div>
			
			<div class="tab-pane fade" id="hamburger">
				<div class="row">
					<div class="col-md-6" style="height: 200px;">폴더버거 핫치킨</div>
					<div class="col-md-6" style="height: 200px;">폴더버거 비프</div>
				</div>
				<div class="row">
					<div class="col-md-6" style="height: 200px;">한우불고기</div>
					<div class="col-md-6" style="height: 200px;">AZ버거</div>
				</div>
				<div class="row">
					<div class="col-md-6" style="height: 200px;">모짜렐라라인더버거 베이컨</div>
					<div class="col-md-6" style="height: 200px;">와규 에디션Ⅱ</div>
				</div>
				<div class="row">
					<div class="col-md-6" style="height: 200px;">빅불</div>
					<div class="col-md-6" style="height: 200px;">리아미라클버거</div>
				</div>
			</div>
			
			<div class="tab-pane fade" id="hamburger">
				<div class="row">
					<div class="col-md-6" style="height: 200px;">치즈인더에그</div>
					<div class="col-md-6" style="height: 200px;">포테이토</div>
				</div>
				<div class="row">
					<div class="col-md-6" style="height: 200px;">포테이토(L)</div>
					<div class="col-md-6" style="height: 200px;">양념감자</div>
				</div>
				<div class="row">
					<div class="col-md-6" style="height: 200px;">치즈스틱</div>
					<div class="col-md-6" style="height: 200px;">롱치즈스틱</div>
				</div>
				<div class="row">
					<div class="col-md-6" style="height: 200px;">오징어링</div>
					<div class="col-md-6" style="height: 200px;">쉑쉑치킨</div>
				</div>				
			</div>
			
			
		</div>
	</div>	
</body>
</html>