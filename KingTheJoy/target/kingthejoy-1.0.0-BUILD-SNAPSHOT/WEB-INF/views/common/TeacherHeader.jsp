<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="<c:url value="/resources/css/common.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/header.css"/>">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <nav class="navbar navbar-expand-sm bg-white navbar-white">
        <!-- Brand -->
        <a class="navbar-brand header-logo" href="#"><img src="image/Logo.png"></a>
      
        <!-- Links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="#">공지 사항</a>
            </li>
          <li class="nav-item">
            <a class="nav-link" href="#">원아 위치</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">원아 관리</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">수업 자료</a>
          </li>
          <!-- Dropdown -->
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
              기타
            </a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">요청사항 확인</a>
              <a class="dropdown-item" href="#">갤러리 등록</a>
              <a class="dropdown-item" href="#">쪽지함</a>
            </div>
          </li>
          </ul>
          <div class="ml-auto">
            <button type="button" class="btn btn-info btn-sm">마이페이지</button>
            <button type="button" class="btn btn-info btn-sm">로그아웃</button>
          </div>
      </nav>
</body>
</html>