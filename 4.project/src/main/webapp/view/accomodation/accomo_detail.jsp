<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

        <script src="//code.jquery.com/jquery-1.11.0.min.js"></script> 
        <script type="text/javascript">   
        $(document).ready( function() { 

        $("#headers").load("../header.html");  // 원하는 파일 경로를 삽입하면 된다
        $("#footer").load("../footer.html");  // 원하는 파일 경로를 삽입하면 된다
        }); 
        </script>



<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Homepage</title>
     <link rel="stylesheet" type="text/css" href="../../resources/css/accomodation/accomo_write.css" />
    	<link rel="stylesheet" type="text/css" href="../../resources/css/accomodation/accomo_detail.css"/>
    
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Black+Han+Sans" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    
</head>
<body>

 <div id="headers"></div>
   <div class="edit_delete">
    <div class="edit"><a href="accomo_edit.html">글 수정</a></div>
    <div class="delete"><a href="accomo_main.html">글 삭제</a></div>
   </div>
   
   <div class="info_body">
      <div class="head_pic_info">
          <div class="head_pic">a</div>
          <div class="head_info">
             <div class="box1">오션 스위츠 제주</div>
             <div class="box2">기본정보<br><br>
                                주소:제주 특별자치도 제주시 탑동로 66<br><br>
                                연락처:(+82)064-729-8100<br><br>
                                홈페이지:www.oceansweetjeju.co,kr</div>
             
          </div>
      </div>
      <div class="pic1_pic2">
        <div class= "pic1"></div>
        <div class= "pic2"></div>
      </div>
      <div class="text"><p>
        남원 해안경승지에 위치한 오션 스위츠 제주는 해안절벽과 푸른 바다가 어우러져 영화속 한 장면처럼 멋진 풍경을 연출한다.
        
        레스토랑, 노래방, 카페, 게임존 등 부대시설이 갖춰져 있고 실,내외 수영장 아쿠아나에서 바다를 한눈에 바라보며 물놀이와 수영을 즐길 수 있다.
        
        객실배정은 14시부터 선착순으로 배정되고 주중과 주말의 체크아웃시간이 다르니 유의해야한다.
        ​​​​​​​
        로얄스위트룸을 포함한 5가지, 총 322개의 객실이 있으며 객실에 따라 양실, 한실을 선택할 수 있다. 바다 전망 객실 배정 시에는 추가금액이 있다.
        
        주변관광지로는 큰엉해안경승지, 코코몽 에코파크, 신영영화박물관, 표선해수욕장 등이 있으며 제주국제공항으로부터 승용차로 약 1시간이 소요된다.
       
    </p> </div>
        <div class="pic_info"> 
          <div class="pic_title">
          <div>사진첩</div>
            </div>
            <div class="pic_detail">
                <div class="detail_pic1"></div>
                <div class="detail_pic2"></div>
                <div class="detail_pic3"></div>
                <div class="detail_pic4"></div>
                
            </div>
           
        </div>
   
   
   
   
   <div id="footer"></div>


</div>

</body>
</html>