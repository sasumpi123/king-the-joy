<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

<h1>팝업!!!</h1>

<form action="menuInsertDb.do?" method="post">
<table border="1">
	<tr>
		<th>날짜</th>
		<td><input type="date" name="start"></td>
	</tr>
	<tr>
		<th>구분</th>
		<td>
			<select name="title">
				<option value="아침">아침</option>
				<option value="간식">간식</option>				
				<option value="점심">점심</option>
			</select>
		</td>
	</tr>
	<tr>
		<th>식단</th>
		<td>
			<textarea name="description" rows="10" cols="30"></textarea>
		</td>
	</tr>
</table>
<input type="submit" value="등록">
<input type="button" value="닫기" onclick="window.close()">
</form>


</body>
</html>