<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>키오스크 회원가입</title>

  <!-- Custom fonts for this template-->
  <link href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="${pageContext.request.contextPath}/assets/css/admin/sb-admin-2.min.css" rel="stylesheet">
  
  <!-- 자바스크립트 -->
  <script type="text/javascript" src="/kiosk/assets/js/jquery/jquery-1.12.4.js"></script>
  <script type="text/javascript" src="/kiosk/assets/js/users/register.js"></script>

</head>

<body class="bg-gradient-primary">

  <div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">회원가입</h1>
              </div>
              <form class="user" action="${pageContext.request.contextPath}/users/register" method ="get">
                <div class="form-group row">
                	<div class="col-sm-12">
                    	<input type="text" class="form-control form-control-user" id="exampleFirstName" placeholder="아이디를 입력하세요"name="userId">
                	</div>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="비밀번호를 입력하세요"name="userPW">
                </div>
                <button type = "submit" class = "btn btn-primary btn-user btn-block" style="color:white;"> 회원가입하기 </button>
               
              </form>
              <hr>
              <div class="text-center">
                <a class="small" href="${pageContext.request.contextPath}/users/loginForm">이미 회원이십니까? 로그인 하기</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="${pageContext.request.contextPath}/assets/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="${pageContext.request.contextPath}/assets/js/admin/sb-admin-2.min.js"></script>

</body>

</html>
