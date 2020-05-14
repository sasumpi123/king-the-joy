<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="notificationUpdateRes.do" method="post">
		<input type="hidden" name="notification_seq" value="${notificationDto.notification_seq}">
		<table border="1">
		<tr>
			<td>제목</td>
			<td><input type="text" name="notification_title" value="${notificationDto.notification_title}"></td> 
		</tr>
		<tr>
			<td>내용</td>
			<td><input type="text" name="notification_content" value="${notificationDto.notification_content}"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="수정하기">
				<input type="button" value="돌아가기" onclick="location.href='notificationDetail.do?notification_seq=${notificationDto.notification_seq}'">
			</td>
		</tr>
	</table>
	</form>
</body>
</html>