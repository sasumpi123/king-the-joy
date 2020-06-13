# 프로젝트 명
  King The Joy

# 프로젝트 소개
  유치원 혹은 어린이집은 유아들의 생에 첫 사회생활을 할 수 있는 공간으로써 학부모들은 아이가 자라는 모습을 함께하고 싶어한다. 하지만 부모는 퇴근 후 아이의 종이 알림장을 확인하기 전까지는 아이의 일상을 알 수 없기에 이를 디지털화하여 부모가 시간과 장소의 제한없이 온라인으로 편리하게 아이의 활동 모습을 관찰하며 부모와 떨어져 있는 시간 동안의 생활을 공유할 수 있도록 서비스를 제공하여 불편함을 개선하려 한다. 

# 팀원 별 담당임무
 임성훈(팀장) 
 -  회원 관리 ( 로그인 , 아이디/비밀번호 찾기, `Spring Security`를 이용한 접근 권한 부여 ) 
 - 공지사항 (게시판 `CRUD`) 유치원별 원장 마이페이지에서 공지사항별 읽지않은 부모들에게 열람 요청 메일전송
 - `Elastic Search` 기반 회원 로그관리, `Kibana`를 이용한 로그 데이터 시각화 및 관리 연결
 - `Kakao Map API` 를 사용하여 해당 교육기관에 포함되는 학부모 주소 마커 찍기
 - 관리자 페이지 `Node.js` `Oracle` 연결 후 `react.js` 라이브러리로 별도 관리 ( `chart.js`를 이용한 회원 통계, `kibana` 관리 )
 - 슬라이드 쉐어 ( `Apache poi` 를 이용하여 pptx 파일을 img 파일로 변환 후 이미지 슬라이드로 출력 )


 권다솜(https://github.com/Dasommm)
 - 알림장 문자 발송 (`coolsms`)
 - 단체 이메일 보내기 (`Spring Mail`)
 - 식단표 (`Full Calendar`)
 - 행사일정 (`Full Calendar`)

 박선우(https://github.com/dbspgnl)
 - 원장/선생님 메인 페이지 제작 
 - 갤러리 (`HAMMER.js`, `MUURI`, `Apache Commons`, `Web Animation`(사진 업로드), 유효성 검사, 정렬, 드래그)
 - 쪽지
 - 선생님 관리 

 이채안(https://github.com/lcha7777)
 - 다문화 가정을 위한 번역 서비스 page(번역 API)
 - 선생님이 유치원에 등원중인 아이들을 반별로 볼 수 있는 원아관리 page
 - 투약 의뢰서 page

 정은주(https://github.com/EunJooJung)
 - 학부모 메인페이지 
 - 날씨 (`openWeather`)
 - 챗봇 
 - 채팅 (`Spring Websocket`)
 - 결제 (`I'mport`)
  
 한제협(https://github.com/fkdkdk1)
 - 회원 관리 ( 로그인 , 아이디/비밀번호 찾기, SNS 로그인, 예외 처리, 마이페이지, JS 이용한 유효성검사( 정규식 ), 스프링 시큐리티를 이용한 접근 권한 부여 )
 - 슬라이드 쉐어 ( `Apache poi` 를 이용하여 pptx 파일을 img 파일로 변환 후 이미지 슬라이드로 출력 )
 - `Elastic Search` 기반 회원 로그관리, `kibana`를 이용한 로그 데이터 시각화 및 관리 연결
 - `Kakao Map API` 를 사용하여 해당 교육기관에 포함되는 학부모 주소 마커 찍기
 - 관리자 페이지는 `Node.js` `Oracle` 연결 후 `react.js` 라이브러리로 별도 관리 ( `chart.js`를 이용한 회원 통계, `kibana` 관리 )




