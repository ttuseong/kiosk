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
			<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#qwe">착한점심</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#asd">추천메뉴</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#zxc">햄버거</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#zxc">디저트/치킨</a></li>
		</ul>
		<div class="tab-content">
			<div class="tab-pane fade show active" id="qwe">
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
				
				<div class="tab-pane fade" id="asd">
				<p>Nunc vitae turpis id nibh sodales commodo et non augue. Proin
					fringilla ex nunc. Integer tincidunt risus ut facilisis tristique.</p>
			</div>
			<div class="tab-pane fade" id="zxc">
				<p>Curabitur dignissim quis nunc vitae laoreet. Etiam ut mattis
					leo, vel fermentum tellus. Sed sagittis rhoncus venenatis. Quisque
					commodo consectetur faucibus. Aenean eget ultricies justo.</p>
			</div>
		</div>
	</div>
</body>
</html>