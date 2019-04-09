<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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

$("#headers").load("../header.jsp");  // 원하는 파일 경로를 삽입하면 된다
$("#footer").load("../footer.html");  // 원하는 파일 경로를 삽입하면 된다
}); 




</script>

<body>
    <div id="headers"></div>
    </div>

    <div class="body">
        <div class="container">
            <div class="subtitle">
                <h1>${board.name}</h1>               
            </div>
            <div class="subMenu">
                    <li><a href="/jeju/view/restraunt/restraunt_detail1.do" >상세보기</a></li>
                    <li><a href="/jeju/view/restraunt/restraunt_detail2.do" >이용안내</a></li>
                    <li><a href="/jeju/view/restraunt/restraunt_detail3.do" >지도</a></li>
                    <li><a href="/jeju/view/restraunt/restraunt_detail4.do" >리뷰</a></li>
                </ul>
            </div>
            <div class="like">
                <div>좋아요</div>
                <div>리뷰</div>
                <div>조회</div>
                <div>${board.likeCnt }</div>
                <div>리뷰수를 카운트해주세요</div>
                <div>${board.viewCnt }</div>
            </div>
            <div class="photo">
           <c:forEach var="file" items="${files}">
                <div><img src="${file.path}"></div>
    	   </c:forEach>	
            <!-- 
                <div><img src="/jeju/resources/images/restraunt/1.jpg"></div>
                <div><img src="/jeju/resources/images/restraunt/2.jpg"></div>
                <div><img src="/jeju/resources/images/restraunt/3.jpg"></div>
                <div><img src="/jeju/resources/images/restraunt/4.jpg"></div> -->
            </div>
            <div class="ex">
                <p>${board.intro}</p>
                   <div>
                    <button onclick="location.href='food_update.html'">글수정</button><button >글삭제</button>
                   </div>
            </div>
        </div>
    </div>

    <div id="footer"></div>
</body>
</html>