function execPostCode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            
            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 도로명 조합형 주소 변수
            
            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }

            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
                extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }
            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
            if(fullRoadAddr !== ''){
                fullRoadAddr += extraRoadAddr;
            }
           
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            console.log(data.zonecode);
            console.log(fullRoadAddr);
            

            document.getElementById('school_addr').value = fullRoadAddr;
        }
    }).open();
}
var cnt = 0;
function add(){
	  
	  var children_name = $('#children_name').val();
	  var school_addr = $('#school_addr').val();
	  var school_name = $('#school_name').val();
	  
	  var newLine = '<tr>'+
	        '<td id=\"children_name'+cnt+'\">'+children_name+'</td>'+ 
	        '<td id=\"school_addr'+cnt+'\">'+school_addr+'</td>'+
	        '<td id=\"school_name'+cnt+'\">'+school_name+'</td>'+
	      '</tr>';
	  
	  $('#list').append(newLine);
	  
	  $('#formModal').modal('hide');
	  cnt += 1;
	}

$(function(){
	$("#submit").click(function(){
		
		var dataArrayToSend1 = new Array();
		var cntData = 0;
		var dataArrayToSend = "";
		var len = $('#tableTest tbody tr').length;
		for(var i = 0 ; i < len ; i++){
			
			
//			dataArrayToSend = "[{\"children_name\":" + "\"" + $("#children_name"+cntData).text()+"\"," +
//								"\"school_addr\":" + "\"" + $("#school_addr"+cntData).text()+ "\","+
//								"\"school_name\":" + "\"" + $("#school_name"+cntData).text()+ "\"}]"
			
			dataArrayToSend +=  $("#children_name"+cntData).text()+"/"+
								 $("#school_addr"+cntData).text()+"/"+
								 $("#school_name"+cntData).text()+",";					
			
//			dataArrayToSend.set("children_name",$("#children_name"+cntData).text());
//			dataArrayToSend.set("school_addr",$("#school_addr"+cntData).text());
//			dataArrayToSend.set("school_name",$("#school_name"+cntData).text());
			
			cntData += 1;
			
			
		}
		
		console.log(dataArrayToSend);
		
		$.ajax({
			type:"POST",
			data: "data="+ dataArrayToSend,
			url:"tableDataSend.do",
			success:function(data) {
				console.log('done');
				},
				error:function(jqXHR, textStatus, errorThrown) {
					console.log('fail');
				}
		}); 
	});
});
