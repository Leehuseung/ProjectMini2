<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
        <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="../../resources/css/main.css" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<head>										
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Homepage</title>
    <style>
 
     /* 맛집 부분 */
     .container{
        width:1200px;
     }
     .subtitle{
         width:100%;
         height:100px;
         line-height:100px;
         text-align:center;
     }
     .subMenu{
        width:100%;
        height : 8%;

     }
     .subMenu > li > a {
         width:100%;
         height:100%;
         cursor:pointer;
         display:inline-block;
     }
     .subMenu > li{
        border: 0px solid black;
        display:inline-block;
        text-align: center;
        font-size:25px;
        width: calc(100% / 4);
        height:60px;
        margin-right: -6px;      
        font-weight: bold;
	    color: black;
        line-height: 60px;
     }
     
     .subMenu  > li:hover {
        background: orange;
        transition-duration: 0.3s;
        -moz-transition-duration: 0.3s;
        -webkit-transition-duration: 0.3s;
        color: black;
    }
    .subMenu  > li > a:link{
        text-decoration: none;
    }
    .subMenu  > li > a:visited{
        text-decoration: none;
        color: black;
    }
    .subMenu  > li > a:hover{
        font-weight: bold;
	    color: white;
    }
    .like{
        display:grid;
        grid-template-columns : 1fr 1fr 1fr;
        box-sizing:border-box;
        text-align:center;
        height:80px;
        font-size:20px;
        line-height:40px;
    }
    .like > div{
        height:40px;
        box-sizing:border-box;
        border:1px solid lightgray;
        border-left-style: none;
        border-right-style: none;
        border-top-style:none;
        width:100%;
    }
    .photo{
        box-sizing:border-box;
        display:grid;
        grid-template-columns:1fr 1fr;
        grid-gap: 15px;
        padding-top:15px;
        padding-bottom:15px;
    }
    .photo > div{
        box-sizing:border-box;
        height: 400px;
        width:100%;

    }
    .photo > div >img{ 
        width:100%;
        height:100%;
    }
    .ex{
        padding:15px;
        box-sizing:border-box;
        height:200px;
        font-size:20px;
    }
    .ex div{
        text-align: center;
    }
    .ex button{
        height:30px;
        width:100px;
        font-size:18px;
        border-style:none;
        background-color:orange;
        color:white;margin:10px;
        border-radius:10px;
    }
 
    
   
    </style>


</head>
<!-- include -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script> 
<script type="text/javascript">   
$(document).ready( function() { 

$("#headers").load("../header.html");  // 원하는 파일 경로를 삽입하면 된다
$("#footer").load("../footer.html");  // 원하는 파일 경로를 삽입하면 된다
}); 
</script>

<body>
    
    <div id="headers"></div>
    </div>

    <div class="body">
        <div class="container">
            <div class="subtitle">
                <h1>카페공작소</h1>               
            </div>
            <div class="subMenu">
                    <li><a href="food_detail1.html" >상세보기</a></li>
                    <li><a href="food_detail2.html" >이용안내</a></li>
                    <li><a href="food_detail3.html" >지도</a></li>
                    <li><a href="food_detail4.html" >리뷰</a></li>
                </ul>
            </div>
            <div class="like">
                <div>좋아요</div>
                <div>리뷰</div>
                <div>조회</div>
                <div>60</div>
                <div>55</div>
                <div>1233</div>
            </div>
            <div class="photo">
                <div><img src="pic/food/1.jpg"></div>
                <div><img src="pic/food/2.jpg"></div>
                <div><img src="pic/food/3.jpg"></div>
                <div><img src="pic/food/4.jpg"></div>
            </div>
            <div class="ex">
                <p>구좌읍 세화리에 위치한 차와 다양한 제주관련 소품을 함께 판매하는 카페다. 
                        북적거리는 분위기 보다는 쉬고 싶은 다른 사람들을 존중하는 분위기가 지배적이다.
                        메뉴판 위에도 '조용한 힐링카페를 지향한다'는 캘리그라피 문구가 쓰여 있다.
                        구좌읍 당근으로 만든 수제 케이크와 제주 영귤, 댕유자로 만든 에이드 음료가 있고 따뜻한 차와 커피는 언제든 맛볼 수 있다.              
                        카페 앞 바다에 유명한 포토존이 있어서 반짝이는 에메랄드 바다와 제주 감성의 스냅사진을 찍고 싶다면 들러볼만한 곳이다.</p>
                   <div>
                    <button onclick="location.href='food_update.html'">글수정</button><button >글삭제</button>
                   </div>
                        
            </div>
        </div>
    </div>

    <div id="footer"></div>
</body>
</html>