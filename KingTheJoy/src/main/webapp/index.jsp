<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value="/resources/css/loading.css"/>" rel="stylesheet">

<script>
function window_onload(){
	setTimeout('go_url()',5000)
}

function go_url(){
	location.href="home.do"
}

</script>
<title>Insert title here</title>
</head>
<body onload="javascript:window_onload()"> 
<div class="stand">
  <div class="ball"></div>
  <div class="ball"></div>
  <div class="ball"></div>
</div>
</body>
</html> 