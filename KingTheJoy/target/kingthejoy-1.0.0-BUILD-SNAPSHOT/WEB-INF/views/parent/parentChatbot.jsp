<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
/* 챗봇 이미지 사이즈 */
#chatBot img {
   width: 130px;
   height: 130px;
   position: fixed;
   top: 620px;
   right: 10px;
}

/* 챗봇 답변 div */
.pNa {
   text-align: center;
   width: 300px;
   height: 100px;
   display: none;
   position: fixed;
   top: 600px;
   right: 130px;
   z-index: 3;
}

/* 챗봇 답변 div boder */
.boder {
	border-radius: 50px 50px 50px 50px;
}
</style>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	//챗봇 눌렀을 때 회원,비회원 선택시 출력
	$(function() {
		$('#chatBot').click(function() {
			if ($('.pNa').css('display') == "none") {
				$('.pNa').css('top', '600px');
				$('.pNa').hide();
				$('#question01').show('slow');
			} else {
				$('.pNa').hide();
			}
		});
	});

	//회원 비회원 선택 시 선택지들 show
	//-회원
	$(function() {
		$('#pNa01').click(function() {
			$('#question01').hide();
			$('.pNa').css('top', '550px');
			$('#question02').show('slow');
		});
	});

	//-비회원
	$(function() {
		$('#pNa02').click(function() {
			$('#question01').hide();
			$('.pNa').css('top', '550px');
			$('#question03').show('slow');
		});
	});

	//회원 선택지들 클릭 답변
	$(function() {
		$('#pNa03').click(function() {
			$('#question02').hide();
			$('.pNa').css('top', '630px');
			$('#answer02_01').show('slow');
		});
	});

	$(function() {
		$('#pNa04').click(function() {
			$('#question02').hide();
			$('.pNa').css('top', '630px');
			$('#answer02_02').show('slow');
		});
	});

	$(function() {
		$('#pNa05').click(function() {
			$('#question02').hide();
			$('.pNa').css('top', '630px');
			$('#answer02_03').show('slow');
		});
	});

	$(function() {
		$('#pNa06').click(function() {
			$('#question02').hide();
			$('.pNa').css('top', '630px');
			$('#answer02_04').show('slow');
		});
	});

	//비회원 선택지들 클릭 답변

	$(function() {
		$('#pNa07').click(function() {
			$('#question03').hide();
			$('.pNa').css('top', '630px');
			$('#answer03_01').show('slow');
		});
	});

	$(function() {
		$('#pNa08').click(function() {
			$('#question03').hide();
			$('.pNa').css('top', '630px');
			$('#answer03_02').show('slow');
		});
	});

	$(function() {
		$('#pNa09').click(function() {
			$('#question03').hide();
			$('.pNa').css('top', '630px');
			$('#answer03_03').show('slow');
		});
	});

	$(function() {
		$('#pNa10').click(function() {
			$('#question03').hide();
			$('.pNa').css('top', '630px');
			$('#answer03_04').show('slow');
		});
	});
</script>
</head>
<body>
   <!-- 챗봇 -->
   <div id="chatBot">
      <img src="./resources/img/chatIcon.png">
   </div>
   <div id="question01" class="pNa">
      <p id="pNa01" class="boder" style="background-color: #f5c2c2">도움이 필요하세요?</p>
   </div>
   <div id="question02" class="pNa">
      <p id="pNa03" class="boder" style="background-color: #f5f189">1번
         선택지</p>
      <p id="pNa04" class="boder" style="background-color: #a8f58c">2번
         선택지</p>
      <p id="pNa05" class="boder" style="background-color: #f57373">3번
         선택지</p>
      <p id="pNa06" class="boder" style="background-color: #539ff5">4번
         선택지</p>
   </div>
   <div id="question03" class="pNa">
      <p id="pNa07" class="boder" style="background-color: #f5f189">1번
         선택지</p>
      <p id="pNa08" class="boder" style="background-color: #a8f58c">2번
         선택지</p>
      <p id="pNa09" class="boder" style="background-color: #f57373">3번
         선택지</p>
      <p id="pNa10" class="boder" style="background-color: #539ff5">4번
         선택지</p>
   </div>

   <div id="answer02_01" class="pNa">
      <p id="ans01" class="boder" style="background-color: #d8f5f5">회원의
         1번 선택지 답변입니다.</p>
   </div>
   <div id="answer02_02" class="pNa">
      <p id="ans02" class="boder" style="background-color: #d8f5f5">회원의
         2번 선택지 답변입니다.</p>
   </div>
   <div id="answer02_03" class="pNa">
      <p id="ans03" class="boder" style="background-color: #d8f5f5">회원의
         3번 선택지 답변입니다.</p>
   </div>
   <div id="answer02_04" class="pNa">
      <p id="ans04" class="boder" style="background-color: #d8f5f5">회원의
         4번 선택지 답변입니다.</p>
   </div>

   <div id="answer03_01" class="pNa">
      <p id="ans05" class="boder" style="background-color: #d8f5f5">비회원의
         1번 선택지 답변입니다.</p>
   </div>
   <div id="answer03_02" class="pNa">
      <p id="ans06" class="boder" style="background-color: #d8f5f5">비회원의
         2번 선택지 답변입니다.</p>
   </div>
   <div id="answer03_03" class="pNa">
      <p id="ans07" class="boder" style="background-color: #d8f5f5">비회원의
         3번 선택지 답변입니다.</p>
   </div>
   <div id="answer03_04" class="pNa">
      <p id="ans08" class="boder" style="background-color: #d8f5f5">비회원의
         4번 선택지 답변입니다.</p>
   </div>

</body>
</html>