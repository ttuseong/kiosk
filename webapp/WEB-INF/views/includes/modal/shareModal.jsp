<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link
	href="${pageContext.request.contextPath}/assets/css/share/modal.css"
	rel="stylesheet" type="text/css">
	
<!-- id="modalName(임의지정)" => 모달 사용 용도에 따라 아이디를 부여해주세요! -->
<div class="modal" id="surveyModal">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body">
	    		<div class="menu-container">
	    			<div class="shareContent">
	    				<p>휴대전화</p>
	    				<input type="text" class="sharePhoneNumber">
	    				<div>-</div>
	    				<input type="text" class="sharePhoneNumber">
	    				<div>-</div>
	    				<input type="text" class="sharePhoneNumber">
	    			</div>
	    			<div class="shareContent">	
	    				<p>지역</p>
	    				<div class="dropdown">
							<button class="btn btn-default dropdown-toggle ShareDropdown" type="button"
								data-toggle="dropdown" aria-expanded="true" id="provinceBtn">
								<div>
									<p id="provinceText">시/도</p>
									<span class="caret"></span>
								</div>
							</button>
							<ul class="dropdown-menu" id="province" role="menu" aria-labelledby="test">
								
							</ul>
						</div>
						<div class="dropdown">
							<button class="btn btn-default dropdown-toggle ShareDropdown" type="button"
								data-toggle="dropdown" aria-expanded="true">
								<div>
									<p id="cityText">시/군/구</p>
									<span class="caret"></span>
								</div> 
							</button>
							<ul class="dropdown-menu" id="city" role="menu" aria-labelledby="test">
								<li role="presentation"><a role="menuitem" tabindex="-1" href="#"> 시/군/구</a></li>
							</ul>
						</div>
	    			</div>
	    			<div class="shareContent">
	    				<p>나이</p>
	    				<label>10대</label>
	    				<input type="radio" name="age">
	    				<label>20대</label>
	    				<input type="radio" name="age">
	    				<label>30대</label>
	    				<input type="radio" name="age">
	    				<label>40대</label>
	    				<input type="radio" name="age">
	    				<label>50대</label>
	    				<input type="radio" name="age">
	    			</div>
	    			<div class="shareContent">
	    				<p>성별</p>
	    				<label>남자</label>
	    				<input type="radio" name="gender">
	    				<label>여자</label>
	    				<input type="radio" name="gender">
	    			</div>
	    			<div class="shareContent">
	    				<p>키오스크 사용이 어떠셨나요</p>
	    				<div>
	    					<label>매우 쉬움</label>
		    				<input type="radio" name="level" class="shareLevel">
		    				<label>쉬움</label>
		    				<input type="radio" name="level" class="shareLevel">
		    				<label>보통</label>
		    				<input type="radio" name="level" class="shareLevel">
		    				<label>어려움</label>
		    				<input type="radio" name="level" class="shareLevel">
		    				<label>매우 어려움</label>
		    				<input type="radio" name="level" class="shareLevel">
	    				</div>
	    			</div>
            	</div>
			</div>
	      	<div class="modal-footer">
	        	<button type="button" class="btn btnComplete" id="shareModalCompleated">완료</button>
	    	</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/share/shareModal.js"></script>
