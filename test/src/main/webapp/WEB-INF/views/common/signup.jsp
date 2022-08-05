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
    <title>SB Admin 2 - Register</title>
   	<!-- Custom fonts for this template-->
    <link href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css" />" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="<c:url value="/resources/css/sb-admin-2.min.css" />" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
   	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<script>
function jsSignUpValidate() {
	
	var form = $("form[name=sendform]");
	
	var String = form.serialize();
	
	if(form.find("input[name=user_id]").val() == null || form.find("input[name=user_id]").val() == ''){
		alert("아이디를 입력하세요.");
		form.find("input[name=user_id]").focus();
		return false;
	} else if( form.find("input[name=user_pwd]").val() == null || form.find("input[name=user_pwd]").val() == '' ) {
		alert("비밀번호를 입력하세요.");
		form.find("input[name=user_pwd]").focus();
		return false;
	}else if( form.find("input[name=user_pwd2]").val() == null || form.find("input[name=user_pwd2]").val() == '' ) {
		alert("비밀번호 확인을 입력하세요.");
		form.find("input[name=user_pwd2]").focus();
		return false;
	}else if( form.find("input[name=user_name]").val() == null || form.find("input[name=user_name]").val() == '' ) {
		alert("이름을 입력하세요.");
		form.find("input[name=user_name]").focus();
		return false;
	}else if( form.find("input[name=user_phone]").val() == null || form.find("input[name=user_phone]").val() == '' ) {
		alert("연락처를 입력하세요.");
		form.find("input[name=user_phone]").focus();
		return false;
	} else {
		alert("회원가입이 완료되었습니다.");
		$("#sendForm").submit();
	}
}

</script>
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
                                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
                            </div>
                            <form class="user" action="/signUpOk" name="sendform" method="post" id="sendForm">
                                <div class="form-group row">
                                    <div class="col-sm-10 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" id="user_id" name="user_id" placeholder="아이디"/>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <input type="password" class="form-control form-control-user" id="user_pwd" name="user_pwd" placeholder="비밀번호">
                                </div>
                                
                                <div class="form-group">
                                    <input type="password" class="form-control form-control-user" id="user_pwd2" name="user_pwd2" placeholder="비밀번호 확인">
                                </div>
                                
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" id="user_name" name="user_name" placeholder="이름">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user" id="user_phone" name="user_phone" placeholder="연락처">
                                    </div>
                                </div>
                                
                                <input type="button" class="btn btn-primary btn-user btn-block" onclick="javascript:jsSignUpValidate();" value="회원가입"/>
                                
                                <hr>
                            </form>
                            <hr>
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