<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>SB Admin 2 - Login</title>
    <!-- Custom fonts for this template-->
    <link href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css" />" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="<c:url value="/resources/css/sb-admin-2.min.css" />" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>

<script>
$(function() {
	$("#loginBtn").click(function () {
			var userId = $("#user_id").val();
			var userPwd = $("#user_pwd").val();
			
			if (userId == "") {
				alert("아이디를 입력하세요.");
				$("#user_id").focus(); 
				return;
			}
			if (userPwd == "") {
				alert("비밀번호를 입력하세요.");
				$("#user_pwd").focus();
				return;
			}
			
			// 폼 내부의 데이터를 전송할 주소
			document.sendform.action = "/loginCheck"
			document.sendform.submit();
			
	});
})
</script>

<body class="bg-gradient-primary">
    <div class="container">
        <!-- Outer Row -->
        <div class="row justify-content-center">
            <div class="col-xl-10 col-lg-12 col-md-9">
                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                                    </div>
                                    <form class="user" name="sendform" method="POST" onSubmit="return false;">
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user" id="user_id" name="user_id" placeholder="아이디를 입력해주세요">
                                        </div>
                                        
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user" id="user_pwd" name="user_pwd" placeholder="비밀번호를 입력해주세요">
                                        </div>
                                        
                                        <button type="button" class="btn btn-primary btn-user btn-block" id="loginBtn">
                                            Login
                                        </button>
                                        
                                    </form>
                                    <div class="text-center">
                                        <a class="small" href="/signup">회원가입</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

    <!-- Core plugin JavaScript-->
    <script src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js"/>"></script>
    <!-- Custom scripts for all pages-->
    <script src="<c:url value="/resources/js/sb-admin-2.min.js"/>"></script>

</body>

</html>