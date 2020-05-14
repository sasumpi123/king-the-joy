<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.weather{
	position:fixed;
   	top: 460px;
   	right: 20px;
	font-weight: bold;
}

#weatherImg img{
	width: 100px;
	height: 100px;
   	text-align: center;
   	position: relative;
}

#weatherTem{
	top: 562px;
	right: 46px;
}

#weatherTem_maxmin{
	top: 580px;
	right: 40px;
}


#maxTem{
	color: red;
}

#minTem{
	color: blue;
}


</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

	
		
		var apiURI = "http://api.openweathermap.org/data/2.5/weather?q=Seoul,KR&units=metric&appid=863f38ba390c33bf571181a150588bc0";
        $.ajax({
            url: apiURI,
            dataType: "json",
            type: "GET",
            async: "false",
            success: function(resp) {
                console.log(resp);
                console.log("현재온도 : "+ resp.main.temp );
                console.log("최고온도 : "+ resp.main.temp_max);
                console.log("최저온도 :"+resp.main.temp_min);
                console.log("날씨 : "+ resp.weather[0].main );
                console.log("상세날씨설명 : "+ resp.weather[0].description );
                console.log("날씨 이미지 : "+ resp.weather[0].icon );
                console.log("나라   : "+ resp.sys.country );
                console.log("도시이름  : "+ resp.name );      
        		var imgURL = "http://openweathermap.org/img/wn/" + resp.weather[0].icon + ".png";
            	
        		if(resp.weather[0].description == 'clear sky'){
        			$("#weatherImg").append($("<img src='./resources/img/sun.png'/>"));
        		}else if(resp.weather[0].description == 'few clouds'){
        			$("#weatherImg").append($("<img src='./resources/img/sunCloud.png'/>"));
        		}else if(resp.weather[0].description == 'scattered clouds'){
        			$("#weatherImg").append($("<img src='./resources/img/cloud.png'/>"));
        		}else if(resp.weather[0].description == 'broken clouds'){
        			$("#weatherImg").append($("<img src='./resources/img/cloud.png'/>"));
        		}else if(resp.weather[0].description == 'shower rain'){
        			$("#weatherImg").append($("<img src='./resources/img/rain.png'/>"));
        		}else if(resp.weather[0].description == 'rain'){
        			$("#weatherImg").append($("<img src='./resources/img/rain.png'/>"));
        		}else if(resp.weather[0].description == 'thunderstorm'){
        			$("#weatherImg").append($("<img src='./resources/img/thunderCloud.png'/>"));
        		}else if(resp.weather[0].description == 'snow'){
        			$("#weatherImg").append($("<img src='./resources/img/snow.png'/>"));
        		}else if(resp.weather[0].description == 'mist'){
        			$("#weatherImg").append($("<img src='./resources/img/windy.png'/>"));
        		}
        		
        		$("#weatherTem").append($("<p id='tem'>"+resp.main.temp+"˚</p>"));
        		$("#weatherTem_maxmin").append($("<span id='maxTem'>"+resp.main.temp_max+"˚</span>/<span id='minTem'> "+resp.main.temp_min+"˚</span>"));
            }
        })
        
        
    
</script>
</head>
<body>

	<div id="weatherImg" class="weather"></div>
	<div id="weatherTem" class="weather"></div>
	<div id="weatherTem_maxmin" class="weather"></div>

</body>
</html>