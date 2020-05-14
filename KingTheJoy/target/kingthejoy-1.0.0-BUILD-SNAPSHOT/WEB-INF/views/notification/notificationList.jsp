<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<thead>
			<tr>
				<td>제목</td>
				<td>작성</td>
				<td>작성자</td>
			</tr>
		</thead>
		<tbody>
			<c:choose>
			<c:when test="${empty notificationList }">
				<tr>
					<td colspan="3" align="center">----- 작성된 공지사항이 없습니다 -----</td>
				</tr>
				<tr>	
						<td colspan="3"><input type="button" value="글쓰기" onclick="location.href='notificationInsert.do'"></td>
					</tr>
			</c:when>
			<c:otherwise>
					<c:forEach items="${notificationList}" var="dto">
					<tr>
						<td><strong><a href="notificationDetail.do?notification_seq=${dto.notification_seq}">${dto.notification_title}</a></strong></td>
						<td>${dto.notification_writer}</td>
						<td>${dto.notification_date}</td>
					</tr>	
					</c:forEach>
					<tr>	
						<td colspan="3"><input type="button" value="글쓰기" onclick="location.href='notificationInsert.do'"></td>
					</tr>
			</c:otherwise>
		</c:choose>
		</tbody>
		
	</table>

</body>
</html>