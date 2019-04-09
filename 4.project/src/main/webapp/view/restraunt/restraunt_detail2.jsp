<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
        <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="main.css" />
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
     .subMenu > li > a {
         width:100%;
         height:100%;
         cursor:pointer;
         display:inline-block;
     }
     .subMenu{
        width:100%;
        height : 8%;
        color:black;

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
    }
    .subMenu  > li > a:link{
        text-decoration: none;
        color: black;
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
        grid-template-columns : 20% 80%;
        box-sizing:border-box;
        text-align:left;
        height:100%;
        border-right-style:none;
        font-size:20px;
        padding-left:50p[]
    }
    .like > div{
     height:70px;
        box-sizing:border-box;
        border:1px solid lightgray;
        border-left-style:none;
        border-right-style:none;
        width:100%;
        line-height:70px;
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
                <div>이용 시간</div>
                <div>${board.businessHours}</div>
                <div>편의시설</div>
                <div>${board.amendity}</div>
            </div>
        </div>
    </div>
    <div id="footer"></div>
</body>
</html>