<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <link rel="stylesheet" href="<c:url value="/resources/css/common.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/parentHeader.css"/>">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
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
    
 
        <a class="logo" href="/member/roleCheck.do">
        	<img src="../resources/img/kinderJoyLogo.png">
       	</a>
       	
     	<div class="MyMenu">
          	<a href="/member/myPage.do" class="mymenu-link">마이페이지</a>
          	<a href="/member/logout.do" class="mymenu-link">로그아웃</a>
        </div>
        
        <ul class="menu_ul">
            <li class="menu_li" >
            	<div class="menu-css" id="not">
                <a class="menu-link" href="/notification/notification.do">공지 사항</a>
            	</div>   
            </li>
          <li class="menu_li">
          	<div class="menu-css" id="cal">
            <a class="menu-link" href="/schedule/parentSchedule.do">행사일정</a>
            </div> 
          </li>
          <li class="menu_li">
          	<div class="menu-css" id="note">
            <a class="menu-link" href="/note/parentNote.do">알림장</a>
            </div> 
          </li>
         <li class="menu_li">
          	<div class="menu-css" id="req">
            <a class="menu-link" href="">요청 사항</a>
            	<ul class="request">
            		<li><a href="/translate/translate.do">번역</a></li>
            		<li><a href="/pill/pillrequest.do">투약 요청서</a></li>
            	</ul>
            </div> 
          </li>
          <li class="menu_li">
          	<div class="menu-css" id="photo">
            	<a class="menu-link" href="/gallery/galleryPage.do?school_seq=${memberDto.school_seq }">포토갤러리</a>
            </div> 
          </li>
          <li class="menu_li">
             <div class="menu-css" id="studybook">
            <a class="menu-link" href="/study/selectStudyBooks.do">수업자료</a>
            </div> 
          </li>	
          
          </ul>
          
      </nav>
      
      
      <div id='background'>
         <img alt="" src="../resources/img/parentMain.jpg">
      </div>
      
      
</body>
</html>
