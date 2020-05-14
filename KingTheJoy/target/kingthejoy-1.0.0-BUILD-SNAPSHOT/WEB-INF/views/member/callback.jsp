<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- START :: JAVASCRIPT -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.js"></script>
<!-- END :: JAVASCRIPT -->

</head>
<body>

<script type="text/javascript">

	var naver_id_login = new naver_id_login("p7QY0Ax0ddhNfYat1Ulv", "http://localhost:8181/kingthejoy/naverLoginResult.do");
	
	 alert(naver_id_login.oauthParams.access_token);
	 
	// 네이버 사용자 프로필 조회
	naver_id_login.get_naver_userprofile("naverSignInCallback()");
	
	// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
	function naverSignInCallback() {
		
		var name = naver_id_login.getProfileData('name');
		var email = naver_id_login.getProfileData('email');
		
		$.ajax({
			type : "POST",
			url : "naverLoginSuccess.do",
			data : {
				naver_name : name,
				naver_email : email
			},
			success : function() {
				alert("네이버 로그인 성공");
				close();
				window.opener.location.href="snsLoginUpdatePage.do";
			},
			error : function() {
				alert("네이버 로그인 실패");
			}
		})
	}
</script>

</body>
</html>