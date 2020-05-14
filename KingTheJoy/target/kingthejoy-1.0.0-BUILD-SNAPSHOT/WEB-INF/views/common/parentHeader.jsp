<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="<c:url value="/resources/css/common.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/parentHeader.css"/>">
<style type="text/css">


/* 배경 이미지 사이즈 */
#background img{
   z-index : -1;
   bottom: 0px;
   left: 0px;
   top : 491px;
   opacity : 0.7;
   height:559px;
   width: 777px;
   position: absolute;
}


</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<body>
    <nav>
    
 
        <a class="logo" href="#">
        	<img src="./resources/img/kinderJoyLogo.png">
       	</a>
       	
     	<div class="MyMenu">
          	<a href="#" class="mymenu-link">마이페이지</a>
          	<a href="logout.do" class="mymenu-link">로그아웃</a>
        </div>
        
        <ul class="menu_ul">
            <li class="menu_li" >
            	<div class="menu-css" id="not">
                <a class="menu-link" href="notification.do">공지 사항</a>
            	</div>   
            </li>
          <li class="menu_li">
          	<div class="menu-css" id="cal">
            <a class="menu-link" href="#">행사일정</a>
            </div> 
          </li>
          <li class="menu_li">
          	<div class="menu-css" id="note">
            <a class="menu-link" href="#">알림장</a>
            </div> 
          </li>
          <li class="menu_li">
          	<div class="menu-css" id="req">
            <a class="menu-link" href="#">요청 사항</a>
            </div> 
          </li>
          <li class="menu_li">
          	<div class="menu-css" id="photo">
            <a class="menu-link" href="#">포토갤러리</a>
            </div> 
          </li>
          </ul>
          
      </nav>
      
      
      <div id='background'>
         <img alt="" src="./resources/img/parentMain.jpg">
      </div>
      
      
</body>
</html>