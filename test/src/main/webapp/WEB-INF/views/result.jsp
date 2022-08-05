<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>결과 창</title>
<!-- 이 예제에서는 필요한 js, css 를 링크걸어 사용 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
</head>
<style>
	.swiper-container {
		height:420px;
		border:5px solid silver;
		border-radius:7px;
		box-shadow:0 0 20px #ccc inset;
	}
	.swiper-slide {
		text-align:center;
		display:flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
		align-items:center; /* 위아래 기준 중앙정렬 */
		justify-content:center; /* 좌우 기준 중앙정렬 */
	}
	.swiper-slide img {
		box-shadow:0 0 5px #555;
		max-width:100%; /* 이미지 최대너비를 제한, 슬라이드에 이미지가 여러개가 보여질때 필요 */
		/* 이 예제에서 필요해서 설정했습니다. 상황에따라 다를 수 있습니다. */
	}
</style>
<body>
	<h1> 업로드가 완료! </h1>
	<label>아이디 : </label>
		<!-- value="${map.id }" : map으로 넘어온 매개변수 값을 표시할 것이다 -->
		<input type="text" name="id" value="${map.id }" readonly><br>
	<label>이름:</label>
		<input type="text" name="name" value="${map.name }" readonly><br>
	
	<div class="result-images swiper-container">
		<div class="swiper-wrapper">
			<!-- 업로드한 파일들을 forEach문을 이용해 <img> 태그에 표시 -->
			
				<c:forEach var="imageFileName" items="${ map.fileList}"  >
				<div class="swiper-slide">
					<img src="${pageContext.request.contextPath }/download?imageFileName=${imageFileName }">
			        <br><br><br>
			    </div>
			    </c:forEach>         
		    
	    </div>
	    
    	<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
		<div class="swiper-button-prev"></div><!-- 이전 버튼 -->
		
		<!-- 페이징 -->
		<div class="swiper-pagination"></div>
	    
	</div> <p> 
	
	<a href='${pageContext.request.contextPath }/form'> 다시 업로드 하시겠습니까? </a> </p>
</body>
<script>
new Swiper('.swiper-container', {

	slidesPerView : 3, // 동시에 보여줄 슬라이드 갯수
	spaceBetween : 30, // 슬라이드간 간격
	slidesPerGroup : 3, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음

	// 그룹수가 맞지 않을 경우 빈칸으로 메우기
	// 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
	loopFillGroupWithBlank : true,

	loop : true, // 무한 반복

	pagination : { // 페이징
		el : '.swiper-pagination',
		clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
	},
	navigation : { // 네비게이션
		nextEl : '.swiper-button-next', // 다음 버튼 클래스명
		prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
	},
});
</script>
</html>