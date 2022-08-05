<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>��� â</title>
<!-- �� ���������� �ʿ��� js, css �� ��ũ�ɾ� ��� -->
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
		display:flex; /* ������ �߾����� �ϱ����� flex ��� */
		align-items:center; /* ���Ʒ� ���� �߾����� */
		justify-content:center; /* �¿� ���� �߾����� */
	}
	.swiper-slide img {
		box-shadow:0 0 5px #555;
		max-width:100%; /* �̹��� �ִ�ʺ� ����, �����̵忡 �̹����� �������� �������� �ʿ� */
		/* �� �������� �ʿ��ؼ� �����߽��ϴ�. ��Ȳ������ �ٸ� �� �ֽ��ϴ�. */
	}
</style>
<body>
	<h1> ���ε尡 �Ϸ�! </h1>
	<label>���̵� : </label>
		<!-- value="${map.id }" : map���� �Ѿ�� �Ű����� ���� ǥ���� ���̴� -->
		<input type="text" name="id" value="${map.id }" readonly><br>
	<label>�̸�:</label>
		<input type="text" name="name" value="${map.name }" readonly><br>
	
	<div class="result-images swiper-container">
		<div class="swiper-wrapper">
			<!-- ���ε��� ���ϵ��� forEach���� �̿��� <img> �±׿� ǥ�� -->
			
				<c:forEach var="imageFileName" items="${ map.fileList}"  >
				<div class="swiper-slide">
					<img src="${pageContext.request.contextPath }/download?imageFileName=${imageFileName }">
			        <br><br><br>
			    </div>
			    </c:forEach>         
		    
	    </div>
	    
    	<div class="swiper-button-next"></div><!-- ���� ��ư (�����ʿ� �ִ� ��ư) -->
		<div class="swiper-button-prev"></div><!-- ���� ��ư -->
		
		<!-- ����¡ -->
		<div class="swiper-pagination"></div>
	    
	</div> <p> 
	
	<a href='${pageContext.request.contextPath }/form'> �ٽ� ���ε� �Ͻðڽ��ϱ�? </a> </p>
</body>
<script>
new Swiper('.swiper-container', {

	slidesPerView : 3, // ���ÿ� ������ �����̵� ����
	spaceBetween : 30, // �����̵尣 ����
	slidesPerGroup : 3, // �׷����� ���� ��, slidesPerView �� ���� ���� �����ϴ°� ����

	// �׷���� ���� ���� ��� ��ĭ���� �޿��
	// 3���� ���;� �Ǵµ� 1���� �ִٸ� 2���� ��ĭ���� ä���� 3���� ����
	loopFillGroupWithBlank : true,

	loop : true, // ���� �ݺ�

	pagination : { // ����¡
		el : '.swiper-pagination',
		clickable : true, // ����¡�� Ŭ���ϸ� �ش� �������� �̵�, �ʿ�� ������ ��� ��� �۵�
	},
	navigation : { // �׺���̼�
		nextEl : '.swiper-button-next', // ���� ��ư Ŭ������
		prevEl : '.swiper-button-prev', // �̹� ��ư Ŭ������
	},
});
</script>
</html>