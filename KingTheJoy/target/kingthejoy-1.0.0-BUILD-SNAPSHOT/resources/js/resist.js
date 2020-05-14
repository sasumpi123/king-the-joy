// 공백 체크 정규식
var empJ = /\s/g;
// 아이디 정규식
var idJ = /^[a-z0-9][a-z0-9_\-]{4,19}$/;
// 비밀번호 정규식
var pwJ = /^[A-Za-z0-9]{4,12}$/;
// 이름 정규식
var nameJ = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
// 이메일 검사 정규식
var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
// 휴대폰 번호 정규식
var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
/^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/

var addrss = $('#member_detailaddraddress');

$(document).ready(function(){
    var address = $('#member_detailaddraddress');

    // 아이디 중복확인
    $('#member_id').blur(function(){
        if($('#member_id').val()==''){
            $('#id_check').text('아이디를 입력하세요');
            $('#id_check').css('color','red');
        }else if(idJ.text($('#member_id').val()) != true){
            $('#id_check').text('4~12자의 영문, 숫자만 사용 가능합니다.');
            $('#id_check').css('color','red');
        }else if($('#member_id').val()!=''){

            var member_id = $('#member_id').val();
            
            $.ajax({
                async : true,
                type : 'POST',
                data : member_id,
                url : 'idcheck.do',
                dataType: 'json', 
                contentType: "application/json; charset=UTF-8",
                success : function(data){
                    
                    if(data.cnt > 0) {
                        $('#id_check').text('중복된 아이디 입니다.');
                        $('#id_check').css('color','red');
                        $('#usercheck').attr("disabled", true);
                    }else{
                        if(idJ.test(member_id)){
                            $('#id_check').text('사용가능한 아이디 입니다.');
                            $('#id_check').css('color','blue');
                            $('#usercheck').attr("disabled", false);
                        }
                        else if(member_id==''){
                            $('#id_check').text('아이디를 입력해주세요.');
                            $('#id_check').css('color','red');
                            $('#usercheck').attr("disabled", true);
                        }else{
                            $('#id_check').text('아이디는 소문자와 숫자 4~12자리만 가능합니다.');
                            $('#id_check').css('color', 'red');
                            $('#usercheck').attr('disabled', true);
                        }
                    }
                }
            });
        }
    });
     
    $('form').on('submit',function(){
        var inval_Arr = new Array(6).fill(false);
        if(idJ.test($('#member_id').val())) {
            inval_Arr[0] = true;
        }else{
            inval_Arr[0] = false;
            alert('아이디를 확인하세요.');
            return false;
        }

        if(($('#member_pw').val() == ($('#member_pw2').val()))
            && pwJ.test($('#member_pw').val())) {
                inval_Arr[1] = true;
            }else{
                inval_Arr[1] = false;
                alert('비밀번호를 확인하세요');
                return false;
            }
        
        if(nameJ.test($('#member_name').val())){
            inval_Arr[2] = true;
        }else{
            inval_Arr[2] = false;
            alert('이름을 확인하세요');
            return false;
        }

        if(mailJ.test($('#member_email').val())){
            console.log(mailJ.test($('#member_email').val()));
            inval_Arr[3] = true;
        }else{
            inval_Arr[3] = false;
            alert('이메일을 확인하세요');
            return false;
        }

        if (phoneJ.test($('#member_phone').val())){
            console.log(phoneJ.test($('#member_phone').val()));
            inval_Arr[4] = true;
        }else{
            inval_Arr[4] = false;
            alert('휴대폰 번호를 입력하세요');
            return false;
        }

        if(address.val() == ''){
            inval_Arr[5] = false;
            alert('주소를 확인하세요');
            return false;
        }else{
        inval_Arr[5] = true;
        }

        var validAll = true;
        for(var i = 0; i < inval_Arr.length; i++){
            if(inval_Arr[i] == false){
                validAll = false;
            }
        }

        if(validAll == false){
        	alert('정보를 다시 확인하세요');
        }
    });

    $('#member_id').blur(function(){
        if(idJ.test($('#member_id').val())){
            console.log('true');
            $('#id_check').text('');
        }else{
            console.log('false');
            $('#id_check').text('5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.');
            $('#id_check').css('color', 'red');
        }
    });

    $('#member_pw').blur(function(){
        if(pwJ.test($('#member_pw').val())){
            console.log('true');
            $('#pw_check').text('');
        }else{
            console.log('false');
            $('#pw_check').text('4~12자의 숫자, 문자로만 사용 가능합니다.');
            $('#pw_check').css('color', 'red');
        }
    });

    $('#member_pw2').blur(function(){
        if($('#member_pw').val() != $(this).val()){
            $('#pw2_check').text('비밀번호가 일치하지 않습니다.');
            $('#pw2_check').css('color','red');
        }else{
            $('#pw2_check').text('');
        }
    });
            
    $('#member_name').blur(function(){ 
        if(nameJ.test($(this).val())){
            console.log(nanmeJ.test($(this).val()));
            $('#name_check').text('');
        }else{
            $('#name_check').text('한글 2~4자 이내로 입력하세요. (특수기호, 공백 사용 불가)');
            $('#name_check').css('color','red');
        }
    });

    $('#member_email').blur(function(){
        if(mailJ.test($(this).val())){
            $('#email_check').text('');
        }else{
            $('#email_check').text('이메일 양식을 확인해주세요.');
            $('#email_check').css('color', 'red');
        }
    });

    $('#member_phone').blur(function(){
        if(phoneJ.test($(this).val())){
            console.log(phoneJ.test($(this).val()));
            $('#phone_check').text('');
        }else{
            $('#phone_check').text('휴대폰번호를 확인해주세요');
            $('#phone_check').css('color', 'red');
        }
    });
});

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

            $("[name=member_oaddr]").val(data.zonecode);
            $("[name=member_addr]").val(fullRoadAddr);
            document.getElementById('member_oaddr').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('member_addr').value = fullRoadAddr;
        }
    }).open();
}