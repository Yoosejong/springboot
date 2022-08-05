<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	const result = ${rvResult};
	console.log("result", result);
	
	if ( result > 0 ) {
		alert("리뷰 작성이 완료되었습니다.");
		location.href="/home";		
	}else {
		alert("등록에 실패했습니다ㅏ.");
	}
</script>
</head>
<body>

</body>
</html>