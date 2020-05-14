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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet">
<script src="<c:url value="/resources/js/login.js"/>"></script>
<title>Insert title here</title>
</head>
<body> 
	<form name="loginForm" method="post">
	<div class="row"> 	
		<div class="home-img"><img src="${pageContext.request.contextPath}/resources/img/home.png" alt="homeLogo"></div>
		<div class="home-div col-4">
			<div class="kingthejoyLogo"><img src="${pageContext.request.contextPath}/resources/img/Logo.png" class="img-responsive center-block"></div>
			<div class="col-12 id-textbox">
				아이디 
				<input type="text" name="member_id" id="member_id" placeholder="아이디를 입력해주세요">
			</div>
			
			<div class="col-12 text pass-textbox">
				비밀번호
				<input type="password" name="member_pw" id="member_pw" placeholder="비밀번호를 입력해주세요">
			</div>
			
			<div class="login-button col-12">
				<button type="button" id="btnLogin" class="btn btn-info btn-md">로그인</button>
				<button type="button" class="btn btn-info btn-md reset-button" onclick="location='selectResistForm.do'">회원가입</button>
			</div>
			<c:if test="${msg == 'failure'}">
				<div style="color:red" align="center">
					아이디 또는 비밀번호가 일치하지 않습니다.
				</div>
			</c:if>
				<div class="col-12" class="marginTop"><a id="naver_id_login"></a></div>	
				<div class="col-12" class="marginTop"><a id="kakao-login-btn"></a></div>
				<a href="http://developers.kakao.com/logout"></a>
			
			<div class="col-12">
				<button type="button" class="btn btn-info btn-md search-button">아이디/비밀번호 찾기</button>
			</div> 
			<a href="s.do">school</a>
		</div>
	</div>
	</form>
	
	<script>
    // 사용할 앱의 JavaScript 키 설정
    Kakao.init('e279f4719a19c18fde6278302eaeb6d8');
    
    // 카카오 로그인 버튼을 생성합니다.
    Kakao.Auth.createLoginButton({
      container: '#kakao-login-btn',
      success : function(authObj) {
    	  Kakao.API.request({
	    	  url:'/v2/user/me', 
	    	  // res = Kakao에서 유저정보를 Json 형태로 응답 
	    	  success:function(res){
	    		  $.ajax({
	    			  type : "POST",
	    		  	  url : "kakaoLogin.do",
	    		  	  data : {
	    		  		  //kakao에서 응답한 Json 값의 정보중 nickname을 가져옴
	    		  		  kakao_nickname : res.properties.nickname,
	    		  		  kakao_email : res.kakao_account.email
	    		  	  },
	    		  	  success : function(){
	    		  		  alert('카카오 로그인 성공');
	    					window.location.href="snsLoginUpdatePage.do";
	    		  	  },
	    		  	  error : function(){
	    		  		  alert('에러');
	    		  	  }
	    		  }) 
	    	  }
    	  });
      }
    });
    
    
    // naver api 클라이언트 key 및 콜백 key 등록
    // 콜백키는 localhost가 포함되어있는 경로로 입력
	var naver_id_login = new naver_id_login("p7QY0Ax0ddhNfYat1Ulv",
	"http://localhost:8181/kingthejoy/naverLoginResult.do");
	
	var state = naver_id_login.getUniqState();
	
	console.log(state);
	
	
    naver_id_login.setButton("green", 3, 60);
    naver_id_login.setDomain("http://localhost:8181/kingthejoy/home.do");
    naver_id_login.setState(state);
    naver_id_login.setPopup();
    naver_id_login.init_naver_id_login();
	
	</script>

</body>
</html> 