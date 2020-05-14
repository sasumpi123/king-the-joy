<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/common.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/css/memberUpdate.css"/>">
<script src="<c:url value="/resources/js/schoolInfoUpdate.js"/>"></script>

<title>회원가입창</title>
</head>
<body>
	<div class="home-img">
		<img src="<c:url value="/resources/img/home.png"/>" alt="homeLogo">
	</div>
	<!-- <form action="tableDataSend.do" method="post" role="form" id="submit"> -->
		<input type="hidden" name="member_role" value="${member_role }">
		<form action="schoolInfo.do" method="post" id="insert">
		<div class="home-div col-8 row">
			<div class="image-center col-12">
				<img src="<c:url value="/resources/img/Logo.png"/>"
					class="img-responsive center-block">
			</div>

			<div class="container">
				<button type="button" class="btn btn-primary" aria-label="Add"
					data-toggle="modal" data-target="#formModal">
					<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
					유치원 찾기
				</button>
				<hr />
					<table class="table" id="tableTest">
					<thead>
						<tr>
							<td>유치원 주소</td>
							<td>유치원 이름 </td>
						</tr>
					</thead>
					<tbody id="list">
					</tbody>
				</table>
			</div>
			<div><button type="submit" id="submit" class="btn btn-success">등록하기</button></div> 
		</div>
		</form>
		
	<!-- </form>  -->

	<!-- Modal -->
	<div class="modal fade" id="formModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Add item</h4> 
				</div>
				<div class="modal-body">
					<div class="form-group">
						<button type="button" class="btn btn-default"
							onclick="execPostCode();">
							<i class="fa fa-search"></i>유치원 찾기
						</button>
						<input class="form-control" style="top: 5px;" placeholder="주소"
							name="school_addr" id="school_addr" type="text"
							readonly="readonly" /> <input class="form-control"
							placeholder="유치원 이름을 기입해주세요" name="school_name" id="school_name"
							type="text" />
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button class="btn btn-success" onClick="add()">
						<i class="glyphicon glyphicon-plus"></i> 추가
					</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>