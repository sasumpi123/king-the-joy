<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>제목</td>
			<td>${notificationDto.notification_title}</td>
		</tr>
		<tr>
			<td>작성일</td>
			<td>${notificationDto.notification_date}</td>
		</tr>
		<tr>
			<td>작성자</td>
			<td>${notificationDto.notification_writer}</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>${notificationDto.notification_content}</td>
		</tr>
		<tr>
			<td colspan="2"><input type="button" value="수정"
				onclick="location.href='notificationUpdate.do?notification_seq=${notificationDto.notification_seq}'"> <input
				type="button" value="삭제"
				onclick="location.href='notificationDelete.do?notification_seq=${notificationDto.notification_seq}'"> <input
				type="button" value="목록으로" onclick="location.href='notification.do'">
			</td>
		</tr>
	</table>
</body>
</html>