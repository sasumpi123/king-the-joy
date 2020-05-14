$(document).ready(function(){
	$("#btnLogin").click(function(){
		var member_id = $("#member_id").val();
		var member_pw = $("#member_pw").val();
		if(member_id == ""){
			alert('아이디를 입력하세요')
			$("#member_id").focus();
			return;
		}
		if(member_pw == ""){
			alert('비밀번호를 입력하세요');
			$("#member_pw").focus();
			return;
		}
		
		document.loginForm.action='loginCheck.do'
		document.loginForm.submit();
	})
})