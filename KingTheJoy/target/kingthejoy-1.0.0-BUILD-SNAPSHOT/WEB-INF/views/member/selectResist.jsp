<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/common.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/selectResist.css"/>">
<title>회원 선택창</title>
</head>
<body>
	<div class="home-img"><img src="<c:url value="/resources/img/home.png"/>" alt="homeLogo"></div>
	<div class="row">
			<div class="home-div col-3">
				<figure class="snip1200">
					<img src="<c:url value="/resources/img/wonjang.png"/>">
					<figcaption>
						<p>클릭하시면 원장님 전용 회원가입창이 열립니다.</p>
						<div class="heading">
							<h2><span> 원장님이신가요?</span></h2>
						</div>
					</figcaption>
					<a href="resistForm.do?member_role=1"></a>
				</figure>
			</div>
			
		<div class="home-div col-3">
			<figure class="snip1200">
				<img src="<c:url value="/resources/img/teacher.png"/>">
				<figcaption>
					<p>클릭하시면 선생님 전용 회원가입창이 열립니다.</p>
					<div class="heading">
						<h2><span>선생님이신가요?</span></h2>
					</div>
				</figcaption>
				<a href="resistForm.do?member_role=2"></a>
			</figure>
		</div>
		
		<div class="home-div col-3">
			<figure class="snip1200">
				<img src="<c:url value="/resources/img/parent.png"/>">
				<figcaption>
					<p>클릭하시면 학부모님 전용 회원가입창이 열립니다.</p>
					<div class="heading">
						<h2><span>학부모이신가요?</span></h2>
					</div>
				</figcaption>
				<a href="resistForm.do?member_role=3"></a>
			</figure>
		</div>
	</div>
</body>
</html>