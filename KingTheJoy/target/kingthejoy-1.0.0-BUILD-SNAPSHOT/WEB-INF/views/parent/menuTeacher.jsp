<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />

<link href='resources/fullcalendar/core/main.css' rel='stylesheet' />
<link href='resources/fullcalendar/daygrid/main.css' rel='stylesheet' />

<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src='resources/fullcalendar/core/main.js'></script>
<script src='resources/fullcalendar/daygrid/main.js'></script>
<script src='resources/fullcalendar/interaction/main.js'></script>

<script src="https://unpkg.com/popper.js/dist/umd/popper.min.js"></script>
<script src="https://unpkg.com/tooltip.js/dist/umd/tooltip.min.js"></script>

 <script>


		document.addEventListener('DOMContentLoaded', function () {
			console.log("캘린더!!!!!!");
	      var calendarEl = document.getElementById('calendar');
	
	      var calendar = new FullCalendar.Calendar(calendarEl, {
	          plugins: ['dayGrid', 'interaction'],
	          defaultView: 'dayGridMonth',
	          height : 800,
	          locale : 'ko',
	          displayEventTime : false,
	          dateClick : function(){
	        	  window.open("/kingthejoy/menuInsertForm.do?","menuInsert","width=400, height=415, left=100, top=50");
	          },
	          eventRender : function(info){
	        	  console.log(info.el);
	        	  console.log(info.event.extendedProps.description);
	        	  var tooltip = new Tooltip(info.el, {
	        		  title : info.event.extendedProps.description,
	        		  placement : 'top',
	        		  trigger : 'hover',
	        		  container : 'body'	        	  
	        	  });
	        	  
	          },
	          eventSources : [
	        	  {
	        		  url : '/kingthejoy/menuList.do',
	        		  type : 'POST',
	        		  error : function(){
	        			  alert('menu load failure');
	        		  },
	        		  color : 'yellow'
	        	  }

	          ]
	          	          
	      });
	      calendar.render();
	  });
		
</script>
<style type="text/css">

/* 배경 이미지 사이즈 */
#background img{
	z-index : -1;
	bottom: 0px;
	left: 0px;
	position : absolute;
	top : 430px;
}
/* 캘린더 */
/* h1 */
h1{
	text-align: center;
}
</style>
</head>
<body>

<section>

<!-- header -->


<h1>선생님용 식단 페이지</h1>


	<input type="button" value="tooltipTest" onclick="location='tooltip.do?'">

	<div>
	<!-- 식단표 -->
		<div id='calendar' style="width: 800px; margin-left:350px;"></div>
		<div id='background'>
			<img alt="" src="./resources/img/parentMain.jpg">
		</div>
	</div>


</section>
<%@include file="../common/footer.jsp" %>

</body>
</html>